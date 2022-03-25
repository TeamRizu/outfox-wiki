---
title: "Courses"
weight: 0
---

{{<toc>}}

## Location of Courses

The default location for courses are in `Project OutFox/Courses`, with the following structure:
```
Project OutFox/Courses/
│
└───Some Creative Course Collection Name
│   │   
│   └───My Course.crs
│   └───My Course.png (Optional)
└───Singular course.crs
```

A colection (folder) can have as many courses inside of it as it wishes. The name of the folder is not used
on selection however, as described on the `instruction.txt` file.
>Course files (.crs) typically go in folders, though they aren't shown like that on the wheel... yet. (Coming soon: a metric that allows a theme to do that, once we get the wheel to treat course directories like song directories)

## Example Course File
```
#COURSE:My Course File;
#SCRIPTER:Jose_Varela;
#DESCRIPTION:This is an example course to showcase how it's written!;
#METER:Medium:8;

// Given the GAINSECONDS defined here, this course uses the survival life meter bar,
// which uses a timed lifebar.
#GAINSECONDS:120;
#SONG:OutFox/Credits:Medium;nodifficult;

// These tags must be added before the song that it will be applied to.
#GAINSECONDS:25;
#MODS:TIME=2.580000:LEN=8.000000:MODS=Drunk, Overhead;
#MODS:TIME=8.580000:LEN=5.000000:MODS=Dizzy;
// Looks for a random song on the "OutFox Serenity Volume 1 Winter Update" pack.
#SONG:OutFox Serenity Volume 1 Winter Update/*:Hard;nodifficult;
```

## Playing Courses

To play courses, you can choose by the "Extended", "Oni" and "Nonstop" modes.

## Tags

### #COURSE (Required)
Defines the course name to be shown during the music wheel.

```
#COURSE:Very creative course name;
```

### #SONG (Required)
This defines which song(s) will be played in the course.
```
#SONG:Pack Name/Song Name:Difficulty:[showcourse/noshowcourse/nodifficult/award];
```

#### Additional Tags
| Tag | Description |
|---|---|
| showcourse | (Default) Shows the song in the course list.
| noshowcourse | Hides the song in the course list, and instead reports ?????.
| nodifficult | Prevents the player from changing difficulties from the one provided in the course.
| award* | Defines how many lives the player will earn upon clearing the song (Used on battery life meter / Oni).

Example
| Placeholder | Value |
|---|---|
| Pack | OutFox |
| Song | Credits |
| Difficulty | Hard |

{{<hint info>}}
The difficulty value can also represent a range of difficulties, by placing two values separated by two dots. (..)
```
#SONG:Pack Name/Song Name:5..9:[showcourse/noshowcourse/nodifficult/award];
```
If no difficulties are found in the range, a guess of 3 to 6 is used instead, otherwise it picks the closest difficulty.
{{</hint>}}

#### Special #SONG tags
For the `#SONG` tag in particular, special data types are available to obtain certain songs
that are dependant on playback of the game.

The following are defined by the song's popularity rank, which is determined by how often the song is played.
The N value can be any number up to the number of available songs in your installation.
| Tag | Description |
| --- | --- |
| BEST[N] | Provides the best song from the N ranking.
| BEST[N] | Provides the worst songs from the N ranking.
| GRADEBEST[N] | Provides the songs with the best achieved grades from the N ranking.
| GRADEWORST[N] | Provides the songs with the worst achieved grades from the N ranking.

#### Random Songs (*)
Instead of a particular song, a random one can be chosen by using the wildcard operator (*).

```
#SONG:My Song Folder/*; # Will pick a random song from the "My Song Folder" folder.
```

```
#SONG:*; # Will pick a random song from the entire instalation.	
```

### #COURSETRANSLIT
Defines the transliterate name of the course to be shown during the music wheel when
the user has the "Translate Song Titles" option enabled.

```
#COURSE:A translation of the course name;
```

### #BANNER
Set a custom banner made specifically for the course which will be displayed upon selection.
The banner must be on the same folder as the course file.

```
#BANNER:MyBanner.png;
```

### #BACKGROUND
Set a custom background made specifically for the course which will be displayed before starting the course.
The background must be on the same folder as the course file.

```
#BANNER:MyBackground.png;
```

### #DESCRIPTION
Defines a description about the course. This applies to the entire course, not each individual song.

```
#DESCRIPTION:This is a course!;
```

### #REPEAT
This tag determines if this course is considered an "Endless" course, which will repeat
its entries upon completion until the player loses.

```
#REPEAT:[yes/no];
```

### #LIVES
Defines the number of lives available to the player to start with.
{{<hint info>}}
If this value is set, the course automatically becomes an "Oni" course with the "Lives" meter bar.
{{</hint>}}

```
#LIVES:3;
```

### #GAINSECONDS
Defines how many seconds the player will earn upon completion of a song.
{{<hint info>}}
Upon defining this tag, the course is considered an "Oni" course, with the "survival" meter bar.
{{</hint>}}

```
#GAINSECONDS:2.5;
```

### #METER
Defines a general meter for the course. Most themes don't display this value, and opt instead
to show each meter from the available songs in the course.

```
#METER:Medium:6;
```

### #RADAR
Defines the radar values for the entire course. Takes the same data type as regular simfiles.

```
#RADAR:0.598892,0.736598,0.254626,0.309189,0.736598,461.000000,433.000000,28.000000,34.000000,19.000000,0.000000,10.000000,6.000000,0.000000,0.598892,0.736598,0.254626,0.309189,0.736598,461.000000,433.000000,28.000000,34.000000,19.000000,0.000000,10.000000,6.000000,0.000000;
```

### #STYLE
Sets the style that this course will be compatible with.

```
#STYLE:single,versus;
```

### #SCRIPTER
Defines the author of the course to be shown during the music wheel

```
#SCRIPTER:You!;
```

### #MODS
Defines a scripted attack to happen at a given time. This tag can be used multiple times to
define multiple attacks. This tag must be inserted before the #SONG tag to apply the
attacks to that song.
```
#MODS:TIME=2.580000:LEN=0.310000:MODS=Drunk, Overhead;
```

Using this line, we're making so 100% Drunk and 100% Overhead are applied at 2.580000 seconds
in when playing the song, those attacks will also last 0.310000 seconds and then slowly decay back to their default values.
Read more about Attack/Modifiers [here](../mods/)

### Unused tags
These tags are ignored by the engine, but are described here for history.

### #DISPLAYCOURSE
Toggles visibility of the course on the music wheel.
### #COMBO
Unsure what this command would perform.
### #COMBOMODE
Unsure what this command would perform.

_Written by Jose_Varela, suggested and contributed by moruzerinho6._