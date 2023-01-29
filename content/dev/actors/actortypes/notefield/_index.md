---
title: NoteField
weight: 3
geekdocCollapseSection: true
---
<!---->

Contains the receptors and notes that are seen in gameplay. Normally seen in Player actors.

Def.NoteField through lua allows one to create extra NoteFields that aren't bound to a Player actor.

```lua
local receptposnorm = THEME:GetMetric("Player","ReceptorArrowsYStandard")
local receptposreve = THEME:GetMetric("Player","ReceptorArrowsYReverse")
local yoffset = receptposreve-receptposnorm
local notefieldmid = (receptposnorm + receptposreve)/2
local def_dda = THEME:GetMetric("Player","DrawDistanceAfterTargetsPixels")
local def_ddb  = THEME:GetMetric("Player","DrawDistanceBeforeTargetsPixels")

Def.ActorFrame{
	FOV=45,
	InitCommand= function(self) self:zoom(SCREEN_HEIGHT/480):Center() end,
	Def.NoteField{
		Player= PLAYER_1,
		NoteSkin= "Exact3D",
		DrawDistanceAfterTargetsPixels= def_dda,
		DrawDistanceBeforeTargetsPixels= def_ddb,
		YReverseOffsetPixels= yoffset,
		FieldID= 3,
		InitCommand= function(self)
			self:y(notefieldmid)
		end,
	}
}
```

In the above example, The resulting NoteField is relatively close to what a NoteField in a Player would be like. The NoteSkin chosen is "Exact3D", while the positioning is based off of theme metrics.

Because Player is set to PLAYER_1, it will also grab the Chart that Player 1 selected and read from Player 1's input.

{{<hint danger>}}
Because this NoteField is not drawn by an actual Player actor, Mini won't zoom the NoteField, and perspective modifiers will do nothing. Those will have to be replicated manually. Check [How a Player Manipulates its' NoteField](./NoteField-PlayerManipulation) for more information on how to recreate it.
{{</hint>}}

## Table of Contents

{{<toc-tree>}}

## Attributes

| Name | Type | Action | Default |
| :--- | :--- | :----- | :----- |
NoteSkin | string | The NoteSkin to use for the NoteField. | "default"
DrawDistanceAfterTargetsPixels | float | How far back missed notes draw (in pixels) | -128
DrawDistanceBeforeTargetsPixels | float | How far down the NoteField draws (in pixels) | 480
YReverseOffsetPixels | float | The center-point of the NoteField | 288
Chart | string | Chart to load | "Invalid" (Grab from chosen Player)
Player | int | Player to grab chart and input from | 0 (Player 1)
InitMods | string | Modifiers the NoteField start with. | "" (No modifiers)
FieldID | int | What ID the NoteField uses (Affects Tornado, Invert, Tipsy, Expand & Beat) | 0
AutoPlay | boolean | AutoPlay the given chart. | false
