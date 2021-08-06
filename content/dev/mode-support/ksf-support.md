---
title: KSF
weight: 1
geekdocCollapseSection: true
---

Project OutFox contains a parser for the KSF chart format, which is used for Kick It Up and 'Pump it Up'-style charts. This has been supported as early as StepMania 3.9, so everything listed here is what OutFox supports. At this point, most everyone has moved away from the KSF format in favor of SM or SSC. Like SM and SSC, sections follow this format: `#SECTION:DATA;`, which means `#`, `:` and `;` shouldn't be used in the data segment.
<!-- commit 4ec08edf2d59ca41390128d837081c11934ed0a2 in the stepmania-old repo is what brings ksf reader  -->

# File Naming
Most KSF files have the difficulty and chart type as its' file name. The following tables show what names translate to which difficulty, default rating and chart type

## Difficulty

File Name|Chart Rating|StepMania 5.1 and older|Project OutFox alpha 4.9.9
------------|-------------|-------------|-------------
another|25|Edit|D6
wild / wd / hardcore|20|Challenge|D5
crazy+ / cz+|20|Challenge|D5
crazy / cz / crazydouble|14|Hard|D4
nightmare / nm|14|Hard|D4
hard / hd / double|8|Medium|D3
freestyle / fs|8|Medium|D3
easy / ez / normal|4|Easy|D2
Beginner / practice|4|Beginner|D1

If not specified, it gets set to Hard/D4 and is given a rating of 10.

## Chart Type
File Name|Resulting Steps Type
------------|-------------
halfdouble / half-double / h_double / hdb|halfdouble
double / db|double
freestyle / fs|double
nm|double
_1|single
_2|couple
---
# Sections

## ``TITLE``
This gives both the song name and artist.
There are three acceptable formats for this section:

>* ``song name``
This just gives a song name only.

>* ``artist name - song name``
This gives both a song name and artist name, separated by a `-`

>* ``artist name - song name - difficulty``
This gives both a song name, artist name and difficulty, separated by a `-`.
In this case, the difficulty is ignored, since it's read from the file name instead.

Example:

```
#TITLE:L.F.O;
``` 
With artist & title:
```
#TITLE:aran - L.F.O;
``` 
---
## ``TICKCOUNT``
Sets the starting tick count for the file. This specifies how many lines of notes is needed to pass one beat.

For example: a tick count of 4 means 4 lines of notes are needed for a whole beat, allowing for 16ths.

Example:

```
#TICKCOUNT:4;
``` 
---
## ``BPM``
This defines the starting BPM.

Example:

```
#BPM:135.01;
``` 
---
## ``BPM2`` / ``BPM3``
Kick It Up uses these to define the BPMs to change to. You can have up to two BPM changes.

Example:

```
#BPM2:164;
#BPM3:174;
```
---
## ``BUNKI`` / ``BUNKI2``
Kick It Up uses these to handle the positioning of BPM changes. You can have up to two BPM changes.

This is specified in centiseconds in SM.

Example:

```
#BUNKI:2000;
#BUNKI2:6500;
```
---
## ``DIFFICULTY``
Sets the rating of the chart. Otherwise, values from the Difficulty secion above are used.

Example:

```
#DIFFICULTY:7;
```
---
## ``STARTTIME``
Sets the beat 0 offset of the chart. SM interprets this in centiseconds.

Example:

```
#STARTTIME:829;
```
---
## ``STARTTIME2`` / ``STARTTIME3``
Kick It Up uses these to help ensure more accurate BPM changes. STARTTIME3 is ignored in SM.

Example:

```
#STARTTIME2:9;
#STARTTIME3:0;
```
---
## ``PLAYER``
From Aldo_MX's fork of "Stepmania Plus REDUX"

If "double" is found, the file is marked as a doubles chart.

Example:

```
#PLAYER:DOUBLE;
```
or
```
#PLAYER:SINGLE;
```
---
## ``MUSICINTRO`` / ``INTRO``
From Aldo_MX's fork of "Stepmania Plus REDUX"

Sets the start point of the music sample. It's parsed in HH:MM:SS format

Example:

```
#MUSICINTRO:1:20;
```
---
## ``TITLEFILE``
From Aldo_MX's fork of "Stepmania Plus REDUX"

Sets the background location of the song.

Example:

```
#TITLEFILE:CoolTitle.png;
```
---
## ``DISCFILE``
From Aldo_MX's fork of "Stepmania Plus REDUX"

Sets the banner location of the song.

Example:

```
#DISCFILE:FunnyDisc.png;
```
---
## ``SONGFILE``
From Aldo_MX's fork of "Stepmania Plus REDUX"

Sets the file name of the song's audio.

If not specified, the game looks for an audio file named "song" in the same folder as the KSF.

Example:

```
#SONGFILE:SweetTunes.mp3;
```
---
## ``#STEP:``
This is the notedata of the file.

---
### Notedata specs
Each row of notes is 13 characters long, with all `2`s marking the end of the chart.

If any holds are unfinished at that point, they automatically capped off at the end of the chart.

For half-doubles, the first two columns are always 0.

### Note types

Character|Note Type|Quirks
------------|-------------|-------------
0|empty|N/A
1|Tap Note|N/A
4|Hold Note|The hold finishes upon the first non-`4` character in the column.
M / m|Mines|N/A
F / f|Fake Note|N/A
L / l|Lift Note|N/A

Example:

```
#STEP:
1000010000000
0010000400000
0000000400000
0000000400000
2222222222222
```
### Segment types
Direct Move 0.5 had segment definitions to allow for more extendable charting.

#### ``|Tn|``
Sets the tick count at the current beat.

Example: `|T512|` sets the tick count to 512.

---
#### ``|Bn|``
Sets the BPM at the current beat.

Example: `|B128.5|` sets the BPM to 128.5.

---
<!-- I'm unsure about this -->
#### ``|En|``
Sets a delay segment at the given beat for n beats

Example: `|E12|` Makes a 12 beat delay segment.

---
<!-- I'm unsure about this -->
#### ``|Dn|``
Sets a delay segment at the given beat for n miliseconds

Example: `|D1000|` Makes a 1000 milisecond (1 second) delay segment.

---
#### ``|Mn|`` / ``|Cn|``
Sets the combo multiplier at the given beat

Example: `|M2|` sets the combo multiplier to 2.

<!--
--- #### |Sn|
Unused in the KSF reader. Supposedly does speed segments.

---
#### |Fn|
Unused in the KSF reader. Supposedly does fakes segments. -->

---
#### ``|Xn|``
Sets the scroll segment at the current beat.

Example: `|X3|` sets the scroll to 3x.

