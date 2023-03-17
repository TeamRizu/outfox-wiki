---
title: SongBPMDisplayModern
weight: 0
---

{{<hint type="important">}}
This is an Alpha V actor class. It is not available in Alpha IV.
{{</hint>}}

A modern version of [SongBPMDisplay](../songbpmdisplay/) that instead of cycling the BPM values from a range, it automatically fetches the BPM from the current player and displays it.

```lua
Def.SongBPMDisplayModern {
	Font = "Common Normal",
	Player = PLAYER_1,
	-- Optional, default value is '%3.0f'
	FormatValue = "%3.0f"
}
```

## Attributes

| Name | Type | Action |
| :--- | :--- | :----- |
Player | PlayerNumber | The player to obtain the current BPM from.
FormatValue | String | A string format to present the current BPM value.

This actor inherits the attributes from [BitmapText](../bitmaptext/#attributes).

## Functions

{{<hint>}}
These functions also work on [BPMDisplay](../bpmdisplay/) and [SongBPMDisplay](../songbpmdisplay/).
{{</hint>}}

### `SetFromGameState`

Obtains the current BPM information from the song or course.
If the song is from an extra stage, it will report it as a random value instead.

### `SetFromSong`
`(Song pSong)`

Sets the BPM to the song's BPM range. This value can be tricked if the chart is using a specified BPM rather than the actual BPM,
or even jumbled if it's tagged as random.

### `SetFromSteps`
`(Steps data)`

Sets the BPM to the steps's BPM range. Useful if the current steps contain different timing data.

### `SetFromCourse`
`(Course pCourse)`

Obtains the BPM range from the course. A couple of rules are applied here:

- The operation will fail if there are no steps available on the course for the current StepsType.
- If there are more entries than the value of `Common::MaxCourseEntriesBeforeShowVarious` (Default: `10`), the course is considered **various**, and instead
will output the text defined on `BPMDisplay::VariousText` (Default: `"000"`).

### `GetText`

Gets the current value that the SongBPMDisplayModern contains.
