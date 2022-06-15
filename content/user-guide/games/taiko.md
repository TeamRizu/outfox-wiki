---
title: "Game Module: taitai"
description: Details about the `taitai` mode supported by Project OutFox.
weight: 2
---

<!--
insert picture of gameplay 
-->

## About

## History:

This mode was added in alpha 4.9.9HF of _Project OutFox_. In its' original form, it was a five-column mode with each note type having its' own column. Later, within the same alpha (July 11 2021), it was redone to have the notes be different note types instead of notes in columns, with only one column being needed.

Right now, this mode can only be played with auto-gen charts, however the parser support for the mode is being actively developed, and the support will be aligned with other taiko based simulators to provide parity and coherence for the community.

This mode is selectable in the game select screen.

### Introduced:
#### Drum (LeftOuter, LeftInner, RightInner, RightOuter):

First Seen:
 * Project OutFox alpha 4.9.9HF - ``(taitai-single)`` (30 May 2021)
 * Project OutFox alpha 4.9.9HF - ``(taitai-versus)`` (30 May 2021)

This mode is _parser specific_. It will only load and parse items designed for `taitai`. 

The table below lists the supported files and their types that ``taitai`` supports, their key/button value and the original mode the parser is used for (if any).

File Type|Label|Original Mode|Key Values Supported|Notes 
------------|-------------|-------------|-------------|-------------|
 ``.osu`` | OTO | ``taitai`` | single | Mode 1 only (60% complete), (Mode 0 support coming soon!)
 ``.tja`` | TJA | ``taitai`` | single | Work in progress, about 60% complete.

## Gameplay

### Mechanics

``drum rolls`` 

You will need to ensure you hit the yellow long note at least once for it to count!

``balloons`` 

This is a new type of 'hold' for _Project OutFox_ that needs to be hit the number of times shown on the screen for it to be _burst_ and you gain a points increase.

``mines`` 

These notes should be avoided, as they will damage your life gauge

``big notes`` 

Are notes that require you to hit the edge of the drum (katsu) on both sides at the same time if it is blue, or either side of the inner drum at the same time if it is red. These notes can be hit with one stick, but you will not get the full bonus. Hitting with one stick will _not_ drop your combo.


## Play Styles

## Grading / Accuracy

## Scoring

## Health Bar

## Modding

## Charting

## Controls

## Trivia

_Written and Maintained with ♡ by Squirrel_