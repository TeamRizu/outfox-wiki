---
title: "Game Module: gddm"
description: Details about the `gddm` mode supported by Project OutFox.
weight: 2
---

![gddm-new game-play, default theme](https://user-images.githubusercontent.com/11047768/135682218-0706dc51-438b-4971-85a6-cedc6729cca2.png)

_Early GDDM playback, default legacy theme_

<!--
insert picture of gameplay 
-->

## About

## History:

This mode was added in Project OutFox. It was added to provide users with a 5/9/10 lane drum mode that works on Linux and Mac OS.

When added, players could use the auto-gen system to test it out, and there was noticeable lag on Windows due to the sound drivers. This was resolved in Alpha 4.12, when we rewrote the MIDI input system. This mode mirrors the keysounded options of ``be-mu`` and ``po-mu`` and will take a little time loading your songs due to the nature of mapping and ensuring smooth playback.

This mode is best played on MIDI drums due to the superior lower latency, as well as no input overhead.

This mode is selectable in the game select screen.

### Introduced:

First Seen:
 * OutFox Alpha 4.6.0 - ``"gddm-new"`` (19 Jun 2020) (9 lane style simulating DrumMania play)
 * OutFox Alpha 4.6.0 - ``"gddm-old"`` (19 Jun 2020) (5 lane style simulating BandJam/old Gitadora play)
 * OutFox Alpha 4.9.9HF - ``"gddm-real"`` (July 26 2021) (10 lane style)

## Supported Parser Types:
This mode is _parser specific_. It will only load and parse items designed for the `DTX Mania` series of simulations, which itself is based off of BMS, but is not channel compatible with it.

The table below lists the supported files and their types that ``gddm`` supports, their key/button value and the original mode the parser is used for (if any).

File Type|Label|Original Mode|Key Values Supported|Notes 
------------|-------------|-------------|-------------|-------------|
 ``.gda`` | GDA | ``gddm`` | 5 piece drum | parser based on the 'gda' era up until around 2011
 ``.g2a`` | GDA | ``gddm`` | 5 piece drum | parser based on the 'gda' era up until around 2011
 ``.dtx`` | DTX | ``gddm`` | 5 / 9 / 10 piece drum | parser based on the rewritten 'dtx' era, mostly used for DTXMania


## Gameplay

This mode is played default in down scroll, with the animated notes indicating which piece of the drum set to hit at the moment as it hits the base line at the bottom of the screen. Most columns are drawn to make it easier to read for the player, as well as this mode has 'superseded lanes'. This means that there are two types of notes in one column.

This mode is typically played using a midi enabled electronic drum kit and hit like a normal drum kit.

This mode has default 'fail at song end' as it allows the player to continue to practice as needed to get a better grip of the song being played.

``gddm`` is a single player game, and is usually played in a wide area of space because of the size needed for the drum kit and pedals, swinging range of arms etc.

### Mechanics
**_key sounded_**

_key sounded_ notes exist in this mode! This means drum pieces you hit will add to the song being played. Similarly there can be percussion and other sound effects added to these. Due to the nature of key sounded charts, they take longer to load and compile than other charts, so do not be surprised if you see a 'loading screen' for ``gddm`` charts!

**_fail at end_**

_fail at end_ is set by default, so you can look at accuracy and playback over stopping and restarting continuously if you 'fail' like other modes.


## Play Styles

## Grading / Accuracy

## Scoring

## Health Bar

The concept of a health bar is not used within this mode, the player is scored on accuracy and judgement timings. Combo is included, but not something most players care about.

## Modding

## Charting

## Controls

The easiest way to play this mode is with MIDI enabled electronic drums. The new cross platform MIDI drivers added to _Project OutFox_ made setting this up a breeze, and allowed for better response times and a more stable playing experience.

There is a MIDI guide here on this _wiki_, which explains in detail how to set up controllers better for this mode.

We have had reports that the rb drum kit can be set up to work within the 5 piece version of this mode, however, as it uses a different input system, you may experience latency (a slight delay from when you hit the drum to it being recognised) which could affect your ability to play. You can adjust your offsets for this, however if you can play via MIDI is recommended.

## Trivia

This game mode was added to the engine as a 'why not?' joke between the main developers of _Project OutFox_. When the community noticed it existed then there was a demand for a parser and proper support. It led to the creation of the GDA/DTX parser, and 2 new cross platform MIDI drivers being added to the engine, as well as 2 previously undiscovered sound bugs being fixed.

A _keysound_ in this mode is called a 'chip'. 

This mode needed 'hidden lane' support. That is, two different note lanes occupying the same column. It is a special feature of _OutFox_.

This mode simulates DTXMania, as there is more content for that simulator, and it follows a practice. There are _many_ forks of this project, so we spent some time with the community working out the features to add/discard from OutFox.

The parser for this mode inherits a lot of the functionality of the `BMS` extended set, so OutFox by nature has a wider optional set of features due to this. One can also use `PMS`, or any other of the `BMS` derived parser features. We do not recommend this option if you want to keep your charts compatible with the orginal DTXMania of course!

_Written and Maintained with ♡ by Squirrel, with thanks to the DTXMania community; APPROVED, np\_sub and Furukon._