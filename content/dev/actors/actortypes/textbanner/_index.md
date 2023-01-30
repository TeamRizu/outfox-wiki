---
title: TextBanner
weight: 3
---

TextBanner is an automated [ActorFrame](../actorframe/) that processes information from a Song or Course to fill in data to several included [BitmapText](../bitmaptext/) actors.

This is used by the music wheel and the editor song selection screens to show the information of each song in the wheel or about the current song being selected to edit respectively.

{{<hint>}}
The following example uses the SetSong command present in CourseContentsList, which automatically calls SetSong with its own data.
{{</hint>}}
```lua
Def.TextBanner {
	InitCommand=function(self)
		self:Load("TextBannerCourse"):SetFromString("", "", "", "", "", "")
	end,
	SetSongCommand=function(self, params)
		if params.Song then
			self:SetFromSong( params.Song )
		else
			self:SetFromString( "??????????", "??????????", "", "", "", "" )
		end
	end
}
```

{{<toc>}}

## Atributes

There are no special atributes for this actor class. It inherits the atributes from [ActorFrame](../actorframe/).

## Data used on load

When using the [`load`](#load) function, it will requests multiple metrics from the theme.

```ini
[TextBanner] # The name of the group can be different depending on the group that you want.
TitleOnCommand=function
SubtitleOnCommand=function
ArtistOnCommand=function
ArtistPrependString=string
AfterSetCommand=function
```

`Title`, `SubTitle`, and `Artist` [`OnCommands`](../../ActorsLua-CommandList#commands) define how the [BitmapText](../bitmaptext/) actors will be shown.

`ArtistPrependString` is a special metric that appends before the Artist data.
And example, would be `"/"`.
```
If there's no PrependString..

Artist 1
Artist 2

If there is a PrependString of "/"..

/ Artist 1
/ Artist 2

```

`AfterSetCommand` is a function that is called after all data has been processed on the TextBanner.
This can be useful to fix any visual errors that might happen like overflowing text, incorrect sizing, and others.

{{<hint>}}
You may notice on the mayority of themes, this metric contains a value like this:
```ini
AfterSetCommand=%TextBannerAfterSet
```
<!-- TODO: Make an article about how metrics work! -->
This a special case of using a Lua function directly on the metrics. For more information about this, check out [Function loading in metrics]().
{{</hint>}}

## Data used on fetch

TextBanner uses 3 BitmapText actors to determine the following:
- Title
- Subtitle
- Artist

This can either be from a song, or from a course.

## Functions

### `Load`
`(string sMetricsGroup)`

Requests the TextBanner to load up settings present on the `sMetricsGroup` provided on the current theme's `metrics.ini` file. For more information about what metrics are used, check [Data used on load](#data-used-on-load).

### `SetFromSong`
`(song pSong)`

Updates the TextBanner to show information from the `Song` given.

### `SetFromString`
`(string displayTitle, string translitTitle, string displaySubTitle, string translitSubTitle, string displayArtist, string translitArtist)`

Updates the TextBanner to display custom information based on the strings provided.

{{<hint type="important">}}
All parameters must contain some kind of string, otherwise it will error. If there's no information needed on one of the sections, use an empty string instead.
{{</hint>}}