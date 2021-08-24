---
title: BMS/BME/PMS Support
weight: 1
geekdocCollapseSection: true
---

Project OutFox contains parsers for the ``BMS`` and ``PMS`` chart formats, which are the standard formats used in conjunction with mostly the ``beat`` and ``popn`` game types. The following page contains details on the ``BMS``/``PMS`` channels that _Project OutFox_ currently supports. This is a living document, and will be updated as progress is made to expand the work to support as much of these as possible.

---
# Introduction
---
The ``BMS`` file standard was devised by Urao Yane in 1998. It was originally created to be a format to simulate the game _Beatmania_ by Konami. There have been several dozen interations over the years, and we will talk about some of them here in one easy to contain and read page. Do not be afraid of this format, it is incredibly versatile and have been used to simulate a variety of games.

_Project OutFox_ uses mostly BM98 (1998 to 2003) era definitions for this file standard, though it is improving all the time. The format is used to simulate most of the _'Down Scroll Rhythm Game Systems'_ and is known by several other derivatives which we are also slowly building support for. 

``BMS`` charts are mostly composed by artists from Asia, so reading them in non-asian locales can be difficult. _OutFox_ will be overcoming this limitation in a future update, so do not delete all your charts which just show ``??????????`` just yet!

The other two file types on this page, ``PMS`` and ``BME`` were born from this format and are used for other types of games. ``PMS`` was originally designed to simulate _Keyboardmania_ and had a very different channel layout than ``BMS``, but it's use moved towards _po-mu_ / _feeling po-mu_ (po-mu is short for _Pop'n Music_). This had a unique layout for 9 key/button charts, and also were used in the actual arcade games (Though they used ``BME``) for a few years. _Project OutFox_ recently fixed a lot of support for this parser, along with adding several of the missing modes often charted by simfile authors.

``BME`` is an Extension of ``BMS`` and offers newer features that were not offered in raw simulators of BM98. The other system we support is ``BML`` files, which ``PMS`` incorporated by default in 2002. ``BML`` adds ``Long Note`` (known as _holds_ in StepMania), which again extends the ``BMS`` specification. We will support both ``BME`` and ``BML`` fully in an upcoming release and update these documents in the future.

**Again, if you feel any particular command or object should be included, do let us know. There are quite a few bits of the specification that just simply have not been considered or added at this time, I'm documenting what we _do_ have, and you are more than welcome to give suggestions for future additions. - Squirrel**

---
# Basic Format
---
The ``BMS`` file format describes how notes are arranged and how the game is meant to behave if/when a player takes a specific action. It is usually a simple plain text file with the command lines starting with the ``#`` character. 

The file consists of a _HEADER FIELD_ section and a _MAIN DATA FIELD_ section. We will be going through in detail on the most commonly used commands and channels so you have the information here. A lot of the available commands ever offered to BMS/PMS over the years have faded into deprecation/not being used, but the ones we have seen in actual files include what we will be supporting. 

If you find a file that is not showing up in _OutFox_ you may need to switch the encoding options of the chart, or just wait until the new string system is added in the future.

### Commands are in the header formatted as the following:

```#[Command] [Value]```

For these commands, a space between the command and value is _required_ or you will have offset issues in most simulators. A Simple Example of some common commands used in the header field are:

```
*---------------------- HEADER FIELD
#PLAYER 3
#GENRE Dance
#TITLE My Dance Classics
#ARTIST DJ Superstar
#BPM 128
#PLAYLEVEL 5
#TOTAL 100
#RANK 2

#bmp00 miss.bmp
#bmp01 01.bmp
#wav01 01.wav

*---------------------- MAIN DATA FIELD
#00111:01010101
#00211:0101010001010100
```

---
## Common HEADER FIELD commands
---

## ``#PLAYER n [1 - 4]``
``Status: ✅ Supported``

Usage Example:
```
#PLAYER 3 
```

This command defines the play style that the chart is set for. In the earlier versions of ``BMS`` they also specified the _number_ of players.

>* ``1`` = 1 Player or Single Play, with 1 life gauge. 

>* ``2`` = 1 + 2 Player or Couples Play, with 2 life gauges. Mostly deprecated and not used. _OutFox_ mostly supports these and can parse them under the old _``iidx-*``_ styles from SM3.x

>* ``3`` = 1 Player on 2 sides, or Double play. Modern sims use this value the most, or just ignore the ``PLAYER`` setting completely. Often a lot of ``PMS`` files have value of 3, though I have not been able to find out why. _OutFox_ supports the odd use of this command but again most simulators post 2015 ignore this value.

>* ``4`` = 1 vs 2 Player, or Battle Play, with two life gauges, which was removed in iidx19, has fallen out of favour in use. I have actually only found ``PMS`` battle mode files with 3 key vs 3 key chart styles from _portable 2_. _OutFox_ currently can parse these files, but has no battle mode support.

_Project OutFox_ also supports 'duet' or normal 2 player mode without needing to be set in the file itself, by joining a second player on the select music screen. As of Alpha 4.9.8 this was extended to ``PMS`` offering new modes with a 2 player option of po-mu for the first time. All ``popn`` styles (3k, 4k, 5k, 7k, 9k) have 2 player support now, with battle mode planned in the future. 

---

## ``#GENRE genre [string]``
``Status: ✅ Supported``

Usage Example:
```
#GENRE Blues 
```
This command sets the _genre_ or _type_ of music that the chart is going to play. It could be used by the simulator for sorting or grouping charts, or to allow for just more information to be displayed on the song select screen. The genre is usually written in SHIFT-JIS on older charts, but UTF8/UTF16 are becoming a lot more common, so do check.

---

## ``#TITLE title [string]``
``Status: ✅ Supported``

Usage Example:
```
#TITLE Take (Bamboo) 
```
The title command sets the SongTitle and this will be displayed on the song wheel to be selected, as well on the screen gameplay and evaluation screen. It will also be recorded in high scores and on your profile etc. Older charts used SHIFT-JIS. 

---

## ``#ARTIST artist [string]``
``Status: ✅ Supported``

Usage Example:
```
#ARTIST 立秋 feat.ちょこ
```
The artist command sets the SongArtist and this is usually displayed on the song wheel when selected and on the evaluation screen. The artist information is usually recorded in high scores and on your profile. Older charts used SHIFT-JIS.

---

## ``#BPM n [0.0-1400.00]/[0-255]``
``Status: ✅ Supported``

Usage Example:
```
#BPM 140.35
```
This setting allows the chart to specify the beginning (or starting) BPM of a song. This value will also be shown in the music wheel, and will be setting the speed that will be used as part of the modifiers / scrolling of the notes. This value used to require a whole number. _Project OutFox_ allows for floats here - you are limited to 6 decimal places - so ``143.000290`` as an example.

Older simulators do not support decimal point `BPM` values, and you cannot enter a value above `255` as it can crash the simulator in question. If you are wishing to make your chart portable to other programs, bear this in mind; not every simulator supports this!

This value also can (and will!) be overwritten by channel commands/settings later on in the chart.

---

## ``#PLAYLEVEL n [0-6]/[0-9]/[1-49]``
``Status: ✅ Supported``

Usage Example:
```
#PLAYLEVEL 5
```
The playlevel sets the number of 'stars' (from the old games) or the difficulty specified. In ``BMS`` files this difficulty ranges normally from 0 to 6 - 6 being the hardest. The older scale from 0 to 9 was from the BM98 spec, which was never really used much or supported. 

In some ``BME`` and most ``PMS`` files, the playlevel can be from 1 to 49. This reflects the style from other games with the wider difficulty ranges, and po-mu has had a wider difficulty rating for some years.

In older versions of StepMania, this difficulty used to be squished into a 5 tier difficulty system and sometimes didn't really work that well. It needed to use a hint from the file name to ensure it didn't make everything an EDIT. This also meant that a lot of charts disappeared/were not parsed correctly and was generally not that suitable for use. _OutFox_ has remedied this by fixing how the parser sees difficulties, and also widens the difficulty arc to out of 10 fields.

---

## ``#RANK n [0-4]``
``Status: ❌ Unsupported``

Usage Example:
```
#RANK 2
```
The rank entry used in the old ``BMS`` specification used to allow the chart artist to select a difficulty on how the 'timing window' would be set when playing the chart. It was designed for those simulators that didn't have ways of difficulty or setting different timing windows.

There were 5 different ranks, the last being added by _nanasi_ which was a more relaxed timing window compared to the other simulators. Almost all of the simulators that are active today set ``2`` as the default. The old ranking timing windows are listed below for historical purposes. They are ignored on _OutFox_ as we have a custom timing window solution, but if you would like us to add this to set a timing system in the future, do let us know!

Value|Label|COOL Time window| 
------------|-------------|-------------|
 ``0`` | VERY HARD | +/- 8ms|
 ``1`` |  HARD | +/- 15ms|
 ``2`` | NORMAL | +/- 18ms|
 ``3`` | EASY | +/- 21ms|
 ``4`` | VERY EASY | +/- 33ms|

Most of these timing windows are not really tied to any specific game or methodology of timing, so it is why we made the decision to not support any of the ``RANK`` commands: we also do not support the timing system used by _Angolmois_ which uses 6 ranks. We do not support ``#DEFEXRANK`` / ``#EXRANK`` as they were additions by _nanasi_ and it seems they did not carry over to be commonly used in other simulators. Changing timing mid song is something we could support, but we do not really see a need to add that to the engine at this time.

The 'timing' windows used in _Project OutFox_ are closer to ``RANK 2`` to follow the standard others use.

---

## ``#TOTAL n [0-999]``
``Status: ❌ Unsupported``

Usage Example:
```
#TOTAL 430
```
The `TOTAL` command is to set the value of what could be considered an extension of the 'gauge' in older simulators, before _life gauges_ existed. The value of `TOTAL` is added to a normal gauge to increase it's length. if the value was 300, then the gauge would go from 0 to 100% in size, to the intial value (normally around 25% + 300% for a total gauge size of 325%). 

This only occurs when the notes are hit and combo is kept, otherwise things would return to the old gauge size. It was more of a consideration on gauge/groove/clear amounts (what you needed to reach to be considered a pass in that song). This did lead to some confusion on how `TOTAL` should affect the gameplay/level of the chart.

The gauge never changed size; it was an off screen calculation on how you could 'score' your chart. Several simulators over the years have changed this value if `TOTAL` was omitted, we at the moment do not honour the value, mainly because we do not follow the _iidx_ scoring system since 2005.

---

## ``#MAKER maker [string]`` or
## ``#CREDIT credit [string]`` or 
## ``SUBARTIST subartist [string]``
``Status: ✅ Supported``

Usage Example:
```
#MAKER Ima StepChart
```
or
```
#CREDIT Ima StepChart
```
or
```
#SUBARTIST Ima StepChart
```
The `MAKER` or `CREDIT` command simply allows the author or maker of the chart to add their credit so it will be displayed in the simulator. The main support for `MAKER` comes from around 2002 onwards. It is common in most 5 Key styles to be used, as well as being used on 10 Key (double play) styles. ``CREDIT`` is more recent, being seen from around 2013 in charts. I know not it's origin, we support both as to not ignore honouring those that take the time to make charts for us to enjoy.

Since around 2017, another command, ``SUBARTIST`` began to be used more commonly in `BME`/`PMS` files, which was inherited from `DTX`. The sub artist is not normally displayed until the evaluation screen on earlier simulators, but in _OutFox_ we treat all three of these in the same manner. If you are creating a new `BMS` chart, then `#MAKER` is usually safer to use for other simulator support.

---

## ``#STAGEFILE stagefile [string]``
``Status: ✅ Supported``

Usage Example:
```
#STAGEFILE loadingscreen.png
```
The stagefile command is used to set an image to the 'loading screen' of the simulator - when the song and options/modifiers have been set, this file is then placed as part of the loading process on the 'loading screen'.

On older simulators, this loading process could take a _long_ time, so it was wise to incorporate a loading screen system into the simulator. This has also been recently done in _Project OutFox_ so we do not need to freeze the game while loading these files any more. This file is read in and parsed, just no theme at the moment takes advantage of the loading screen as of yet.

---
---

### Key:
- ✅ Fully supported and used in Mode
- ✓ Fully supported and not used in Mode
- 📝? No Documentation on this channel's support
- ❌ Not Supported / Not Available
- ~ Not Used

### Channel Support Table

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
1|Background Music|✅|Background Music|✅|Background Music|✅|Supported
2|Measure Length|✅|Measure Length|✅|Measure length|✅|Supported
3|Set Initial BPM|✅|Set Initial BPM|✅|Set Initial BPM|✅|Supported
4|BGA Base|✅|BGA Base|✅|BG Base|✅|Supported - needs enabling
5|eXtended Object|✅|eXtended Object|✅|eXtended Object|✅|Supported
6|BGA Layer Miss|✅|BGA Layer Miss|✅|BGA Poor|✅|Supported - needs enabling
7|BGA Layer|✅|BGA Layer|✅|BG Layer|✅|Supported - needs enabling sits above channel 4
8|Extended BPM|✅|Extended BPM|✅|Set BPM|✅|Supported - Changes bpm to value
9|Stop|✅|Stop|✅|Stop|✓|Supported
0A|BGA Layer 2|✅|BGA Layer 2|✅|BGA Layer 2|✅|Supported
0B|BGA Base Opacity|❌|BGA Base Opacity|❌|BGA Base Opacity|❌|Not Supported
0C|BGA Layer Opacity|❌|BGA Layer Opacity|❌|Not Used|~|Not Supported
0D|BGA Layer 2 Opacity|❌|BGA Layer 2 Opacity|❌|Not Used|~|Not Supported
0E|BGA Poor Opacity|❌|BGA Poor Opacity|❌|BGA Poor Opacity|❌|Not Supported
0F|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
10|Not Used|~|Not Used|~|Not Used|~|Not Used
11|P1 Key 1|✅|P1 Key 1|✅|P1 Left White|✅|Supported
12|P1 Key 2|✅|P1 Key 2|✅|P1 Left Yellow|✅|Supported
13|P1 Key 3|✅|P1 Key 3|✅|P1 Left Green|✅|Supported
14|P1 Key 4|✅|P1 Key 4|✅|P1 Left Blue|✅|Supported
15|P1 Key 5|✅|P1 Key 5|✅|P1 Red|✅|Supported
16|P1 Turn/Scratch|✅|P1 Turn/Scratch|✅|Not Used|~|Supported
17|P1 FootPedal|❌|P1 FootPedal|❌|Not Used|~|Supported
18|P1 Key 6|✅|P1 Key 6|✅|Not Used|~|Supported
19|P1 Key 7|✅|P1 Key 7|✅|Not Used|~|Supported
1A|Not Used|~|Not Used|~|Not Used|~|Not Used
1B|Not Used|~|Not Used|~|Not Used|~|Not Used
1C|Not Used|~|Not Used|~|Not Used|~|Not Used
1D|Not Used|~|Not Used|~|Not Used|~|Not Used
1E|Not Used|~|Not Used|~|Not Used|~|Not Used
1F|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
20|Not Used|~|Not Used|~|Not Used|~|Not Used
21|P2 Key 1|✅|P2 Key 1|✅|Not Used|✅|Supported
22|P2 Key 2|✅|P2 Key 2|✅|P1 Right Blue|✅|Supported
23|P2 Key 3|✅|P2 Key 3|✅|P1 Right Green|✅|Supported
24|P2 Key 4|✅|P2 Key 4|✅|P1 Right Yellow|✅|Supported
25|P2 Key 5|✅|P2 Key 5|✅|P1 Right White|✅|Supported
26|P2 Turn/Scratch|✅|P2 Turn/Scratch|✅|Not Used|~|Supported
27|P2 FootPedal|❌|P2 FootPedal|❌|Not Used|~|Not Supported yet
28|P2 Key 6|✅|P2 Key 6|✅|Not Used|~|Supported
29|P2 Key 7|✅|P2 Key 7|✅|Not Used|~|Supported
2A|Not Used|~|Not Used|~|Not Used|~|Not Used
2B|Not Used|~|Not Used|~|Not Used|~|Not Used
2C|Not Used|~|Not Used|~|Not Used|~|Not Used
2D|Not Used|~|Not Used|~|Not Used|~|Not Used
2E|Not Used|~|Not Used|~|Not Used|~|Not Used
2F|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
30|Not Used|~|Not Used|~|Not Used|~|Not Used
31|P1 Key 1 Hidden|❌|P1 Key 1 Hidden|❌|P1 Left White Hidden|❌|BMS/PMS in 4.9.10
32|P1 Key 2 Hidden|❌|P1 Key 2 Hidden|❌|P1 Left Yellow Hidden|❌|BMS/PMS in 4.9.10
33|P1 Key 3 Hidden|❌|P1 Key 3 Hidden|❌|P1 Left Green Hidden|❌|BMS/PMS in 4.9.10
34|P1 Key 4 Hidden|❌|P1 Key 4 Hidden|❌|P1 Left Blue Hidden|❌|BMS/PMS in 4.9.10
35|P1 Key 5 Hidden|❌|P1 Key 5 Hidden|❌|Not Used|~|BMS in 4.9.10
36|P1 Turn/Scratch Hidden|❌|P1 Turn/Scratch Hidden|❌|Not Used|~|BMS in 4.9.10
37|P1 FootPedal Hidden|❌|P1 FootPedal Hidden|❌|Not Used|~|BMS in 4.9.10
38|P1 Key 6 Hidden|❌|P1 Key 6 Hidden|❌|Not Used|~|BMS in 4.9.10
39|P1 Key 7 Hidden|❌|P1 Key 7 Hidden|❌|Not Used|~|BMS in 4.9.10
3A|Not Used|~|Not Used|~|Not Used|~|Not Used
3B|Not Used|~|Not Used|~|Not Used|~|Not Used
3C|Not Used|~|Not Used|~|Not Used|~|Not Used
3D|Not Used|~|Not Used|~|Not Used|~|Not Used
3E|Not Used|~|Not Used|~|Not Used|~|Not Used
3F|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
40|Not Used|~|Not Used|~|Not Used|~|Not Used
41|P2 Key 1 Hidden|❌|P2 Key 1 Hidden|❌|Not Used|~|BMS/PMS in 4.9.10
42|P2 Key 2 Hidden|❌|P2 Key 2 Hidden|❌|P1 Right Blue Hidden|❌|BMS/PMS in 4.9.10
43|P2 Key 3 Hidden|❌|P2 Key 3 Hidden|❌|P1 Right Green Hidden|❌|BMS/PMS in 4.9.10
44|P2 Key 4 Hidden|❌|P2 Key 4 Hidden|❌|P1 Right Yellow Hidden|❌|BMS/PMS in 4.9.10
45|P2 Key 5 Hidden|❌|P2 Key 5 Hidden|❌|P1 Right White Hidden|❌|BMS/PMS in 4.9.10
46|P2 Turn/Scratch Hidden|❌|P2 Turn/Scratch Hidden|❌|Not Used|~|BMS/PMS in 4.9.10
47|P2 FootPedal Hidden|❌|P2 FootPedal Hidden|❌|Not Used|~|BMS/PMS in 4.9.10
48|P2 Key 6 Hidden|❌|P2 Key 6 Hidden|❌|Not Used|~|BMS/PMS in 4.9.10
49|P2 Key 7 Hidden|❌|P2 Key 7 Hidden|❌|Not Used|~|BMS/PMS in 4.9.10
4A|Not Used|~|Not Used|~|Not Used|~|Not Used
4B|Not Used|~|Not Used|~|Not Used|~|Not Used
4C|Not Used|~|Not Used|~|Not Used|~|Not Supported
4D|Not Used|~|Not Used|~|Not Used|~|Not Supported
4E|Not Used|~|Not Used|~|Not Used|~|Not Supported
4F|Not Used|~|Not Used|~|Not Used|~|Not Supported

---

## Long Note Sections #xxx51-69 - #LNTYPE1, #LNTYPE2 (BMS/PMS) 

The original Long Note Implementation is currently not supported in OutFox, though we do support ``#LNTYPE 1``, but the others need to be added to the game. These sections seem to be for BMS specific extensions, however I have not been able to find any modern documented use of them outside of 2005-2009.

I have kept them here mainly due to the fact they exist, and whether or not there is enough of a use case to include them in our support roadmap of the specification.

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
50|Not Used|~|Not Used|~|Not Used|~|Not Supported
51|P1 Key 1 LongNote|📝?|P1 Key 1 LongNote|📝?|P1 Left While LongNote|📝?|Not Supported
52|P1 Key 2 LongNote|📝?|P1 Key 2 LongNote|📝?|P1 Left Yellow LongNote|📝?|Not Supported
53|P1 Key 3 LongNote|📝?|P1 Key 3 LongNote|📝?|P1 Left Green LongNote|📝?|Not Supported
54|P1 Key 4 LongNote|📝?|P1 Key 4 LongNote|📝?|P1 Left Blue LongNote|📝?|Not Supported
55|P1 Key 5 LongNote|📝?|P1 Key 5 LongNote|📝?|P1 Red LongNote|📝?|Not Supported
56|P1 Turn/Scratch LongNote|📝?|P1 Turn/Scratch LongNote|📝?|Not Used|~|Not Supported
57|P1 FootPedal LongNote|📝?|P1 FootPedal LongNote|📝?|Not Used|~|Not Supported
58|P1 Key 6 LongNote|📝?|P1 Key 6 LongNote|📝?|Not Used|~|Not Supported
59|P1 Key 7 LongNote|📝?|P1 Key 7 LongNote|📝?|Not Used|~|Not Supported
5A|Not Used|~|Not Used|~|Not Used|~|Not Used
5B|Not Used|~|Not Used|~|Not Used|~|Not Used
5C|Not Used|~|Not Used|~|Not Used|~|Not Used
5D|Not Used|~|Not Used|~|Not Used|~|Not Used
5E|Not Used|~|Not Used|~|Not Used|~|Not Used
5F|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
60|Not Used|~|Not Used|~|Not Used|~|Not Used
61|P2 Key 1 LongNote|📝?|P2 Key 1 LongNote|📝?|Not Used|~|Not Supported
62|P2 Key 2 LongNote|📝?|P2 Key 2 LongNote|📝?|P1 Right Blue LongNote|📝?|Not Supported
63|P2 Key 3 LongNote|📝?|P2 Key 3 LongNote|📝?|P1 Right Green LongNote|📝?|Not Supported
64|P2 Key 4 LongNote|📝?|P2 Key 4 LongNote|📝?|P1 Right Yellow LongNote|📝?|Not Supported
65|P2 Key 5 LongNote|📝?|P2 Key 5 LongNote|📝?|P1 Right White LongNote|📝?|Not Supported
66|P2 Turn/Scratch LongNote|📝?|P2 Turn/Scratch LongNote|📝?|Not Used|~|Not Supported
67|P2 FootPedal LongNote|📝?|P2 FootPedal LongNote|📝?|Not Used|~|Not Supported
68|P2 Key 6 LongNote|📝?|P2 Key 6 LongNote|📝?|Not Used|~|Not Supported
69|P2 Key 7 LongNote|📝?|P2 Key 7 LongNote|📝?|Not Used|~|Not Supported
6A|Not Used|~|Not Used|~|Not Used|~|Not Used
6B|Not Used|~|Not Used|~|Not Used|~|Not Used
6C|Not Used|~|Not Used|~|Not Used|~|Not Used
6D|Not Used|~|Not Used|~|Not Used|~|Not Used
6E|Not Used|~|Not Used|~|Not Used|~|Not Used
6F|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
70|Not Used|~|Not Used|~|Not Used|~|Not Used
71|Not Used|~|Not Used|~|Not Used|~|Not Used
72|Not Used|~|Not Used|~|Not Used|~|Not Used
73|Not Used|~|Not Used|~|Not Used|~|Not Used
74|Not Used|~|Not Used|~|Not Used|~|Not Used
75|Not Used|~|Not Used|~|Not Used|~|Not Used
76|Not Used|~|Not Used|~|Not Used|~|Not Used
77|Not Used|~|Not Used|~|Not Used|~|Not Used
78|Not Used|~|Not Used|~|Not Used|~|Not Used
79|Not Used|~|Not Used|~|Not Used|~|Not Used
7A|Not Used|~|Not Used|~|Not Used|~|Not Used
7B|Not Used|~|Not Used|~|Not Used|~|Not Used
7C|Not Used|~|Not Used|~|Not Used|~|Not Used
7D|Not Used|~|Not Used|~|Not Used|~|Not Used
7E|Not Used|~|Not Used|~|Not Used|~|Not Used
7F|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
80|Not Used|~|Not Used|~|Not Used|~|Not Used
81|Not Used|~|Not Used|~|Not Used|~|Not Used
82|Not Used|~|Not Used|~|Not Used|~|Not Used
83|Not Used|~|Not Used|~|Not Used|~|Not Used
84|Not Used|~|Not Used|~|Not Used|~|Not Used
85|Not Used|~|Not Used|~|Not Used|~|Not Used
86|Not Used|~|Not Used|~|Not Used|~|Not Used
87|Not Used|~|Not Used|~|Not Used|~|Not Used
88|Not Used|~|Not Used|~|Not Used|~|Not Used
89|Not Used|~|Not Used|~|Not Used|~|Not Used
8A|Not Used|~|Not Used|~|Not Used|~|Not Used
8B|Not Used|~|Not Used|~|Not Used|~|Not Used
8C|Not Used|~|Not Used|~|Not Used|~|Not Used
8D|Not Used|~|Not Used|~|Not Used|~|Not Used
8E|Not Used|~|Not Used|~|Not Used|~|Not Used
8F|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
90|Not Used|~|Not Used|~|Not Used|~|Not Used
91|Not Used|~|Not Used|~|Not Used|~|Not Used
92|Not Used|~|Not Used|~|Not Used|~|Not Used
93|Not Used|~|Not Used|~|Not Used|~|Not Used
94|Not Used|~|Not Used|~|Not Used|~|Not Used
95|Not Used|~|Not Used|~|Not Used|~|Not Used
96|Not Used|~|Not Used|~|Not Used|~|Not Used
97|Not Used|~|Not Used|~|BGM Volume|❌|Not Supported
98|Not Used|~|Not Used|~|KeySound Volume|❌|Not Supported
99|Not Used|~|Not Used|~|TEXT String|❌|Not Supported
9A|Not Used|~|Not Used|~|Not Used|~|Not Used
9B|Not Used|~|Not Used|~|Not Used|~|Not Used
9C|Not Used|~|Not Used|~|Not Used|~|Not Used
9D|Not Used|~|Not Used|~|Not Used|~|Not Used
9E|Not Used|~|Not Used|~|Not Used|~|Not Used
9F|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
A0|Not Used|~|Not Used|~|Not Used|~|Not Used
A1|Not Used|~|Not Used|~|Not Used|~|Not Used
A2|Not Used|~|Not Used|~|Not Used|~|Not Used
A3|Not Used|~|Not Used|~|Not Used|~|Not Used
A4|Not Used|~|Not Used|~|Not Used|~|Not Used
A5|Not Used|~|Not Used|~|Not Used|~|Not Used
A6|Change Option|❌|Change Option|❌|Change Option|❌|This was the mod system for BMS and PMS.
A7|Not Used|~|Not Used|~|Not Used|~|Not Used
A8|Not Used|~|Not Used|~|Not Used|~|Not Used
A9|Not Used|~|Not Used|~|Not Used|~|Not Used
AA|Not Used|~|Not Used|~|Not Used|~|Not Used
AB|Not Used|~|Not Used|~|Not Used|~|Not Used
AC|Not Used|~|Not Used|~|Not Used|~|Not Used
AD|Not Used|~|Not Used|~|Not Used|~|Not Used
AE|Not Used|~|Not Used|~|Not Used|~|Not Used
AF|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
B0|Not Used|~|Not Used|~|Not Used|~|Not Used
B1|Not Used|~|Not Used|~|Not Used|~|Not Used
B2|Not Used|~|Not Used|~|Not Used|~|Not Used
B3|Not Used|~|Not Used|~|Not Used|~|Not Used
B4|Not Used|~|Not Used|~|Not Used|~|Not Used
B5|Not Used|~|Not Used|~|Not Used|~|Not Used
B6|Not Used|~|Not Used|~|Not Used|~|Not Used
B7|Not Used|~|Not Used|~|Not Used|~|Not Used
B8|Not Used|~|Not Used|~|Not Used|~|Not Used
B9|Not Used|~|Not Used|~|Not Used|~|Not Used
BA|Not Used|~|Not Used|~|Not Used|~|Not Used
BB|Not Used|~|Not Used|~|Not Used|~|Not Used
BC|Not Used|~|Not Used|~|Not Used|~|Not Used
BD|Not Used|~|Not Used|~|Not Used|~|Not Used
BE|Not Used|~|Not Used|~|Not Used|~|Not Used
BF|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
C0|Not Used|~|Not Used|~|Not Used|~|Not Used
C1|Not Used|~|Not Used|~|Not Used|~|Not Used
C2|Not Used|~|Not Used|~|Not Used|~|Not Used
C3|Not Used|~|Not Used|~|Not Used|~|Not Used
C4|Not Used|~|Not Used|~|Not Used|~|Not Used
C5|Not Used|~|Not Used|~|Not Used|~|Not Used
C6|Not Used|~|Not Used|~|Not Used|~|Not Used
C7|Not Used|~|Not Used|~|Not Used|~|Not Used
C8|Not Used|~|Not Used|~|Not Used|~|Not Used
C9|Not Used|~|Not Used|~|Not Used|~|Not Used
CA|Not Used|~|Not Used|~|Not Used|~|Not Used
CB|Not Used|~|Not Used|~|Not Used|~|Not Used
CC|Not Used|~|Not Used|~|Not Used|~|Not Used
CD|Not Used|~|Not Used|~|Not Used|~|Not Used
CE|Not Used|~|Not Used|~|Not Used|~|Not Used
CF|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
D0|Not Used|~|Not Used|~|Not Used|~|Not Used
D1|P1 Key 1 LandMine|📝?|P1 Key 1 LandMine|📝?|P1 Left White LandMine|📝?|Not Used
D2|P1 Key 2 LandMine|📝?|P1 Key 2 LandMine|📝?|P1 Left Yellow LandMine|📝?|Not Used
D3|P1 Key 3 LandMine|📝?|P1 Key 3 LandMine|📝?|P1 Left Green LandMine|📝?|Not Used
D4|P1 Key 4 LandMine|📝?|P1 Key 4 LandMine|📝?|P1 Left Blue LandMine|📝?|Not Used
D5|P1 Key 5 LandMine|📝?|P1 Key 5 LandMine|📝?|P1 Red LandMine|📝?|Not Used
D6|P1 Turn/Scratch LandMine|📝?|P1 Turn/Scratch LandMine|📝?|Not Used|~|Not Used
D7|P1 FootPedal LandMine|📝?|P1 FootPedal LandMine|📝?|Not Used|~|Not Used
D8|P1 Key 6 LandMine|📝?|P1 Key 6 LandMine|📝?|Not Used|~|Not Used
D9|P1 Key 7 LandMine|📝?|P1 Key 7 LandMine|📝?|Not Used|~|Not Used
DA|Not Used|~|Not Used|~|Not Used|~|Not Used
DB|Not Used|~|Not Used|~|Not Used|~|Not Used
DC|Not Used|~|Not Used|~|Not Used|~|Not Used
DD|Not Used|~|Not Used|~|Not Used|~|Not Used
DE|Not Used|~|Not Used|~|Not Used|~|Not Used
DF|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
E0|Not Used|~|Not Used|~|Not Used|~|Not Used
E1|P2 Key 1 LandMine|📝?|P2 Key 1 LandMine|📝?|Not Used|~|Not Used
E2|P2 Key 2 LandMine|📝?|P2 Key 2 LandMine|📝?|P1 Right Blue LandMine|📝?|Not Used
E3|P2 Key 3 LandMine|📝?|P2 Key 3 LandMine|📝?|P1 Right Green LandMine|📝?|Not Used
E4|P2 Key 4 LandMine|📝?|P2 Key 4 LandMine|📝?|P1 Right Yellow LandMine|📝?|Not Used
E5|P2 Key 5 LandMine|📝?|P2 Key 5 LandMine|📝?|P1 Right White LandMine|📝?|Not Used
E6|P2 Turn/Scratch LandMine|📝?|P2 Turn/Scratch LandMine|📝?|Not Used|~|Not Used
E7|P2 FootPedal LandMine|📝?|P2 FootPedal LandMine|📝?|Not Used|~|Not Used
E8|P2 Key 6 LandMine|📝?|P2 Key 6 LandMine|📝?|Not Used|~|Not Used
E9|P2 Key 7 LandMine|📝?|P2 Key 7 LandMine|📝?|Not Used|~|Not Used
EA|Not Used|~|Not Used|~|Not Used|~|Not Used
EB|Not Used|~|Not Used|~|Not Used|~|Not Used
EC|Not Used|~|Not Used|~|Not Used|~|Not Used
ED|Not Used|~|Not Used|~|Not Used|~|Not Used
EE|Not Used|~|Not Used|~|Not Used|~|Not Used
EF|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
F0|Not Used|~|Not Used|~|Not Used|~|Not Used
F1|Not Used|~|Not Used|~|Not Used|~|Not Used
F2|Not Used|~|Not Used|~|Not Used|~|Not Used
F3|Not Used|~|Not Used|~|Not Used|~|Not Used
F4|Not Used|~|Not Used|~|Not Used|~|Not Used
F5|Not Used|~|Not Used|~|Not Used|~|Not Used
F6|Not Used|~|Not Used|~|Not Used|~|Not Used
F7|Not Used|~|Not Used|~|Not Used|~|Not Used
F8|Not Used|~|Not Used|~|Not Used|~|Not Used
F9|Not Used|~|Not Used|~|Not Used|~|Not Used
FA|Not Used|~|Not Used|~|Not Used|~|Not Used
FB|Not Used|~|Not Used|~|Not Used|~|Not Used
FC|Not Used|~|Not Used|~|Not Used|~|Not Used
FD|Not Used|~|Not Used|~|Not Used|~|Not Used
FE|Not Used|~|Not Used|~|Not Used|~|Not Used
FF|Not Used|~|Not Used|~|Not Used|~|Not Used


---

_Written and Maintained with ♡ by Squirrel, with thanks to the feeling-po-mu, BMS command memo, and Japanese BMS/PMS community_
