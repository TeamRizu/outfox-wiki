---
title: SongMeterDisplay
weight: 0
geekdocCollapseSection: true
---

An automated [MeterDisplay](../meterdisplay) that shows the current position of the song being played.

```lua
Def.SongMeterDisplay{
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
	-- New to OutFox: Allows the SongMeterDisplay to start from second 0, rather than the restart of the 
	StartFromZero=false,
}
```

## Attributes

| Name | Type | Action |
| :--- | :--- | :----- |
StreamWidth | number | The width the MeterDisplay. Can be adjusted later with [SetStreamWidth](#setstreamwidth).
Stream | [Actor](../../actortypes/) | The actor that will represent the progress of the song.
Tip | [Actor](../../actortypes/) | The actor that will represent the current position of the song.
StartFromZero | bool | New to OutFox: Allows the SongMeterDisplay to start from second 0, rather than the start of the chart.

The **Stream** is the background of the meter, which denotes how far you are in the song, while the **Tip** is the current position.

{{<hint type="important">}}
The **Stream** attribute is required for the SongMeterDisplay to be created. Otherwise it will return an empty [Actor](../actor/).
{{</hint>}}

{{<hint info>}}
Both **Stream** and **Tip** can be any kind of [Actor](../../actortypes/).
{{</hint>}}

## Position Logic

When a song is playing, it will detect both player's positions, and check which one has the longest position to determine as the end, as the song will end once everyone's steps are over. If only player is present, it will automatically grab that player instead.

## Functions

### SetStreamWidth
`(float Width)`

Adjusts the width of the MeterDisplay to the desired `Width`.