---
title: "Game Module: kbm"
description: Details about the `kbm` game module supported by Project OutFox.
weight: 2
---


<!--
insert picture of gameplay 
-->

## This mode will be added around alpha 4.19.0/alpha 5.0.0-pre45-ish of _Project OutFox_.


# About

This mode parses files made in the _bmson_ format, and usually is arranged into a two octave keyboard layout, sporting 24 keys in a piano style layout. This mode also supports 4 octave mode, or 48 keys. It is _Highly_ recommended that this mode is played on a MIDI controller, or if you can find one, an original _keyboardmania_ _Playstation 2_ controller from the early 2000s

## History:

The parser support for the mode (_bmson_) is currently in development as it requires a new parser system to be initialised and set up for this type of chart.

This mode is not selectable in the game select screen at the moment.

### Introduced:

#### 24 Key 2 Octave:
![kbm24 layout](/user-guide/kbm24.png)

First Seen:
 * Project OutFox alpha 4.18.0 - ``(kbm24-single)`` (November 2022)
 * Project OutFox alpha 4.18.0 - ``(kbm24-versus)`` (November 2022)

#### 48 Key 4 Octave:
![kbm48 layout](/user-guide/kbm48.png)

First Seen:
 * Project OutFox alpha 4.18.0 - ``(kbm48-single)`` (November 2022)



## Supported Parser Types:
This mode is _parser specific_. It will only load and parse items designed for the `BeMusic Script JSON` (_bmson_).

The table below lists the supported files and their types that ``kbm`` supports, their key/button value and the original mode the parser is used for (if any).

File Type|Label|Original Mode|Key Values Supported|Notes 
------------|-------------|-------------|-------------|-------------|
 ``.bmson`` | BMSON | ``kbm`` | 24k / 48k | 2 Octave / 4 Octave kbm charts

## Game play

This mode is played default in down scroll, with the note receptors at the bottom of the screen. The player then hits the piano notes depending on how they fall.

### Mechanics

``key sounded`` 

The notes in this mode are based off of small clips of audio that react when you press a key. This means buttons you press will add to the song being played. Similarly there can be percussion and other sound effects added to these. Due to the nature of key sounded charts, they take longer to load and compile than other charts, so do not be surprised if you see a 'loading screen' for be-mu charts!

## Play Styles

## Grading / Accuracy

## Scoring

## Health Bar

The "health bar" in this mode is called a 'gauge'. It is a measure of accuracy as well as your 'life'. Depending on the difficulty you need to achieve a specific percentage to pass a song.

## Modding

## Charting

## Controls

The game is played best on a MIDI piano or mini-keyboard controller. 

The original PSX/PS2 era controllers can be unusually difficult to use, so be mindful if they stick or are a bit stiff, they likely need a good service and clean.

## Trivia

_bmson_ is based on a rewrite of the BMS format, but with an attempt to make it easier to make/parse for creators.

_Written and Maintained with ♡ by Squirrel_