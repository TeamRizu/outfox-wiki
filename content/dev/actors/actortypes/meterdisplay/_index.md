---
title: MeterDisplay
weight: 3
geekdocCollapseSection: true
---

The base for [SongMeterDisplay](../songmeterdisplay/), which uses two [Actors](../../actortypes/) to render the progress of a given value.

{{<hint type="important">}}
Unlike [SongMeterDisplay](../songmeterdisplay/), MeterDisplay doesn't update by itself. In order to perform updates, you have to
manually set a new width and position value for **Stream** and **Tip**.
{{</hint>}}

```lua
Def.MeterDisplay{
	-- The width the MeterDisplay. Can be adjusted later with SetStreamWidth.
	StreamWidth = 100,
	InitCommand=function(self)
		-- This generates a 300 x [the height of your Stream texture] that will define the current progress of whatever song is currently being played.
		-- The actor will automatically update progress for the Tip and the Stream.
		self:SetStreamWidth( 300 )
	end,
	-- Both the Stream and Tip are AutoActors, so they can be any actor type.
	Stream=Def.Sprite{ Texture="MyStreamBar" },
	Tip=Def.Sprite{ Texture="MyTip" }
}
```

## Attributes

| Name | Type | Action |
| :--- | :--- | :----- |
StreamWidth | number | The width the MeterDisplay. Can be adjusted later with [SetStreamWidth](#setstreamwidth).
Stream | [Actor](../../actortypes/) | The actor that will represent the progress of the song.
Tip | [Actor](../../actortypes/) | The actor that will represent the current position of the song.

{{<hint type="important">}}
The **Stream** attribute is required for the SongMeterDisplay to be created. Otherwise it will return an empty [Actor](../actor/).
{{</hint>}}

{{<hint info>}}
Both **Stream** and **Tip** can be any kind of [Actor](../../actortypes/).
{{</hint>}}

## Functions

### SetStreamWidth
`(float Width)`

Adjusts the width of the MeterDisplay to the desired `Width`.