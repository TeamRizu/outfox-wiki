---
title: "Game Module: karaoke"
description: Details about the `karaoke` game module supported by Project OutFox.
weight: 2
---


<!--
insert picture of gameplay 
-->

## This mode will be added in a future release of alpha 5 of _Project OutFox_.

# About

## History:

There was a lot of code produced by Chris Danford for this mode back in 2008, that went seemingly completely unused until it's removal 2 years later. _OutFox_ will use more modern techniques that what was written at the time, and we will restore the vision of the engine having a karaoke mode once again.

The parser support for the mode (_txt_) is currently in development as it requires a new parser system to be written from scratch. _.xml_ files may be supported in the future depending on community demand.

_OutFox_ has no plans to support the legacy ``#RELATIVE:YES`` files that were written in the late 2000s, as these seem to be not used anymore by the wider community.

This mode is not selectable in the game select screen at the moment as it is not on any public builds.

### Introduced:

#### Song Grid MIDI note style:
First Seen:
 * StepMania v4.0 CVS - ``(karaoke)`` (12 Mar 2008) (Non-Functional)

**Removed**
 * sm-ssc v1.0 RC2 - ``(karaoke)`` (20 August 2010) 

#### 1 Song Grid:

First Seen:
 * Project OutFox alpha 5.0.0 - ``(karaoke)`` TBC



## Supported Parser Types:
This mode is _parser specific_. It will only load and parse items designed for the `UltraStar TXT` format(_txt_).

The table below lists the supported files and their types that ``karaoke`` supports, their key/button value and the original mode the parser is used for (if any). We can look at other formats in time.

File Type|Label|Original Mode|Key Values Supported|Notes 
------------|-------------|-------------|-------------|-------------|
 ``.txt`` | TXT | ``karaoke`` | 1 grid / duet grid | Solo / Duet Charts

## Game play

This mode is played default in a left to right side scroll, where a singer needs to sing at the designated pitch to mark the 'word segments' complete and score points. Depending on demand, the mode will auto adjust the octave the singer's range is within, in case of songs with high or low notes. Ping _Squirrel_ about this if you want it added to the game!

### Mechanics

``lyric snippets`` 

The notes in this mode are based off of small syllables of words that make up the lyrics of the song. Depending on the sung notes, the 'completion' of the syllable will be good or bad depending on pitch achieved and length of the syllable.

``pitch detection``

The system that simulators use is to measure the sung sound based on pitch, rather than the direct words. This allows for folks that do not fully know a song to hum the chorus or that troublesome second verse that is always forgotten!

``golden notes``

These 'notes' are sung to gain points and bonuses through the song as it's played.

## Play Styles

## Grading / Accuracy

## Scoring

## Health Bar

There is no main functioning life bar in the basic karaoke mode. Other systems later on will use one, but that's in the future.

## Modding

## Charting

## Controls

This mode uses a microphone.

## Trivia

_Written and Maintained with ♡ by Squirrel_