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

This mode was re-added in alpha 4.9.9HF of _Project OutFox_. In its' original form, it was a five-column mode with each note type having its' own column. Later, within the same alpha (July 11 2021), it was redone to have the notes be different note types instead of notes in columns, with only one column being needed.

In this mode the parser support for the mode is being actively developed, and the chart support will be aligned with other taiko based simulators to provide parity and coherence for the community. We can parse .osu/.osz (Mode 1 taiko) and .tja files, although some of the scroll and time signature math needs to be concluded. As of alpha 4.15 the parsers are about 60% complete.

This mode is selectable in the game select screen.

It began life on our original base development back in 2018, when the project was codenamed _FoxMania_. 

### Introduced (FoxMania):
#### Drum (LeftOuter, LeftInner, RightInner, RightOuter):

First Seen:
* FoxMania 1c - ``(taitai-single)`` (15 April 2018)
**Lost**

### Introduced (Project OutFox):
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

This game can be played as a 4K layout, or on a drum based controller. There were several home based console drum controllers, as well as proper arcade style ones. 

The drums normally have 4 sections; a outer left, inner left (up until the centre of the drum, down the middle) inner right, and outer right.

The inner notes are often red or orange coloured, with the outer being blue. The smaller orange or blue notes can be hit by one of their respective sides, and the large notes should be hit by both the outer for big blue, or both the inner for big red. Hitting the big notes with 1 side gives half the points.

There are also _drum rolls_ which allow the user to hit the drum to gain score if they hit the yellow 'hold' as much as possible.

There are also notes which need to be hit a certain amount within a set time.

## Trivia

It is the first horizontal scroll game we support in _Project OutFox_.

This mode also introduced the concept of 'count holds'. This is effectively to set how the counted hit notes (balloons) are measured and scored.

This mode introduced the concept of a non-tick/non-beat based roll hold, which needed a lot of new code added to _Outfox_ to implement.

This mode had a prototype back in _FoxMania_ in the early days of the project (Pre Alpha 1).

Due to a massive corruption issue on the gitlab server that hosted our work, we lost several months of development time, and had to restart the project when we were still using the _FoxMania_ codename. The version written back then does not reflect the current implementation, so it has to be considered replaced.

_Written and Maintained with ♡ by Squirrel_