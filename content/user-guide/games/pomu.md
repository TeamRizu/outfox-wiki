---
title: "Game Module: po-mu"
description: Details about the `po-mu` mode supported by Project OutFox.
weight: 2
---

<!--
insert picture of game-play 
-->

## About

## History:

This mode was added in version 3.0.2. There was no support for the associated loaders at this time, nor any theme or scoring updates. Po-mu was rendered accidentally broken during the CVS era of development on StepMania 4 (January 2007), where it was not restored until Project OutFox Alpha 4.9.8 (25th April 2021) with a new notesloader and rewritten internal code.

### Introduced:
#### 3 Key (LW/LY/LG):

First Seen:
 * Project OutFox alpha 4.9.8 - ``(popn-three)`` (17 April 2021)
 * Project OutFox alpha 4.9.9HF - ``(popn-three-versus)`` (27 April 2021)
 
#### 4 Key (Red/Blue/Yellow/Green):

First Seen:
 * Project OutFox alpha 4.9.8 - ``(popn-four)`` (17 April 2021)
 * Project OutFox alpha 4.9.9HF - ``(popn-four-versus)`` (27 April 2021)

#### 5 Key (LG/LB/Red/RB/RG):

First Seen:
 * StepMania v3.0.2 - ``(pnm-five)`` (7 October 2003) 
 * Project OutFox alpha 4.9.9HF - ``(popn-five-versus)`` (27 April 2021)

Replaced by:
 * StepMania v3.0 beta 6 - ``(single)`` (15 September 2002)

Replaced by:
 * StepMania v4.0 CVS - ``(popn-five)`` (7 October 2005) 

#### 7 Key (LY/LG/LB/Red/RB/RG/RY):

First Seen:
 * Project OutFox alpha 4.6 RC2 - ``(popn-seven)`` (23 June 2020)
 * Project OutFox alpha 4.9.9HF - ``(popn-seven-versus)`` (27 April 2021)

#### 9 Key (LW/LY/LG/LB/Red/RB/RG/RY/RW):

First Seen:
 * StepMania v3.0.2 - ``(pnm-nine)`` (7 October 2003) 
 * Project OutFox alpha 4.9.9HF - ``(popn-nine-versus)`` (27 April 2021)

Replaced by:
 * StepMania v4.0 CVS - ``(popn-nine)`` (7 October 2005)

### mode renamed to ``po-mu`` (12th December 2021)

#### 18 Key (LW/LY/LG/LB/Red/RB/RG/RY/RW-LW/LY/LG/LB/Red/RB/RG/RY/RW):

First Seen:
 * Project OutFox alpha 4.14.0 - ``(pomu-nine-double)`` (25 March 2022)


## Supported Parser Types:
This mode is _parser specific_. It will only load and parse items designed for the `BeMusic Script`.

The table below lists the supported files and their types that ``po-mu`` supports, their key/button value and the original mode the parser is used for (if any). 18K and full player 2 channel width was added in alpha 4.14.0 so the main support for all chart types is now complete.

File Type|Label|Original Mode|Key Values Supported|Notes 
------------|-------------|-------------|-------------|-------------|
 ``.bme`` | BMS | ``be-mu`` | 5k / 7k / 9k / 18k | po-mu in BMS Extended files
 ``.pms`` | PMS | ``po-mu`` | 3k / 4k / 5k / 7k / 9k / 18k | po-mu charts

## Game play

This mode is played default in down scroll, with the note receptors at the bottom of the screen. There is a selection of different coloured lanes that match a set colour on a large controller. The mode has been extended to support the obscure/rare modes that were charted and these have a slightly different colour layout to the standard 9 key mode. The little notes fall down to be pressed when the item reaches the receptor. This game mode can still play ``po-mu`` charts in BME/BML files, which was a common practice up until around 2014. Play is usually on a dome based button controller, layed out in a 4 top 5 button arrangement. 

``po-mu`` also supports 2 player mode on _Project OutFox_ as this was a missing feature from all simulations from the past and was highly requested by the community. 

### Mechanics
**_key sounded_**

_key sounded_ notes exist in this mode! This means buttons you press will add to the song being played. Similarly there can be percussion and other sound effects added to these. Due to the nature of key sounded charts, they take longer to load and compile than other charts, so do not be suprised if you see a 'loading screen' for po-mu charts!

## Play Styles

## Grading / Accuracy

## Scoring

## Health Bar

The "health bar" in this mode is called a 'gauge'. It is a measure of accuracy as well as your 'life'. Depending on the difficulty you need to achieve a specific percentage to pass a song.

```#TOTAL``` can edit the gauge, and this is a new feature to _Project OutFox_, as our health bar system was inherited by _StepMania_ so needed a rewrite and new code implemented.

## Modding

## Charting

## Controls

## Trivia

When this game mode was added in 2003, it actually supported all 9 buttons available on the controller, Yet no 3/4/5 or 7 button mode was created.

This mode has been 'broken' the longest in the game's _(StepMania's)_ history. Due to the lack of users, no-one reported any bugs until development began on the new BMS loader during the _Project OutFox_ era. An anonymous Japanese player reported a series of bugs and then this mode was properly restored and is now very playable.

``po-mu`` 3 button was broken due to a channel issue as _Squirrel_ misread the Japanese documentation on PMS so they did not play properly. This was fixed in March 2022.

PMS began life as a piano format, and when the project sadly faded away, it was adopted for ``po-mu`` charts around 2004-5. 5 or 7 key charts _need_ to be in their PMS file to not accidentally be parsed by simulators as 5K BMS.

18K ``po-mu`` was a design by a simulator in the early 2010s, and still is in use today. Support for it was heavily requested, so it has been added.



_Written and Maintained with ♡ by Squirrel_
