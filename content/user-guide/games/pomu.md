---
title: "Game Module: po-mu"
description: Details about the `po-mu` mode supported by Project OutFox.
weight: 2
---

<!--
insert picture of game-play 
-->
![po-mu-nine game-play, default theme](https://user-images.githubusercontent.com/11047768/115632725-40f41e80-a300-11eb-8d9d-479a82dcb6bf.png)


## About

## History:

This mode was added in version 3.0.2. There was no support for the associated loaders at this time, nor any theme or scoring updates. Po-mu was rendered accidentally broken during the CVS era of development on StepMania 4 (January 2007), where it was not restored until Project OutFox Alpha 4.9.8 (25th April 2021) with a new notesloader and rewritten internal code.

This mode has been around for a very long time, but has not really had any support or been looked at since before 2010. It was side-lined into the `BMS` loader, which actually broke a lot of the needed changes `PMS` actually uses, and as a result most `PMS` files with 7 or 9 lanes, would be added to the game as ``be-mu`` 10 lane or 14 lane charts. It was known there were issues with this mode, but we were not aware it was broken as bad as it was.

Squirrel would like to thank the anonymous japanese player we'll name "竹 (Take)" girl, for reporting this bug, who wanted to play Nitro's `PMS` chart of the song on OutFox, but experienced the issue above, and there were also issues with how the keysounds were being loaded for this song in ``po-mu`` mode and she took the time to give a very detailed report, but deleted her account before we could see her username. I thank you a lot for the report, and if you ever read this, please come and say hi in our discord!

We took the time to investigate it and it was decided to code a new modernised `PMS` loader to the game, which now correctly loads `PMS` songs as they should be. This also removes the oddity and edge crashes when anyone wished to play po-mu mode on OutFox. This song, '竹' (Bamboo) charted by Nitro was used as a testbed to debug and ensure it properly works correctly in the game, so we took time to fix it so it would be recognised as a 9 Button `PMS` file. I'd like to thank Nitro for charting this as we would never have had the report which meant we could fix 13 year old bugs on our `PMS` and `BMS` loaders, and to 竹 girl for taking the time to bring it to our attention so we could fix this properly and have a restored mode. You can find the author of the song at https://twitter.com/NitroX72 - Thanks again Nitro!

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

This mode is played default in down scroll, with the note receptors at the bottom of the screen. There is a selection of different coloured lanes that match a set colour on a large controller. The mode has been extended to support the obscure/rare modes that were charted and these have a slightly different colour layout to the standard 9 key mode. The little notes fall down to be pressed when the item reaches the receptor. This game mode can still play ``po-mu`` charts in BME/BML files, which was a common practice up until around 2014. Play is usually on a dome based button controller, layed out in a 4 top 5 botton button arrangement. 

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

While playable on keyboard, this mode really comes alive when played with a 9 button dome controller. The Arcade style ones can be up to 3 feet / 91cm wide, and provide a really good base for passing the higher level charts. The only mode which can be troublesome is 4 button, as this uses a slghtly different mapping.

Two player ``po-mu`` is a new feature for our simulator, and is still experimental. Let us know if there are any issues if you find any!

## Trivia

When this game mode was added in 2003, it actually supported all 9 buttons available on the controller, Yet no 3/4/5 or 7 button mode was created.

This mode has been 'broken' the longest in the game's _(StepMania's)_ history. Due to the lack of users, no-one reported any bugs until development began on the new BMS loader during the _Project OutFox_ era. An anonymous Japanese player reported a series of bugs and then this mode was properly restored and is now very playable.

``po-mu`` 3 button was broken due to a channel issue as _Squirrel_ misread the Japanese documentation on PMS so they did not play properly. This was fixed in March 2022.

PMS began life as a piano format, and when the project sadly faded away, it was adopted for ``po-mu`` charts around 2004-5. 5 or 7 key charts _need_ to be in their PMS file to not accidentally be parsed by simulators as 5K BMS.

18K ``po-mu`` was a design by a simulator in the early 2010s, and still is in use today. Support for it was heavily requested, so it has been added as of 4.14.0.

The mode has several special background layers that need to have the code finished when the new theme is complete. BGA MISS, BGA Layer 2 and BGA Layer 3 are now in game, but not activated as of 4.15.1. The side effect of these layers is that they can be exposed to the other game modes for special effects too.

_Written and Maintained with ♡ by Squirrel_
