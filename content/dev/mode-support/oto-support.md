---
title: OTO Compatibility
weight: 1
geekdocCollapseSection: true
---

Project OutFox is working on a new `OTO` notesloader that supports the ``.osu`` (Osu) chart format, which is the standard format used in conjunction with the ``kb`` and ``taiko`` game types. The following page contains details on the ``.osu`` parsing options that Project OutFox currently supports. This is a living document - it will be updated as time allows and we add the support or features within. 

We are calling it the OTO parser as we chose to follow the _Osu Tatakae Ouendan_ name. 

## OTO Notedata support as of Alpha 4.11.0 - ``IN PROGRESS`` We are working on the parser!

---
## Trivia
---

`.osu` is a format containing information about Osu _beatmaps_, which confusingly contain _`charts`_ for other game modes as well. We use the term _`chart`_ around the **Scrolling Rhythm Game** genre, because we do not use specific co-ordinates like on a _map_. The ``Osu Tatakae Ouendan`` mode uses both x and y _mapping_ for the circles, curves and spinners etc, so this is why a lot of players who play the game call the other modes' `charts` _beatmaps_, because of the original game.

Although ``catch``, ``taiko`` and ``mania`` do not use co-ordinate systems, similar to almost all the other modes in _OutFox_, they inherit the _beatmap_ definition by players of the game.

Throughout this page, we will be using the _`chart`_ term, as we do not support the ``Osu Tatakae Ouendan`` (Mode=0) mode, as we have no way of _mapping_ the circles/hit objects to the screen at this time.

---
## Layout
---

``.osu`` files are constructed using sections which contain content within to describe and give information about the ``map`` or ``chart`` detailed within. Each file will only contain one set of data; it is not like ``SSC`` or ``DTX`` which can contain several charts.

Most ``beatmap`` artists will include different difficulty levels to what they have created, usually with different mode support in some cases. This allows access to different skill levels and more availability to players, as not everyone is highly competitive or have the means to play one specific mode.

---
# Basic Format
---
The ``.osu`` file format describes how notes are arranged and how the game is meant to behave if/when a player takes a specific action. It is usually a simple plain text file with the command lines made up of  ``key:value`` pairs. 

Please note! There are 3 layouts to the pairs, which will be explained further down in the page, so if you are parsing this file, do take note about the spaces around the pairs.

The format consists of 8 different sections which detail specifics about the chart. We will be going through in detail on the most commonly used commands and features of this format on this page. We will not be supporting editing or creating this format; The support in _OutFox_ is parse (read) only.

Section|What it's for|Command / Content type|Supported? 
------------|-------------|-------------|-------------|
 ``[General]`` | Chart general information | `key: value` pairs| Yes, Some
 ``[Editor]`` | Settings saved from the OTO editor | `key: value` pairs| Ignored
 ``[Metadata]`` | Song Information (title/artist etc) | `key:value` pairs| Yes
 ``[Difficulty]`` | OTO difficulty settings | `key:value` pairs| Some. _CircleSize_ / _KeyCount_
 ``[Events]`` | OTO graphical events  | `comma separated values` | Only _Background_
 ``[TimingPoints]`` | Timing and Control Points |`comma separated values` | Yes, Some
 ``[Colours]`` | Settings for the artist to change combo or theme colours | `key : value` pairs| Ignored
 ``[HitObjects]`` | Hit Objects / Note Types and Holds | `comma separated values` | Yes, Some

---
# File Format Layout
---

## ``osu file format vn [1 - 14]``
``Status: ❌ Ignored (Unsupported)``

Usage Example:
```
osu file format v14 
```

This value is at the very beginning of the file, and sets the version of the specification that the file uses. As of November 2021, This is Version 14. 

This variable is unused in _OutFox_.

---
## `[General]` Section
---

An example of the layout of this section is below. There are several items not included on most charts, but we will cover all of the values you may see in a file so to avoid confusion. Like with the other loader support pages, it is better to be complete than omit things. The commands for this section are done as `Command: Value`. Do note the space!

This section covers settings and options for the chart and gameplay screen. As _OutFox_ has a very different setup and internal system, most of the options in this section do not apply. It's here primarily for completeness and to explain what bits do.

```
[General]
AudioFilename: audio.mp3
AudioLeadIn: 0
PreviewTime: 35841
Countdown: 0
SampleSet: Soft
StackLeniency: 0.8
Mode: 3
LetterboxInBreaks: 0
CountdownOffset: 0
SpecialStyle: 0
WidescreenStoryboard: 1
```
---

## ``AudioFilename: filename [string]``
``Status: ✅ Supported``

Usage Example:
```
AudioFilename: song.mp3 
```
This entry in the list tells the game what music file to use for the chart. It will be case sensitive on Linux/Mac so bear this in mind if you have a chart which cannot find it's music file, this will be the issue. 

This variable is equivalent to the `#MUSIC` entry on SM/SSC files.
```
#MUSIC song.mp3
```
---

## ``AudioLeadIn: n [0-212]``
``Status: ❌ Ignored (Unsupported)``

Usage Example:
```
AudioLeadIn: 0
```
This entry in the list tells the game the number of milliseconds of silence to add before the first sample of the music that plays. It is used for effects or to prepare players for the beginning of the chart, however with how _OutFox_ does timing, this would act more as an offset, and our clock system does not work in milliseconds.

At this time we do not plan on supporting this variable.

This variable has no equivalent SM/SSC value.

---

## ``PreviewTime: n [time in ms]``
``Status: ✅ Supported``

Usage Example:
```
PreviewTime: 35841
```
This value tells the game the time in _milliseconds_ to play the preview section of the song in the music wheel. There is no separate option for a preview file in this format, so it uses a time offset based on the music file detailed in the `AudioFilename` entry.

Unlike SM/SSC there is no `#SAMPLELENGTH` in this format that tells the game to loop or reset the point of playback. It will fall back to the default 15 second length when parsing.

To make this variable compatible with OutFox it needs to be divided by 1000 to get the _seconds_ value, as per the `#SAMPLESTART` SM/SSC variable.

```
#SAMPLESTART 35.841
```
---

## ``Countdown: n [0-3]``
``Status: ❌ Ignored (Unsupported)``

Usage Example:
```
Countdown: 0
```
The countdown happens before the beginning of the first hit object or note, allowing the option to 'ready' the player before the song starts. This option allows the chart author to set 4 different speed values. Most modern day charts set this to 0 (disabled).

>* ``0`` = Set the countdown to be disabled, so the chart will begin as soon as everything loads.

>* ``1`` = Set the countdown to be normal, thus adding a 3, 2, 1...GO! option that happens before the music plays. This only happens if there is an offset before the beginning from what the documentation says, so it is not always guaranteed.

>* ``2`` = Sets a half speed countdown; one that is half the speed of `1`.

>* ``3`` = Sets a double speed countdown; one that is double the speed of `1`.

At this time we do not plan on supporting this variable.

This variable has no equivalent SM/SSC value.

---

## ``SampleSet: set [string]``
``Status: ❌ Ignored (Unsupported)``

Usage Example:
```
SampleSet: Normal
```
This variable allows for the chart artist to specify a selection of sound samples to be used when setting a hit object. These sounds play when an object (note) is hit, much like keysounds in `BMS` or `DTX` modes.

The definition seems to imply that there are 3 base types that can be set for the whole song, and one can also change this variable in the `[HitObjects]` and the `[TimingPoints]` sections described further down. 

_OutFox_ will honour specific hitsounds as _keysounds_ in modes that support them, but at this time we do not have a custom sound sample pack for this command. If you wish to have this supported, do let us know for consideration!

>* ``Normal`` = Set the sound sample packs to normal.

>* ``Soft`` = Set the sound sample packs to softer less distracting sounds.

>* ``Drum`` = Set the sound sample packs to drum based sounds.

At this time we do not plan on supporting this variable.

This variable has no equivalent SM/SSC value.

---

## ``StackLeniency: n.n [0.0-1.0]``
``Status: ❌ Ignored (Unsupported)``

Usage Example:
```
StackLeniency: 0.7
```
StackLeniency is used in the `Osu Tatakae Ouendan` mode to 'stack' circles upon one another if they are in the same place (or within a few _osupixels_) as one previously drawn on the screen.

There is some confusion as to what this modifier _actually_ does, and it seems this is a multiplier in `time`, most likely from 0-1 seconds, so the closer to 1.0 the more likely you will have a stack of circles, (which will have a number within to show the number of circles one needs to hit). 

As the stack leniency heads towards 0 there is less chance of the 'multitap' circles forming on the notefield so this I believe is what the variable is for.

_OutFox_ does not support the `Osu Tatakae Ouendan` mode, so this variable is ignored.

_If there is anyone out there with a better/more comprehensive explanation of this variable, I'd love to have it so we can update it here. This is just my rough guess on seeing it in game - Squirrel_

This variable has no equivalent SM/SSC value.

---

## ``Mode: n [0-3]``
``Status: ✅ Supported``

Usage Example:
```
Mode: 1
```
This command sets the game mode the chart (or map) is for.

>* ``0`` = Sets the mode to `circles`, the basic `Osu Tatakae Ouendan` mode. The file is a beatmap with correct co-ordinates. ``Status:❌ Unsupported``

>* ``1`` = Sets the mode to `taiko`, a drum based game. The file is a note chart with adapted variables, drumrolls and denden multihit notes. These charts will be selectable in the _Outfox_ `taiko` gamemode. ``Status:✅ Supported``

>* ``2`` = Sets the mode to `catch`, a vertical item drop game. The file is a item chart with adapted variables. 
``Status:❌ Unsupported``

>* ``3`` = Sets the mode to `mania`, a vertical scrolling note game. The file is a note chart with adapted variables and holds. These charts will be selectable in the _Outfox_ `kb` gamemode. ``Status:✅ Supported``

This variable has no equivalent SM/SSC value.

---

## ``LetterboxInBreaks: n [0/1]``
``Status: ❌ Ignored (Unsupported)``

Usage Example:
```
LetterboxInBreaks: 0
```
This command controls an `[Effect]`, such as a background or a video. Setting this to `1` will add a cinematic 'letterbox' (black bars) within the edges of the screen. 

At this time we do not plan on supporting this variable.

This variable has no equivalent SM/SSC value.

---

## ``UseSkinSprites: n [0/1]``
``Status: ❌ Ignored (Unsupported)``

Usage Example:
```
UseSkinSprites: 0
```
This command controls a `[Storyboard]` setting, which sets whether or not the storyboard script can use the image files for the skin in use. 

_OutFox_ does not plan to implement the [Storyboard] feature as we have a modding system built in already, so this setting is ignored.

This variable has no equivalent SM/SSC value.

---

## ``OverlayPosition: position [string]``
``Status: ❌ Ignored (Unsupported)``

Usage Example:
```
OverlayPosition: NoChange
```
This command affects the readability of hit circles in `Osu Tatakae Ouendan` mode. It allows the chart author to control how the overlays (the circle animations or hit animations) are drawn. This can make the 'numbers' within the circle easier to see, as well as making stacks work slightly better for those with colour issues.

>* ``NoChange`` = Sets the mode to the default.

>* ``Below`` = Sets the mode to draw the effects below the numbers. This makes the value easier to read.

>* ``Above`` = Sets the draw above the numbers. Can affect how easy it is to read, but does look cool.

At this time we do not plan on supporting this variable.

This variable has no equivalent SM/SSC value.

---

## ``SkinPreference: preference [string]``
``Status: ❌ Ignored (Unsupported)``

Usage Example:
```
SkinPreference: Ice
```
This command allows the chart author to select a custom 'skin' (theme) to use when the chart is played. This allows for a new level of immersion if your charts are based on a subject type or theme.

At this time we do not plan on supporting this variable.

This variable has no equivalent SM/SSC value.

---

## ``EpilepsyWarning: n [0/1]``
``Status: ❌ Ignored (Unsupported)``

Usage Example:
```
EpilepsyWarning: 0
```
This command controls an option to show a setting to warn about flashing colours or lights before the song plays. 

This variable has no equivalent SM/SSC value.

---

## ``CountdownOffset: n [0-256]``
``Status: ❌ Ignored (Unsupported)``

Usage Example:
```
CountdownOffset: 28
```
This command sets the time (in beats) that the countdown starts before the first hit object or note.

This variable has no equivalent SM/SSC value.

---

## ``SpecialStyle: n [0/1]``
``Status: ❌ Ignored (Unsupported)``

Usage Example:
```
SpecialStyle: 0
```
This command sets a different key layout named 'N+1' for `mania` mode. This option is not used as apparently this can be set within the options of the actual game. Setting this requires compatible noteskins / skins to be available, and a suitable mode layout or it can render the song unplayable on the client due to missing assets. 

This is not available in _Outfox_ as keys can be assigned as required by the player.

This variable has no equivalent SM/SSC value.

---

## ``WidescreenStoryboard: n [0/1]``
``Status: ❌ Ignored (Unsupported)``

Usage Example:
```
WidescreenStoryboard: 0
```
This option sets the [Storyboard] as available to be viewed as widescreen on systems that support it or not. The default is 4:3 for normal play, due to the `osupixels` 640x480 setup

This variable has no equivalent SM/SSC value.

---
## `[Editor]` Section
---

This section contains entries for the editor of `Osu` so won't be used or processed in _OutFox_.

---
## `[Metadata]` Section
---

This section details the main song metadata used in the `chart` or `beatmap` that is used when caching, being used in the music wheel, saving scores, and online profiles. 

_OutFox_ does not have some of those features yet as they are being built, but almost all of this section is used in some way within our caching, scoring and music wheel system.

The commands for this section are done as `Command:Value`. Do note the lack of spaces!

```
[Metadata]
Title:My Great Song
TitleUnicode:私の素晴らしい歌
Artist:OutFox Sound Team
ArtistUnicode:「OutFox」音楽
Creator:Squirrel
Version:OutFox Easy Mod File 2021
Source:Serenity Volume 2
Tags:japanese j-pop modfile
BeatmapID:0123456789
BeatmapSetID:0987654
```

---

## ``Title:title [string]``
``Status: ✅ Supported``

Usage Example:
```
Title:My Great Song 
```
This entry in the list tells the game what the song title is for this chart in roman form. 

On _OutFox_ this entry is usually the transliterated (translation) of the title, so we will be parsing this as that entry. If there is no `TitleUnicode` entry it will use this as the title.

This variable is equivalent to the `#TITLETRANSLIT` entry on SM/SSC files.
```
#TITLETRANSLIT My Great Song
```
---

## ``TitleUnicode:title [string]``
``Status: ✅ Supported``

Usage Example:
```
TitleUnicode:私の素晴らしい歌
```
This entry in the list tells the game what the song title is for this chart in utf8. 

On _OutFox_ this entry is usually the original title, so we will be parsing this as that entry. 

This variable is equivalent to the `#TITLE` entry on SM/SSC files.
```
#TITLE 私の素晴らしい歌
```
---

## ``Artist:artist [string]``
``Status: ✅ Supported``

Usage Example:
```
Artist:OutFox Sound Team 
```
This entry in the list tells the game what the song artist is for this chart in roman form. 

On _OutFox_ this entry is usually the transliterated (translation) of the artist name, so we will be parsing this as that entry. If there is no `ArtistUnicode` entry it will use this as the artist name.

This variable is equivalent to the `#ARTISTTRANSLIT` entry on SM/SSC files.
```
#ARTISTTRANSLIT OutFox Sound Team
```
---

## ``ArtistUnicode:artist [string]``
``Status: ✅ Supported``

Usage Example:
```
ArtistUnicode:「OutFox」音楽
```
This entry in the list tells the game what the song artist name is for this chart in utf8. 

On _OutFox_ this entry is usually the original artist name, so we will be parsing this as that entry. 

This variable is equivalent to the `#ARTIST` entry on SM/SSC files.
```
#ARTIST 「OutFox」音楽
```
---

## ``Creator:creator [string]``
``Status: ✅ Supported``

Usage Example:
```
Creator:Squirrel
```
This entry in the list tells the game the creator or author of the `beatmap` or `chart`.

On _OutFox_ this entry is referred to as the chart `credit`, and is used as a given entry on the music wheel.

This variable is equivalent to the `#CREDIT` entry on SM/SSC files.
```
#CREDIT Squirrel
```
---

## ``Version:version [string]``
``Status: ✅ Supported - Unused``

Usage Example:
```
Version:OutFox Easy Mod File 2021
```
This entry in the list allows a chart author to name a difficulty 'version' for the particular `.osu` file within a collection for one song. It is usually used for descriptive difficulty information, or to 'theme' difficulties, for example (`spring easy`, `summer hard`, `autumn extreme`, `winter death`). 

Other authors use this field to also add the number of keys the chart has in `mania` mode, for example `[3k]`, `[6k]`, `[10k]` would let people know it uses 3 columns, 6 columns and 10 columns respectively before the difficulty name.

There is no specific detail given for this entry, other than it being used within the online portion of the game for difficulty and to give information on the music wheel when choosing a song. It is better to give some detail about the difficulty in the entry given, as you can risk not being ranked, and upsetting players.

On _OutFox_ this entry will actually be ignored until the new caching system supports the multi-chart per song setup of these new modes, but we support this option for now, it is just unused. We have a new difficulty system in planning, but it is not complete.

This variable has no equivalent SM/SSC value.

---

## ``Source:source [string]``
``Status: ✅ Supported``

Usage Example:
```
Source:Serenity Volume 2
```
This entry in the list identifies the source of the song, or the original media it was produced for (in the case of anime openings/themes etc). It can also be used as the _pack_ source if the song was created specifically for games, as our example.

On _OutFox_ this entry is likely going to be parsed as the 'subtitle' entry until we fit another option for this information.

This variable has no equivalent SM/SSC value.
---

## ``Tag:tags [string string string]``
``Status: ❌ Ignored (Unsupported)``

Usage Example:
```
Tags:japanese j-pop modfile
```
This command adds a selection of words that the chart can be searched by on the online system, and within the music wheel. They are simply space separated, and act like tags on a youtube video or instagram post, allowing players to find the chart. 

It is important you put useful or meaningful tags in this section that reflect the chart so it can be found!

_OutFox_ does not use this function yet so it is ignored for now.

This variable has no equivalent SM/SSC value.
---

## ``BeatmapID:id [n]``
## ``BeatmapSetID:id [n]``
``Status: ❌ Ignored (Unsupported)``

Usage Example:
```
BeatmapID:0123456789
BeatmapSetID:0987654
```
The BeatmapID is used as an identifier for the 'Difficulty ID' according to the official documentation, with the BeatmapSetID being used as the identification of the `chart` or `beatmap` itself.

The use of these is mainly for the upload content system so the web side can catalogue and add the entries to the database. Without these one would not be able to tie scores or combos to the charts played. These identifiers also are likely used for ranking and high scoring/music wheels internally for the client.

_OutFox_ has it's own unique hashing system and database system planned which will be used as the IDs in this format are not compatible.

This variable has no equivalent SM/SSC value.

---
## `[Difficulty]` Section
---
This section details the main difficulty setup that the `chart` or `beatmap` will use. There are several values which change depending on the mode type, as well as the sizes of the circles and other settings.

_OutFox_ will not be using many of these as they are for `circles` mode primarily, but the `taiko` and `mania` mode changes will be detailed here.

The commands for this section are done as `Command:Value`. Do note the lack of spaces!

---

## ``HPDrainRate:n.n [0.0-10.0]``

## ``CircleSize:n.n [0.0-10.0]/[0-10]``

## ``OverallDifficulty:n.n [0.0-10.0]``

## ``ApproachRate:n.n [0.0-10.0]``

## ``SliderMultiplier:n.n [0.0-10.0]``

## ``SliderTickRate:n.n [0.0-10.0]``

---
_Written and Maintained with ♡ by Squirrel, containing information with thanks from the [Osu! Wiki](https://osu.ppy.sh/wiki/en/osu%21_File_Formats/Osu_%28file_format%29) and members of the international Taikojira and Mania! communities._