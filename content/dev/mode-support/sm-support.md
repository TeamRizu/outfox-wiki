---
title: SM
weight: 1
geekdocCollapseSection: true
---

Project OutFox contains a parser for the SM chart format, which has existed as early as StepMania 3.9, and is what most StepMania-based engines support as a base format & simfile cache format. With SM5, this has been succeeded by the SSC format, but for completeness, the following page contains details about what the SM format supports and used to support.
<!-- The commit introducing .sm as something to look for is f8118fea49bd87db457d9e86d7bc6afabe75e9bf in stepmania-old -->

Every section follows this format: `#SECTION:DATA;`, which means `#`, `;` and `:` shouldn't be used in the data section.

To note, some sections parsed are from SSC, so the current implementation of SM is both SM and a bit of SSC.

# Sections

## ``TITLE``
This gives the title of the song.

If not defined, the game falls back on the simfile directory name.

Example:

```
#TITLE:Blow My Mind;
``` 
---
## ``SUBTITLE``
This gives the subtitle of the song. It's often shown underneath the song title.

If ``TITLE`` wasn't defined, the game falls back on the simfile directory name for this as well.

Example:

```
#SUBTITLE:Tournament Stage 2;
``` 
---
## ``ARTIST``
This gives the artist of the song.

If not defined, the game shows "Unknown artist" instead.

Example:

```
#ARTIST:かめりあ;
``` 
---
## ``TITLETRANSLIT``
This is the transliterated song title that usually shows when the ShowNativeLanguage preference is on.
Some music wheels use this if the font used doesn't have the characters needed for the main title.
If empty, the ``TITLE`` section is used in all cases.

Example:

```
#TITLETRANSLIT:Ame agari no uta;
``` 
---
## ``SUBTITLETRANSLIT``
This is the transliterated subtitle that usually shows when the ShowNativeLanguage preference is on.
Some music wheels use this if the font used doesn't have the characters needed for the main title.
If empty, the ``SUBTITLE`` section is used in all cases.

Example:

```
#SUBTITLETRANSLIT:Touhou Koumakyou;
``` 
---
## ``ARTISTTRANSLIT``
This is the transliterated song artist that usually shows when the ShowNativeLanguage preference is on.
Some music wheels use this if the font used doesn't have the characters needed for the main title.
If empty, the ``ARTIST`` section is used in all cases.

Example:

```
#ARTISTTRANSLIT:Camellia;
``` 
---
## ``GENRE``
This is the genre of the song. Some examples are `Rock`, `Dubstep`, and `Classical`. Anythng can be put here as a genre.

Example:

```
#GENRE:Techno Pop;
``` 
---
## ``CREDIT``
This field is for crediting someone.

Example:

```
#CREDIT:Narumi;
``` 
---
## ``BANNER``
This defines the file to use for the song's banner. It's usually in the same folder as the simfile. This is a relative path.

If not defined, the game looks for image files that contain "banner" or end with "bn".

Example:

```
#BANNER:crazy-bn.png;
``` 
---
## ``BACKGROUND``
This defines the file to use for the song's background. It's usually in the same folder as the simfile. This is a relative path.

If not defined, the game looks for image files that contain "background" or end with "bg".

Example:

```
#BACKGROUND:awesome-image.png;
``` 
---
## ``LYRICSPATH``
This defines the file to use for the song's lyrics. This is a relative path.
<!-- TODO: Do I document the lrc format? -->

Example:

```
#LYRICSFILE:speed.lrc;
``` 
---
## ``CDTITLE``
This defines the file to use for the song's CD Title. Usually the simfile author uses this to put their author image. This is a relative path.

Example:

```
#CDTITLE:nonsense.png;
``` 
---
## ``MUSIC``
This defines the file to use for the song's music. This is usualy in the same folder as the simfile. This is a relative path.

Example:

```
#MUSIC:dondadon.ogg;
``` 
---
## ``INSTRUMENTTRACK``
Specifies a song file to use for an instrument track. This is a relative path. Valid intrument tracks are: "Guitar", "Rhythm", "Bass", "Vocal", "Drum1", "Drum2", "Drum3" and "Drum4"

Example:

```
#INSTRUMENTTRACK:track1.ogg=Guitar,
track2.ogg=Drum1;
``` 
---
## ``SAMPLESTART``
Defines the starting point of the same taken from the main audio file, in seconds.

Example:

```
#SAMPLESTART:20.421;
``` 
---
## ``SAMPLELENGTH``
Defines how long the song's sample plays for, in seconds.

Example:

```
#SAMPLELENGTH:5.000;
``` 
---
## ``DISPLAYBPM``
Sets the BPM to be shown in the music wheel.

`*` means it's random, and constantly changing characters are shown for BPM.

If not set, the song's min and max BPM are shown instead.

Example:

```
#DISPLAYBPM:240;
``` 
or
```
#DISPLAYBPM:*;
``` 
---
## ``SELECTABLE``
Sets whether the song is shown in the music wheel or not. This is ignored if the HiddenSongs preference is turned off.

"YES", "1", "ES"(3.9+) and "OMES"(3.9+) are the same, while "NO" or "0" set it to unselectable.

Example:

```
#SELECTABLE:NO;
``` 
---
## ``BGCHANGES`` / ``BGCHANGES2`` / ``BGCHANGES3`` / ``ANIMATIONS``
Specifies what the background of a song changes to throughout the chart. This allows lua files to be loaded.

BGCHANGES with numbers specifies what layer it shows up on. (BGCHANGES2 = Layer 2)

BGCHANGE format:
```beat=file_or_folder=update_rate=crossfade=stretchrewind=stretchnoloop=Effect=File2=Transition=Color1=Color2```

- beat: The beat this BGCHANGE occurs on. Can be negative to start before the first beat.
- file_or_folder: The relative path to the file to use for the BGCHANGE. Lua files are allowed. If a folder is given, it looks for "default.lua".
- update_rate: The update rate of the BGCHANGE.
- crossfade: set to 1 if using a crossfade. Overriden by Effect.
- stretchrewind: set to 1 if using stretchrewind. Overriden by Effect.
- stretchnoloop: set to 1 if using stretchnoloop. Overriden by Effect.
- Effect: What BackgroundEffect to use.
- File2: The second file to load for this BGCHANGE.
- Transition: How the background transitions to this.
- Color1/Color2: Formatted as `red^green^blue^alpha`, with the values being from 1 to 0, Passed to the BackgroundEffect with the LuaThreadVaraible "Color1"/"Color2" in web hexadecimal format as a string. Alpha is optional.

Often, a last entry with "-nosongbg-" as the file is placed so the song's starting background doesn't show up at the end.

Example:

```
#BGCHANGES:0.000=blossom1.jpg=1.000=1=0=1===CrossFade==,
52.000=blossom2.jpg=1.000=0=0=1=====,
164.000=blossom1.jpg=1.000=0=0=1=====,
229.000=blossom3.jpg=1.000=0=0=1=====,
302.000=blossom1.jpg=1.000=0=0=1=====,
99999=-nosongbg-=1.000=0=0=0 // don't automatically add -songbackground-
;
``` 
The second line explained: `52.000=blossom2.jpg=1.000=0=0=1=====`
- Beat = 52
- File = "blossom2.jpg"
- Update rate = 1
- Crossfade: off
- stretchrewind: off
- stretchnoloop: on
- Effect: none (Does not override the above three)
- File2: none (Nothing loads in the second slot)
- Transition: none (The first line uses "CrossFade")
- Color1: none
- Color2: none
---
## ``FGCHANGES``
Like BGCHANGES, FGCHANGES follow the same format, but happen in a Foregound layer, above the players and most everything else. Commonly used in gimmick files to script modifiers or other visual aspects.

Example:

```
#FGCHANGES:0.000=lua=1.000=0=0=1=====;
``` 
---
## ``KEYSOUNDS``
Specifies what files to load as keysounds. Uses relative paths.

Example:

```
#KEYSOUNDS:pf_24_c#+.ogg,ba_op1.ogg,dr_hho.ogg,dr_rs.ogg,dr_bd8.ogg,dr_cs8.ogg,sq_a.ogg,pc_c.ogg,pf_op11.ogg;
``` 
---
## ``OFFSET``
Defines when beat 0 starts, in seconds. Charts made for the ITG meta tend to have an extra positive 9 ms added.

Example:

```
#OFFSET:-0.611000;
``` 
---
## ``STOPS`` / ``FREEZES``
Defines where stops in the song happen. The first parameter is the beat, and the second parameter is how long the stop is, in seconds.

Example:

```
#STOPS:46.250000=0.030000,
46.500000=0.030000,
46.750000=0.030000;
``` 
---
## ``BPMS``
Defines the BPMs the song has. A song must have at least one BPM at beat 0.

The first parameter is the beat, and the second parameter is the actual BPM.

Example:

```
#BPMS:0.000=140.250,
48.000=93.500,
48.333=62.333;
``` 
---
## ``TIMESIGNATURES``
Defines the time signatures of the song. Most songs default to 4/4 as their starting signature. There are three parameters: beat, numerator and denominator. The last two parameters must be greater than or equal to 1.

Currently, this only affects the measure lines.

Example:

```
#TIMESIGNATURES:0.000=4=4;
``` 
---
## ``ATTACKS``
These are course-style scripted modifiers written into the simfile. Unlike most sections, this is seconds-based instead of beat-based, to allow for modifiers during stops.

The format of an attacks entry is this:
```TIME=seconds:END/LEN=endtime/lengthtime:MODS=modstring```

Internally, entries that use END are converted into LEN.

Example:

```
#ATTACKS:TIME=1.618:END=3.166:MODS=*32 Invert, *32 No Flip
:TIME=2.004:END=3.166:MODS=*32 No Invert, *32 No Flip
:TIME=2.392:LEN=0.1:MODS=*64 30% Mini
:TIME=2.489:LEN=0.1:MODS=*64 60% Mini;
``` 
---
## ``DELAYS``
Specifies the Delay segments for the song.
The first parameter is the beat, and the second parameter is the duration in seconds.
Appears to have been added since SM-SSC.

Example:

```
#DELAYS:488.000=0.050;
``` 
---
## ``TICKCOUNTS``
Specifies how many checkpoints a hold has in a beat. <!--TODO: Is this correct? Was it beat or measure?-->
The default value is 4. This only gets used in the `pump` game mode.
The first parameter is the beat, and the second parameter is the number of checkpoints to use.
Appears to have been added since SM-SSC.

Example:

```
#TICKCOUNTS:0.000000=4,
50.000=16;
``` 
---
## ``NOTES`` / ``NOTES2``

`NOTES2` is written when keysounds are used, but both are read in the same way.

### Notedata specs

Notedata has 6 parameters:
- Steps Type: follows the format `game-style`. eg: `pump-doubles`
- Description: a string that usually has the chart creator's name or chart information.
- Difficulty: The difficulty of the chart.
- Chart Meter: the difficulty number. Various chart metas follow different number scales.
- Radar Values: The 5 radar values based off of DDR's. The order is this: Stream, Voltage, Air, Freeze, Chaos. The game calculates this itself when writing the SM file.
- Notes: the actual notedata the game reads in to create the chart one plays.

### Special cases

There are two special cases involving the Hard difficulty. If the description is "smaniac" or "challenge", it gets read into the Challenge difficulty.

### Note layout

Each measure has a minumum of four lines, with each measure being comma separated. The number of characters per row corresponds to the number of columns the mode has. (eg: dance-single has four columns, so each row has four characters)

4 rows per measure allows for 4ths, 8 rows per measure allows for 8ths, 16 rows per measure allows for 16ths, etc.

### Note Types
The following table shows what character corresponds to what note type (not including characters introduced by SSC)
Note Character|Note Type|Quirks
-------|-------|-------
0|empty|N/A
1|Tap Note|N/A
2|Hold Note Head|N/A
4|Roll Note Head|N/A
3|Hold & Roll Note Tail|Having a 3 without a corresponding 2 or 4 will result in warnings.
M|Mines|N/A
K|AutoKeysounds|N/A
L|Lifts|N/A
F|Fakes|They can only be fake taps. You can't do fake holds with this.

### Attack Notes
Attacks can be attatched to notes by having `{}` after the note.

The format is `{modstring:lengthseconds}`

When hitting a note with an attack, the attack gets applied for the player as a whole for the given duration.

### Keysounds
Keysounds can be attached to a note by having `[]` after the note.

The format is `[index]`, with index starting at 0, and corresponding to the order listed in `#KEYSOUNDS`.


<!-- https://github.com/stepmania/stepmania/blame/51576d5942ead16d2205831677cea74630c1b598/stepmania/src/NotesLoaderSM.cpp -->

Example:

```
#NOTES:
     dance-single:
     Charter Man:
     Easy:
     4:
     0.503,7.2,0,0,0:
L000
00F4
0000
0003
,
1000
0200
00M0
A[0]000
0300
0000
0001{tipsy,50%bumpy:5.2}
0000
;
```
---
# Deprecated / Cache Sections

These sections are considered unused or ignored in normal simfiles due to being replaced, removed or being used in cache files instead.
## ``MUSICLENGTH``
Specifies how long the music is, in seconds.
Used in the cache variant of the SM format.

Example:
```
#MUSICLENGTH:64.052;
```
---
## ``MUSICBYTES``
Just flat out ignored. No-one seems to know what this was for. <!--TODO: Was this ever used at any point?-->

---
## ``LASTBEATHINT``
Specifies a custom last beat for the song. Phased out at some point. <!--TODO: When?-->

Example:
```
#LASTBEATHINT:211.000000;
```
---
## ``FIRSTBEAT``
Specifies the first beat in the song.
Used in the cache variant of the SM format. Phased out at some point. <!--TODO: When?-->

Example:
```
#FIRSTBEAT:10.348;
```
---
## ``LASTBEAT``
Specifies the last beat in the song.
Used in the cache variant of the SM format. Phased out at some point. <!--TODO: When?-->

Example:
```
#LASTBEAT:128.600;
```
---
## ``SONGFILENAME``
The full path to the simfile itself.
Used in the cache variant of the SM format. Moved into the SSC cache format.

Example:
```
#SONGFILENAME:/AdditionalSongs/UPS 4/Brain Power/Noma - Brain Power.sm;
```
---
## ``HASMUSIC``
Used in the cache variant of the SM format. Moved into the SSC cache format.

Example:
```
#HASMUSIC:1;
```
---
## ``HASBANNER``
Used in the cache variant of the SM format. Moved into the SSC cache format.

Example:
```
#HASBANNER:0;
```
---
## ``SAMPLEPATH``
Defines the path to the separate sample audio. Phased out at some point. <!--TODO: When?-->

---
## ``LEADTRACK``
Unknown.

