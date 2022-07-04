---
title: "Game Module: be-mu"
description: Details about the `be-mu` game module supported by Project OutFox.
weight: 2
---

![be-mu-seven long note game-play, default theme](https://user-images.githubusercontent.com/11047768/135678430-b92b84e3-c24b-40f8-b01a-8adcc8c38fd3.png)

![be-mu-seven mine game-play, default theme](https://user-images.githubusercontent.com/11047768/135678425-9f455953-c8b0-4006-9235-3b0b61e8a62b.png)


<!--
insert picture of gameplay 
-->

# About

## History:

This mode started life as a notes loader for obscure ``dance`` charts created in 1998, with 4 key and 6 key being supported. 4k doubles seemed to appear around 2000, before being replaced completely with MSD/DWI around the same time. The loader has been present for a very long time in the games history, not adding _actual_ BMS support until 2003. There are still a number of charters that prefer keysounded dance charts, and for that reason we keep support for those in the engine to this day.

The _mode_ was added in the 3.0 beta era, starting off life as a simple mode with no keysounds or even using the correct keys. The familiar 7K setup we know and love was added later in 2005.

The mode did not see much use and fell into having a broken notesloader around the summer of 2010, making it not work with older BMS files, or files with BME or BML extensions. Many files were misinterpreted or just did not load at all, and some were even seen as ``po-mu`` songs when they were not. The game also wiped any BMS charts with the same difficulty or 'level', meaning the multichart methods BMS authors used were non-functional. The overdue revamp of the loading system in 2021 and 2022 fixed many of these bugs, allowing this mode to function and flourish once more. As of Alpha 4.14.0 the ``be-mu`` mode parsing support is almost complete, with only #TOTAL and #RANK support left to implement.

### Introduced:
#### 5 Key (LW/LB/CW/RB/RW/Scratch):

First Seen:
 * StepMania v3.0 beta 6 - ``(BM-Single)`` (1 January 2003) 
 * StepMania v3.0.2 - ``(BM-double)`` (28 October 2003)
 * sm-ssc v1.2.5 - ``(beat-versus5)`` (11 May 2011)

Replaced by:
 * StepMania v3.0 beta 6 - ``(single)`` (15 September 2002)

Replaced by:
 * StepMania v3.0.2 - ``(single5)`` (25 September 2004)
 * StepMania v3.0.2 - ``(double5)`` (25 September 2004) 

Replaced by:
 * StepMania v4.0 CVS - ``(beat-single5)`` (7 October 2005)  
 * StepMania v4.0 CVS - ``(beat-double)`` (7 October 2005)

Replaced by:
 * sm-ssc v1.2.5 - - ``(beat-double5)`` (7 October 2005)

#### 7 Key (FLW/LB/LW/CB/RW/RB/FLW/Scratch):

First Seen:
 * StepMania v3.0 beta 6 - ``(BM-Single)`` (1 January 2003) (Non-Functional)
 * StepMania v3.0.2 - ``(BM-double7)`` (28 October 2003)
 * sm-ssc v1.2.5 - ``(beat-versus7)`` (11 May 2011)


Replaced by:
 * StepMania v3.0.2 - ``(BM-single7)`` (28 October 2003)

Replaced by:
 * StepMania v3.0.2 - ``(single7)`` (25 September 2004)
 * StepMania v3.0.2 - ``(double7)`` (25 September 2004)

Replaced by:
 * StepMania v4.0 CVS - ``(beat-single7)`` (7 October 2005)  
 * StepMania v4.0 CVS - ``(beat-double7)`` (7 October 2005)

Replaced by:
 * StepMania v4.0 CVS - ``(beat-single7)`` (7 October 2005)  
 * StepMania v4.0 CVS - ``(beat-double7)`` (7 October 2005)

### mode renamed to ``be-mu`` (12th December 2021)

#### IIDX 5 and 7 Key (FLW/LB/LW/CB/RW/RB/FLW/Scratch):

First Seen:
 * StepMania v3.0.2 - ``(single7)`` (13 February 2004)
 * StepMania v3.0.2 - ``(double7)`` (13 February 2004)
 * StepMania v3.0.2 - ``(single5)`` (13 February 2004)
 * StepMania v3.0.2 - ``(double5)`` (13 February 2004) 
 * StepMania v3.0.2 - ``(single5 (edit))`` (13 February 2004)
 * StepMania v3.0.2 - ``(double5 (edit))`` (13 February 2004) 

**Removed:**
 * StepMania v3.0.2 - ``(single7)`` (25 September 2004)
 * StepMania v3.0.2 - ``(double7)`` (25 September 2004)
 * StepMania v3.0.2 - ``(single5)`` (25 September 2004)
 * StepMania v3.0.2 - ``(double5)`` (25 September 2004) 
 * StepMania v3.0.2 - ``(single5 (edit))`` (25 September 2004)
 * StepMania v3.0.2 - ``(double5 (edit))`` (25 September 2004) 

This mode was merged back into the 'bm' mode due to a duplication of styles. The IIDX side of the simulator was barely used, so it made sense to move towards the BMS specification which was more common at the time.

This mode is _parser specific_. It will only load and parse items designed for the `BeMusic Script`.

The table below lists the supported files and their types that ``be-mu`` supports, their key/button value and the original mode the parser is used for (if any).

File Type|Label|Original Mode|Key Values Supported|Notes 
------------|-------------|-------------|-------------|-------------|
 ``.bms/.bme/.bml`` | BMS | ``be-mu`` | 6k / 12k / 8k / 16k | 5k+scratch / 7k+scratch be-mu charts

## Game play

This mode is played default in down scroll, with the note receptors at the bottom of the screen. There is a 'scratch' lane designed to be a rotary controller, and 5 or 7 buttons which need to be pressed when the item reaches the receptor. This game mode cannot play ``po-mu`` charts any longer as that now is done via a different loader.

### Mechanics

``key sounded`` 

The notes in this mode are based off of small clips of audio that react when you press a key. This means buttons you press will add to the song being played. Similarly there can be percussion and other sound effects added to these. Due to the nature of key sounded charts, they take longer to load and compile than other charts, so do not be suprised if you see a 'loading screen' for be-mu charts!


## Play Styles

## Grading / Accuracy

## Scoring

## Health Bar

The "health bar" in this mode is called a 'gauge'. It is a measure of accuracy as well as your 'life'. Depending on the difficulty you need to achieve a specific percentage to pass a song.

```#TOTAL``` can edit the gauge, and this is a new feature to _Project OutFox_, as our health bar system was inherited by _StepMania_ so needed a rewrite and new code implemented.

## Modding

## Charting

## Controls

The game is played best on a controller. It uses a jog wheel 'scratch' and two rows of keys diagonally aligned (almost like a piano style), with 2 black 3 white for 5k, and 3 black 4 white for 7k.

The player uses a combination of button presses to pass the songs, often using a wrist movement to trigger the 'scratch' support. _OutFox_ supports the arcade style and home console controllers out there, and several players have reported success playing the game on a MIDI DJ controller. Since 4.15.1 with the Up/Down jogwheel support, this mode is even more playable.

The original PSX/PS2 era controllers can be unusually difficult to use, so be mindful if they stick or are a bit stiff, they likely need a good service and clean.

## Trivia

BMS charts originally were used for DDR and SOLO mapping in 1999 for dance style simulations, and had some obscure channel mapping long since lost to the known world - (no-one uses this older methodology anymore). However, the notesloaders can still load the common layouts, when the BMS load was expanded, it was decided to keep this legacy in the code. This functionality was broken for a short time in alpha 4.12 and restored in 4.15 due to Squirrel making an oopsie.

``be-mu`` once incorporated loadng all of the BMS type charts, including PMS, this unfortuanately caused a lot of charts to break and not load correctly in older builds of SM5 so this behaviour was removed.

The old ``kb7`` mode used a custom channel methodology built into BMS in the early SSC builds. This behaviour was also maintained in the rewrite so those old charts work, however the mode style is different in _Project OutFox_ now.

Although the original spec of BMS supported mines, these were not implemented in older builds of SM5. This support has been added in _Project OutFox_.

The BMS format has spawned many derived formats, with many of these slowly being supported in the game. 

_Written and Maintained with ♡ by Squirrel_