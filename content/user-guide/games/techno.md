---
title: "Game Module: techno"
description: Details about the `techno` mode supported by Project OutFox.
weight: 2
---


<!--
insert picture of gameplay 
-->

## About

## History:

This mode was added in the 3.0.2, with the first mode being 8 panel. Like most modes from this period, there were not many theme items or specifics in scoring or timing windows at all. It was rendered almost unplayable due to the rapid code changes of the time, and was fixed in the side fork of 3.9.5 around spring 2004.

In the development of SM 4.0, this mode was broken with the rapid changes brought into the game and was then fixed again by Team SSC in StepMania 5 Preview 4 aroun 2010, restoring doubles and noteskin support. 

I have not added the fixes/tweaks done to this mode in the history that were added to the _OutFox_ codebase; though much was done to include the 9 panel support requested by a lot of the community. 

This mode can happily play most charts for _dance_ and _pump_ modes, as a lot of the chart styles were 'borrowed'. 

### Introduced:

#### 4 Panel (L/U/R/D):
 * StepMania v3.0.2 - ``(single4)`` (25 July 2004) 
 * StepMania v3.0.2 - ``(versus4)`` (25 July 2004) 
 * StepMania v3.0.2 - ``(double4)`` (25 July 2004)

#### 5 Panel (UL/UR/C/DR/DL)
 * StepMania v3.0.2 - ``(single5)`` (25 July 2004)
 * StepMania v3.0.2 - ``(versus5)`` (25 July 2004)
 * StepMania v3.0.2 - ``(double5)`` (25 July 2004) 

#### 8 Panel (L/UL/UR/U/DL/DR/R/D):

First Seen:
 * StepMania v3.0.2 - ``(single8)`` (3 September 2003) 
 * StepMania v3.0.2 - ``(versus8)`` (7 June 2004) 
 * sm-ssc v1.2 - ``(double8)`` (9 January 2011)

Replaced by:
 * StepMania 3.9 CVS "random build" - ``(single8)`` (16 January 2005) Fixed to work once more
 
#### 9 Panel (L/UL/UR/U/Center/DL/DR/R/D):

First Seen:
 * Project OutFox alpha 4.9.7.2 - ``(single9)`` (March 16 2021)
 * Project OutFox alpha 4.9.7.2 - ``(versus9)`` (March 16 2021)
 * Project OutFox alpha 4.9.7.2 - ``(double9)`` (March 16 2021)

## Supported Parser Types:

This mode is _parser agnostic_. It will load 4/5/8/9k charts from a variety of formats.

The table below lists the supported files and their types that ``techno`` supports, their panel/key value and the original mode the parser is used for (if any).

File Type|Label|Original Mode|Key Values Supported|Notes 
------------|-------------|-------------|-------------|-------------|
 ``.bms`` | BMS | ``dance`` | 4k / 6k / 8k | 4k dance / 6k dance / 4k dance doubles in be-mu charts
 ``.dwi`` | DWI | ``dance`` | 4k | legacy _dance with intensity_ charts
 ``.sm/.ssc`` | SM | ``dance`` / ``techno`` | 3k / 4k / 6k / 8k  | 3k dance / 4k dance / 6k dance / 4k dance doubles
 ``.sm/.ssc`` | SM | ``pump`` / ``techno`` | 5k / 10k / 6k  | 5k dance / 10k (5k doubles)) / 6k halfdoubles
 ``.sm/.ssc`` | SM | ``techno`` | 8k / 16k / 9k / 18k  | 8k techno / 16k (8k doubles) / 9k techno / 18k doubles 


## Gameplay

This mode is played in upscroll by default, with arrows moving towards the receptor as per other VSRGs. The mode has a variety of different timing options, and it is a very versatile option for those wishing to experiment with different options or note layouts before moving them to ``dance`` or ``pump`` options later on.

This mode supports mods and gimmicks, and a wide base of chart formats to play.

## Play Styles

## Grading / Accuracy

## Scoring

## Health Bar

## Modding

## Charting

## Controls

## Trivia

When this game mode was added in 2003, it actually supported all 9 buttons available on the pad, Yet no 4/5 or 9 panel mode was created until later in development.

This mode was one of the first working custom modes outside of _dance_ to be supported in the earlier versions of the engine.

This mode has a big following; we know of a lot of players that enjoy it's freedom and versatility.

_Written and Maintained with ♡ by Squirrel_
