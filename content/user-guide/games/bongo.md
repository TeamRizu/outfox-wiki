---
title: "Game Module: bongo"
description: Details about the `bongo` mode supported by Project OutFox.
weight: 2
---

<!--
insert picture of game-play 
-->
# This mode will be added in alpha 4.18.0/alpha 5.0.0-pre33-ish of _Project OutFox_.
## About

It parses files made for _taitai_ into a dual lane mode to play on a bongo based controller, or bongo based midi controller. One must hit the inside or the outside of the bongo drum when it reaches the receptor. Scoring and timing windows are yet to be decided.

## History:

The parser support for the mode is currently actively developed, and the chart support will be aligned with the taiko simulator based parser support. We can parse .osu/.osz (Mode 1 taiko) and .tja files, although some of the scroll and time signature math needs to be concluded. As of alpha 4.16 the parsers are about 60% complete.

This mode is not selectable in the game select screen at the moment.

### Introduced:
#### Bongo (LeftDrumOuter, LeftDrumInner, RightDrumInner, RightDrumOuter):

First Seen:
 * Project OutFox alpha 4.18.0 - ``(bongo-single)`` (October 2022)
 * Project OutFox alpha 4.18.0 - ``(bongo-versus)`` (October 2022)

This mode is _parser specific_. It will only load and parse items designed for `taitai`.

The table below lists the supported files and their types that ``bongo`` supports, their key/button value and the original mode the parser is used for (if any).

File Type|Label|Original Mode|Key Values Supported|Notes 
------------|-------------|-------------|-------------|-------------|
 ``.osu`` | OTO | ``taitai`` | single | Mode 1 only (60% complete), (Mode 0 support coming soon!)
 ``.tja`` | TJA | ``taitai`` | single | Work in progress, about 60% complete.

## Gameplay

### Mechanics

``drum rolls`` 

You will need to ensure you hit the long note at least once for it to count!

``mines`` 

These notes should be avoided, as they will damage your life gauge

``big notes`` 

Are notes that require you to hit the both edges of the left bongo drum at the same time if it is blue, or both sides of the right bongo if it is red. These notes can be hit with one tap, but you will not get the full bonus. Hitting with one tap will _not_ drop your combo.


## Play Styles

## Grading / Accuracy

## Scoring

## Health Bar

## Modding

## Charting

## Controls

This game can be played as a 4K layout, or on a drum based controller. There were several home based console drum controllers, as well as proper arcade style ones. 

There are also notes which need to be hit a certain amount within a set time.

## Trivia
It is the second horizontal scroll game we support in _Project OutFox_.

_Written and Maintained with ♡ by Squirrel_