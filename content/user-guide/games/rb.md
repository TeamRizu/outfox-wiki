---
title: "Game Module: rb"
description: Details about the `rb` mode supported by Project OutFox.
weight: 2
---


<!--
insert picture of gameplay 
-->

## About

## History:

This mode supports the drum layouts added to the console guitar games of the late 2000s. Following support that was added for the guitar modes back in 2004 it was possible that support for drums was a potential option in the future, although looking within the codebase we have been unable to find any evidence the mode was planned.

This mode was heavily requested after full midi notes loader support was added for the ``gh`` mode, and as of writing only midi charts with drums will load in _Outfox_.

It began life on our original base development back in 2018, when the project was codenamed _FoxMania_. 

### Introduced (FoxMania):
#### rbdrums:

First Seen:
* FoxMania 1b - ``(rbdrums-normal)`` (10 April 2018)
* FoxMania 1b - ``(rbdrums-pro)`` (10 April 2018)
**Lost**

### Introduced (Project OutFox):
#### rb:

First Seen:
 * Project OutFox alpha 5.0.0-pre042 - ``(rb-easy)`` (5 August 2023)
 * Project OutFox alpha 5.0.0-pre042 - ``(rb-normal)`` (5 August 2023)
 * Project OutFox alpha 5.0.0-pre042 - ``(rb-pro)`` (5 August 2023)

Those of you that are paying attention will know that there is no `rb-easy` mode normally. This mode is for those that have original kits and the notoriously fragile kick pedal that's broken. It is simply the 4 drum layout with the kicks removed.

#### gh-drums:

First Seen:
 * Project OutFox alpha 5.0.0-pre042 - ``(rb-normal5)`` (10 August 2023)

With there being several different instrument layouts supported within the .midi spec for the simulation, support for gh-drums were added and titled `normal5` on 10th August 2023. 

## Supported Parser Types:
This mode is _parser specific_. It will only load and parse items designed for the `gh` or `rb` series of simulations.

The table below lists the supported files and their types that ``rb`` supports, their key/button value and the original mode the parser is used for (if any).

File Type|Label|Original Mode|Key Values Supported|Notes 
------------|-------------|-------------|-------------|-------------|
 ``.chart`` | CHART | ``gh`` | easy/normal/pro | parser based on the 'gh' era up until around 2014.
 ``.midi`` | MIDI | ``gh`` | easy/normal/normal5/pro |


## Gameplay

## Play Styles

## Grading / Accuracy

## Scoring

## Health Bar

## Modding

## Charting

## Controls

## Trivia

Due to a massive corruption issue on the gitlab server that hosted our work, we lost several months of development time, and had to restart the project when we were still using the _FoxMania_ codename. The version written back then does not reflect the current implementation, so it has to be considered replaced.

_Written and Maintained with ♡ by Squirrel_