---
title: TJA Compatibility
weight: 1
geekdocCollapseSection: true
---

Project OutFox is working on support on the parser for the TJA (Taikojiro) chart format, which is the standard format used in conjunction with the ``taiko`` game types. The following page contains details on the Taiko parsing options that Project OutFox currently supports. This is a living document - it will be incomplete as Squirrel finds time to update and confirm/clarify items that are missing or unknown.

## TJA Notedata support as of Alpha 4.12.0 - ``NOT YET`` We are still designing the parser!
---
## Headers
---
The mode uses a selection of headers to set up the playfield/notefield, which appear to be based off of the old BMS style loading mechanisms. We'll list the known ones and whether or not Project OutFox supports them.

Unlike it's BMS History, TJA files do not use the ``#`` delimiter to begin a line. In BMS to note the title of a song, it would be ``#TITLE``, and in TJA, it uses just ``TITLE``. Bear this in mind if you are converting from BMS/PMS files that the parsers for other simulators will not expect the ``#`` to be used. We will list them as per what we can find out about the TJA Specification, so do check back regularly, as this information _will_ change from time to time as we get more familiar with this game mode and the format nuances it uses.

Something important to note, There are no spaces after the ``:`` in the headers. If you are using a known editor, this won't be a problem. However if you are converting from BMS/PMS, these will not have a ``:`` at all and this can lead to information being missed in the way the game parses your chart. It will also make your ``.tja`` incompatible with other taikojiro simulators.

---

## ``TITLE``
This header is self explanatory, and it sets the title of the song/chart that will be played. It is very often done in SHIFT-JIS encoding on older files, however on more modern charts, this is using UTF-8 / UTF-8 BOM. 

Example:

```
TITLE:My Favourite Song
```
---
## ``SUBTITLE`` 
This header replaces the ``#ARTIST`` tag that BMS/PMS uses, so remember to use it in this way. It again used to be written in SHIFT-JIS on older files, but please use UTF-8, as this is the standard now.

Subtitles can be hidden on the evaluation screen by adding ``--`` before the title begins. If you wish to show the subtitle on the evaluation screen (the default) you can add ``++``. It is not actually necessary to use this notation on OutFox, but for compatibility with other simulators, it is best to set this to either visible or hide. Be aware, only ``--`` works on other simulations, so if you want to keep compatibility, do not use the other two options (``++SUBTITLE``/``SUBTITLE``).

Example:

```
SUBTITLE:My Favourite Artists
``` 
To hide on evaluation:
```
SUBTITLE:--My Favourite Artists
```
To show on evaluation
```
SUBTITLE:++My Favourite Artists
```
---
## ``BPM``
This header specifies the beginning or 'starting' BPM (Beats Per Minute) of a song. This is the same as the ``#BPM`` used in BMS. It is usually a whole number, but floating point/decimal point is also permitted, though these are not completely in the specification.

Example:

```
BPM:145
```
or
```
BPM:128.35
```
---
## ``OFFSET``
The offset of a song, or where you want the song to begin, is set using seconds. In Taiko mode, this will correspond to the first 'beat bar' you see, then the metronome system will continue from that. If you do not use an editor that allows you to see the waveform, this can be trial and error until it is synched up. You can use negative values, to start before the song starts, or positive values, which is after the song starts. Either of these are supported.

Example
```
OFFSET:-1.785
```
or
```
OFFSET:3.32
```
---
## ``WAVE``
This header sets the file name of the song you wish to play. You do need to bear in mind, this is case sensitive. On Linux and Mac OS specifically, you must ensure that this entry matches the file name on the disc EXACTLY, or you will be greeted with silence when in game. For OutFox, you have the choice of the following supported file formats:

>* ``OGG``     
(Recommended if you wish to make your ``.tja`` compatible with other simulators)
>* ``MP3``
>* ``WAV``
>* ``OPUS``
>* ``FLAC``

This header is similar to the ``#WAVzz`` header used in BMS, except we're only calling the one for this mode. Do ensure your file is encoded to 44.1kHz (44,100) as some older OGG encoders can do weird things to your file. If you're ever unsure, use the program MediaInfo which is a handy little program for mediafile information. Most simulators will not play bad or slightly corrupted files, so this is something to take into consideration when creating your chart, so take a moment to check the file is good.

Example
```
WAVE:Iliketodrum.ogg
```
or
```
WAVE:HitMeinmyFace.flac
```
---
## ``SONGVOL``
This header sets the play volume of the song when screen gameplay starts. It is independent of the game volume, or the volume you set with the F3 option. Use this sparingly! You can make the sound of your chart be bad for players if you set it too quietly for example. It defaults to 100, which is the normal setting for a sound in the game, and in other simulators as well. It is not recommended to use values _over_ 100, as this will cause distortion and clipping in the output, and will potentially sound awful.

Example
```
SONGVOL:100
```
---
## ``SEVOL``
This header sets the play volume of the sound effects used when screen gameplay starts. It is independent of the game volume, or the volume you set with the F3 option. Use this sparingly! You can make the sound of your chart be bad for players if you set it too quietly for example. It defaults to 100, which is the normal setting for a sound in the game, and in other simulators as well. It is not recommended to use values _over_ 100, as this will cause distortion and clipping in the output, and will potentially sound awful.

Example
```
SEVOL:100
```
---
## ``DEMOSTART``
This allows for the preview of the song file set in ``WAVE``. It is set to play when in screen select music, (The music wheel) and will play from the point chosen here. This system mimicks the ``#PREVIEW`` system in BMS, but does not require you to load two files. It simply uses the one song file, and will play from the point selected.

You need to set a time within the file, or this can cause issues with some simulators. If your song file was 93 seconds long, and you set ``DEMOSTART:99``, this can cause undesirable behaviour in other simulators. If the number is invalid in OutFox, it will just play from the beginning, so do set this right!

Example
```
DEMOSTART:22.65
```
---
## ``LEVEL``
The level entry sets the amount of stars that the player will see and this will signify the difficulty of the chart. It is set from a scale of 1 to 10, and will set the difficulty in the game.
Some simulators can also take the ``COURSE`` name to set the difficulty. It is similar to how the ``PLAYLEVEL`` works in BMS. Bear in mind that maximum star ratings aren't the same between difficulties:

>* 1-5 ``kantan`` (``Easy``)
>* 1-7 ``futsuu`` (``Normal``)
>* 1-8 ``muzu`` (``Hard``)
>* 1-10 ``oni``/``ura`` (``Extreme``)

Example
```
LEVEL:4
```
---
## ``COURSE``
This header is somewhat misleading. It is in fact the difficulty of the chart, and it can be set either as a number, or by a name.
>* ``Easy`` or ``0``
>* ``Normal`` or ``1``
>* ``Hard`` or ``2``
>* ``Oni`` or ``3``
>* ``Edit`` or ``4``
>* ``Tower`` or ``5``
>* ``Dan`` or ``6``

Due to the competitive nature of the PC based simulators this normally defaults to ``oni`` or ``3``, so be warned if your chart is easier than this difficulty, and make sure you add the correct name in the course setting. It is named ``Extreme`` so this should give you an idea of the difficulty! ``Edit`` refers to ``Ura Oni``, and doesn't have any impact alone on the genre of the song.

``Ura Oni`` is an alternative to the ``Oni`` charts, which are not necessarily harder, but can include 2 player or gimmicks. Remember OutFox's Mod system is quite varied, and try to keep these out of your files if you wish to make them compatible with other simulators.

``Tower`` is based on the style from the PS2 era of the game. 

This setting is similar to how ``PLAYLEVEL`` works in BMS, but gives a finer set of controls.

Example
```
COURSE:4
```
or
```
COURSE:hard
```
---
## ``GENRE``
This header works very differently to the ``BMS`` equivalent with the same name. In Taiko, you have a choice of 8 different Genres. These will then be 'set' into groups depending on this value. Use UTF-8 when setting these, to ensure full compatibility across the board. 

These names will override any settings in box.def, the configuration file.


Several of the older clients need SHIFT-JIS, but if you are targeting newer simulators (and OutFox!) then the following genre names should be used:

>* ``J-POP``
This is the J-Pop genre, used for mainstream/uplifting tracks.

>* ``アニメ`` 
This is the anime genre, used for anime based songs, opening/closing credit songs, or songs based or remixed from music within an anime. In the western community, this genre also covers western animated cartoons and movies, and the 'western' based animes that are produced by the like of Netflix et al.

>* ``どうよう``
This genre is not used that much in modern versions of the game, as it is the 'nursery rhymes' genre. If you are being true to the historical versions of the game then use this genre, but most now have moved into variety and classical. They tend to be more biased towards the easier side of difficulty, as it was meant to open up the game to a younger audience.

>* ``バラエティ``
This genre is 'variety'. It is the genre where you can put charts that do not really 'fit' in anything else. In most simulators, a lot of the edit charts go into variety. A lot of songs from BMS and Touhou fit in this category.

>* ``ボーカロイド`` or ``VOCALOID``
The vocaloid genre has two possible entries to the genre tag, and you can use either of them. This genre is for music made using the vocaloid based virtual idol singers, including IA, Miku, Luka, Gumi etc.

>* ``クラシック``
This genre is for classical music or remixes of classical tracks. 

>* ``ゲームミュージック``
This genre has all the game music charts. This can be almost anything, as long as it's tied to a game; Boss and title music, to BGM/Ambient music, remixes and even songs from other rhythm games go in here. 

>* ``ナムコオリジナル``
This genre is for the 'Namco Original' based songs and remixes.

>* ``キッズ`` This genre is similar to the nursery rhymes set, with the song charts being set for kids. 

>* ``段位道場の課題曲`` This genre is for Danjo Dojo based charts. These are the task based charts used in some simulators. We are not sure if this setting has been used in custom charting as of yet.

Example
```
GENRE:VOCALOID
```
or
```
Genre:アニメ
```
---
## ``SCOREMODE``
This tag allows the chart maker to set the game version used when it comes to setting and sorting out the final score of the song. There have been 17 Arcade versions of Taiko and this tag can specify the scoring method. Some simulators do not support score methods other than ``1``. However, OutFox will support the full range. On most simulators, the default is ``1``.

>* ``0`` This sets Arcade Version 1 to 7 scoring:
Less than 200 combo: ``SCOREINIT`` or 1000pts per note. When the player then hits 200 combo, it is ``SCOREINIT`` + ``SCOREDIFF``, or 2000pts (1000x2 for double) for the 200+ combo bonus.
So if the player scored 184 combo in a song which had 184 notes: it would be 184x1000.
```
Scoring Formula: SCOREINIT * COMBO (when COMBO < 200) + (SCORINIT + SCOREDIFF * COMBO (when COMBO >200)

Scoring Formula: 1000 * COMBO (when COMBO < 200) + (2000 * COMBO (when COMBO > 200))
```
>* ``1`` This sets Arcade Version 8 to 14 scoring:
With this arcade version, we use the ``SCOREDIFF`` variable. The combo multiplier rises by ``SCOREDIFF`` with each 10 combo until it hits 100, then it doesn't change unless there is a break.
```
Scoring Formula: SCOREINIT + max(0, SCOREDIFF * floor((min(COMBO, 100) - 1) / 10))
```
>* ``2`` This sets the Arcade version to 0, which is similar to how ``1`` works, but with some different combo multipliers. This scoring system is not commonly used, but it's included here for completeness. There are a lot more Japanese charts with this setting. This scoring system refers to the always-online HD cabinet versions between 2011 and 2020 (normally named after colours -- kimidori, murasaki, red, blue, green, etc)
```
Scoring Formula: SCOREINIT + SCOREDIFF * (if combo over 100; 8) (if combo over 50; 4) (if combo over 30; 2) (if combo over 10; 1)
```

>* ``3``This sets the scoring to the newest taiko arcade (nijiiro) mathematically calculates score to mean all-good (dfc, =mfc/AJ/perfect) is equal to at least 1 million with combo no longer being a factor, with much more precision than AC0 (where scores of 1.2 million were possible on note-heavy charts and scores of 800k were possible on less note-heavy charts, all oni). It's comparable to the shin-uchi/true hit mode (other than it not accounting for big notes anymore)
```
Scoring Formula: ((1000000-(time of balloon (sec)*100*16.6 OR hit count of balloon×100)-time of drumroll (sec)*100*16.6)/total note count/10)then unconditional carry to single digit * 10
```

Example
```
SCOREMODE:1
```
---
## ``SCOREINIT``
This tag sets the INITial score for the scoring method. This is commonly set to 610 on Japanese charts, but many other values are seen as well. See ``#SCOREMODE`` above.

Example
```
SCOREINIT:380
```
---
## ``SCOREDIFF``
This tag sets the score DIFFerence for the scoring method. This is commonly set to 140 on Japanese charts, but many other values are seen as well. See ``#SCOREMODE`` above.

Example
```
SCOREDIFF:90
```
---
## ``MAKER``
This tag is used for the name of the chart artist. It is not often seen in the simulators options, but the tag is available for credit. Works as per ``#MAKER`` in BMS.

Example
```
MAKER:Squirrel
```
---

## ``MAKER``
This tag is used for the name of the chart artist. It is not often seen in the simulators options, but the tag is available for credit. Works as per ``#MAKER`` in BMS.


---
## Taiko Note Types

>* ``0`` = No Notes
>* ``1`` = Small Don (Orange Note)
>* ``2`` = Small Kat (Blue Note) 
>* ``3`` = Large Don (Orange Note)
>* ``4`` = Large Kat (Blue Note)
>* ``5`` = Small Drum Roll Start Point (Yellow Roll) - Ends with an ``8``
>* ``6`` = Large Drum Roll Start Point (Yellow Roll) - Ends with an ``8``
>* ``7`` = Where the 'Balloon' (Long) Note Begin - Ends with an ``8``
>* ``8`` = Where the Drum Roll / Balloon Long Notes End
>* ``9`` = Where the 'Kusudama, yam, oimo, or big balloon' (Long) Note Begins - Ends with an ``8``
>* ``A`` = Large Don Partner, Multiplayer, with the hands (This does not work on most sims)
>* ``B`` = Large Kat Partner, Multiplayer, with the hands (This does not work on most sims)
>* ``C`` = Mine or Bomb (OutFox specific)
>* ``D`` = Not Used? (Potential Fuse Roll OutFox Specific)
>* ``E`` = Not Used?
>* ``F`` = Adlib; hidden note that will increase combo if spotted, but won't give bad/miss when not



_Written and Maintained with ♡ by Squirrel, with thanks to Taiko-web, and members of the TJADB and Taiko international community_