---
title: How a Player Manipulates its' NoteField
weight: 1
---

Some modifiers require the Player to perform some adjustments to the NoteField. This page documents what gets affected and how.

(Note that this is useful knowledge if trying to replicate some modifiers on a Def.NoteField by itself or if you need something to follow what a Player does)

Any part that relies in reverse/downscroll only takes effect when the **first column** is more than 50% towards downscroll.

All modifiers mentioned are calculated in **floating point format**, so `150%` would be represented as `1.5`.

Scaling zoom and position based on `SCREEN_HEIGHT/480` is only needed if using a Def.NoteField outside of a scaled ActorFrame.

## Y Position
This is based on metrics and the `tilt` modifier (100% Hallway/Incoming = -1 tilt and 100% Distant/Space = 1 tilt)
Note that the amount tilt adds goes positive when in *reverse*/*downscroll*.

Base amount: `(upscroll receptor position + downscroll receptor position) / 2`

Positive tilt (Distant/Space): `scale(tilt, 0, 1, 0, -45)` or `-45*tilt`

Negative tilt (Hallway/Incoming): `scale(tilt, 0, -1, 0, -20)`or `20*tilt`

Here's how to grab the relevant metrics in lua:
```lua
local receptposup = THEME:GetMetric("Player","ReceptorArrowsYStandard")
local receptposdown = THEME:GetMetric("Player","ReceptorArrowsYReverse")
-- This is your base amount of y position. The amount from tilt adds onto this.
local notefieldy = (receptposup + receptposdown)/2
```

## X Rotation / rotationx
This is based on the `tilt` modifier. (100% Hallway/Incoming = -100% tilt and 100% Distant/Space = 100% tilt)
Note that the amount of rotation gets \*-1 when in *reverse*/*downscroll*.

Base amount: `scale(tilt, -1, 1, 30, -30)` or `-30*tilt`

## Zoom
This is based on the `mini` and `tilt` modifiers. (100% Hallway/Incoming = -100% tilt and 100% Distant/Space = 100% tilt)

Mini: `scale(mini, 0, 1, 1, .5)` or `1 - (0.5*mini)`

Tilt: `scale(tilt, 0, 1, 1, 0.9)` (positive) or `scale(tilt, 0, -1, 1, 0.9)` (negative) or `1 - 0.1*abs(tilt)`

These two are multiplied together. If the z axis shouldn't be scaled, then zoomz becomes `1/(mini zoom * tilt zoom)`, taking care to not divide by zero.

## Vanish Point
This is dependant on metrics, skew and Player position and is added onto by what is given through vanishpointx/vanishpointy. This is applied on the ActorFrame containing the NoteField.

(100% Space/Incoming = 100% skew)

X position: `scale(skew, 0, 1, Player:GetX(), SCREEN_CENTER_X)` +layer's vanish point x

Y position: `Player:GetY()` + `NoteField base y position` + player's vanish point y

The metrics can be grabbed as seen in the Y Position section. Note that the base notefield position *isn't* scaled in this as of now.

## FOV
A NoteField does not have its' own FOV, and instead relies on Player to have an FOV for 3d effects. This is applied on the ActorFrame containing the NoteField.

The default value is `45`.
