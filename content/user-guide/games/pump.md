---
title: "Game Module: pump"
description: Details about the `pump` mode supported by Project OutFox.
weight: 2
---


<!--
insert picture of gameplay 
-->

## About

## History:

This mode was added from very early on in the 3.0 development cycle. Since then, it has benefitted from having several different tweaks and fixes done throughout the years. In the SSC era of development, pump was actually set as the default (main) game mode for a while, but it has since moved to the second on the game select option. There have been several forks and adaptations of this mode since the sm-ssc 1.2 version into targeted game versions with this mode being the only one available. 

In Project OutFox, it was decided to add _another_ game mode based on the simulation of this game, due to the differences between the era this mode is based on, and how a lot of the newer community play the game. When this mode is added, it will be listed here as ``piu``.

## Introduced:
### 5 Panel (UpLeft/UpRight/Centre/DownLeft/DownRight):

First Seen:
 * StepMania v3.0 "compatibility test" - ``(single)`` (27 May 2002)
 * StepMania v3.0 "compatibility test" - ``(pump-versus)`` (27 May 2002)
 * StepMania v3.0 "compatibility test" - ``(pump-double)`` (28 May 2002)
 * StepMania v3.0 beta 6 - ``(pump-couple)`` (23 August 2002)
 * StepMania v4.0 alpha 5 - ``(routine)`` (25 January 2010)

Replaced by:
 * StepMania v3.0 "compatibility test" - ``(pump-single)`` (14 June 2002)

Replaced by:
 * StepMania v3.0 beta 6 - ``(Pump Single)`` (6 September 2002) 
 * StepMania v3.0 beta 6 - ``(Pump Versus)`` (6 September 2002) 
 * StepMania v3.0 beta 6 - ``(Pump Double)`` (6 September 2002) 
 * StepMania v3.0 beta 6 - ``(Pump Couple)`` (6 September 2002)

Replaced by:
 * StepMania v3.0 beta 6 - ``(single)`` (15 September 2002)
 * StepMania v3.0 beta 6 - ``(versus)`` (15 September 2002)
 * StepMania v3.0 beta 6 - ``(double)`` (15 September 2002)
 * StepMania v3.0 beta 6 - ``(couple)`` (15 September 2002)
 * StepMania v3.0 beta 6 - ``(couple (edit only))`` (15 September 2002)


### 6 Panel (UpLeft/UpRight/Centre/DownLeft/DownRight/Centre (2 Pads)):
First Seen:
 * StepMania v3.0.2 - ``(halfdouble)`` (22 May 2003)

This mode is _parser specific_. It will only load and parse items designed for `pump` including SF2 charts.

There is a special version number of the ssc format that other forks used which is set to 0.81. _Project OutFox_ parses these special charts along a different code path than to `dance` charts, so that the extra effects/quirks from this era can be contained. If you have a chart which does not seem to function, always check the ```#VERSION``` value and see if it needs to be changed.

The parser support for the 0.81 version branch is being actively developed to add support for the extra note types and effects, with a view of making the system for charting/designing the charts in the future more simpler and easier to use.

The table below lists the supported files and their types that ``pump`` supports, their key/button value and the original mode the parser is used for (if any). 

File Type|Label|Original Mode|Key Values Supported|Notes 
------------|-------------|-------------|-------------|-------------|
 ``.ssc`` | PIU | ``pump`` | 5k / 10k | 6k half doubles, 5k, 5k doubles pump (v0.81) charts
 ``.ksf`` | KSF | ``pump`` | 5k / 10k | 5k and 5k doubles pump charts

## Gameplay

## Play Styles

## Grading / Accuracy

## Scoring

## Health Bar

## Modding

## Charting

## Controls

## Trivia
