---
title: Doing Mods with Def.NoteField
weight: 1
---

Usually, a Player controls a NoteField, which includes positioning, zooming, rotation and vanish point manipulation. The game itself would also handle approach rates for modifiers used on a Player.

With Def.NoteField, this is now done manually, since there is no "Player" to handle everything.

## Applying modifiers

Applying modifiers is instant, unlike the approach rate behavior usually seen.

This can be done through multiple ways:

1. Using the ModsFromString function in the NoteField.
	- Allows one to easilly set the modifiers on the NoteField through modstrings.
	- Some modifiers will not be usable through modstrings.

ex:
```lua
Def.NoteField{
	OnCommand= function()
		self:ModsFromString('drunk')
	end,
}
```

2. Grabbing the PlayerOptions of the NoteField
	- For now, `"ModsLevel_Current"` has to be used, since the game will no longer handle approaching from `"ModsLevel_Song"`.
	- Allows for the use of all modifiers a Player can access.
	- Requires knowning how to use the PlayerOptions functions.

ex:
```lua
Def.NoteField{
	OnCommand= function()
		self:GetPlayerOptions('ModsLevel_Current'):Drunk(1)
	end,
}
```

## NoteData

A NoteField starts with the chart the specified player used. However, SetNoteDataFromLua is usable on a Def.NoteField, allowing one to change the chart used. Unlike player, there is no SetNoteData function (for now), so the table format from GetNoteData has to be followed.

## Replicating Mini and Perspective

Because a Player would normally handle these modifiers, they now have to be done manually with a Def.NoteField.

### Mini

The positioning is done through the NoteField automatically, so only the zoom is needed.

doing a zoom of `1-(0.5*mini)` (where `mini` is the floating point value of Mini, 1 == 100%) should suffice.

### Perspective

Perspective modifiers comprise of `skew` and `tilt`. Hallway/Distant affect tilt only.

Reverse also affects perspective, too.

These two attributes affect vanish point, rotationx, zoom and y position. Here's a theoretical example that could fit in an update loop:
```lua
--po is the NoteField's PlayerOptions
--notefield is the Def.NoteField
--notefieldmid comes from the initial NoteField example
--actorframe is what contains the NoteField.

local skew,tilt,reverse = po:Skew(), po:Tilt(), (po:GetReversePercentForColumn(0) > .5) and -1 or 1
local forward = tilt > 0

local vanishx = scale(skew, 0, 1, actorframe:GetX(), SCREEN_CENTER_X)
local rotx = scale(tile, -1, 1, -30, 30)*reverse
local zoom = scale(tilt, 0, forward and 1 or -1, 0, 0.9) -- has to multiply what Mini does if being combined with that
local y_offset = scale(tilt, 0, forward and 1 or -1, 0, forward and -45 or -20)*reverse

actorframe:vanishpointx(vanishx)
notefield:y(notefieldmid+y_offset):zoom(zoom):rotationx(rotx)

```
