---
title: "Game Module: ds3ddx"
description: Details about the `ds3ddx` mode supported by Project OutFox.
weight: 2
---

![3ddx single game-play, default theme](/user-guide/3dds1gameplayold.png)
###### 3ddx single game-play, default legacy theme

![3ddx double game-play, default theme](/user-guide/3dds2gameplayold.png)
###### 3ddx double game-play, default legacy theme

## About

This mode simulates the game play from the Korean game _Dance Station 3DDX_ which was released in the summer of 2000. The machine was designed with 2 dance pads in front of the cabinet which contained 4 depressible areas in the corners, alongside infra-red sensors which the player would need to wave hands over to count as a 'hit' in the up down left right areas of the pad. This meant that the game contained 8 hit options. Unlike other dance games of the time, this cabinet did not have a bar to allow more 'freestyle' dancing.

The game was only released in the arcade, and was revived by the Chinese company EZ2Dancer in 2004 for the Asian markets, renaming the game to _Dance Master Super Station Arcade 3DDX_ and once again re-releasing it with a new interface and user experience under the title _Ez5 Dancer_. 

There are 5 releases based on forks of 3DDX in China, _3DDX-DSS_, _3DDX-DSS2_ (also known as _Super China_), _3DDX-DSS3_, _3DDX-DSS4_ and _3DDX-DSS5_, The last release for this series was 2011, and cabinets are still for sale.

In 2014, a new revision was released in China called _Dance Master Super Station_ (also known as _E5 Online_). This game added a 5th panel, making it more like a _Pump it Up_ clone with the cardinal sensors. This game is still massively popular in the Chinese dancing communities and with the sheer number of cabinets made, some say it is the most popular game being played in China at this time. The game uses a mostly Chinese audience focussed music collection, with several being 'borrowed' from o2jam, k-pop and other rhythm games.

_Dance Master Super Station_ has a very wide selection of chart types, targeting the complete range of player levels, with the harder options almost having no hand sensor options, as they tend to mess up the flow of the chart. Many of the charts are brought in from other games, and some do not include any hands at all, following more the _Pump_ style of play.


### Introduced:
#### 4 Panel 4 Sensor:

First Seen:
 * StepMania v3.0 final - ``(single)`` (28th December 2002)
 * Project OutFox alpha 4.13.0 - ``(double)`` (31 January 2022)
 * Project OutFox alpha 4.13.0 - ``(versus)`` (31 January 2022)

#### 5 Panel 4 Sensor:

First Seen:
 * Project OutFox alpha 4.15.0 - ``(single)`` (12th June 2022)
 * Project OutFox alpha 4.15.0 - ``(double)`` (12th June 2022)
 * Project OutFox alpha 4.15.0 - ``(versus)`` (12th June 2022)

This mode is _parser specific_. It will only load and parse items designed for `ds3ddx` including `pump`. It will also autogenerate charts based on the ``pump`` game mode automatically, though the extended features are not available yet.

The table below lists the supported files and their types that ``ds3ddx`` supports, their key/button value and the original mode the parser is used for (if any).

File Type|Label|Original Mode|Key Values Supported|Notes 
------------|-------------|-------------|-------------|-------------|
 ``.ssc`` | SSC | ``ds3ddx`` | 4k / 8k | 4k and 4k doubles ds3ddx charts
 ``.ssc`` | SSC | ``dance`` | 4k / 8k | 4k and 4k doubles dance charts
 ``.ssc`` | PIU | ``pump`` | 5k / 10k | 5k and 5k doubles pump (v0.81) charts

## Gameplay

The game is played in a total of 8 directions, with 4 being for the legs, (the oblique corner areas on the pad) and 4 sensors for the hands (the cardinal directions). There were two types of cabinet produced, some with sensors in the pad area itself, and the other with sensors above the player akin to _Para Para Paradise_. 

The game was designed to allow a lot of freestyle movement and provided the opportunity for a good workout while playing. The game screen featured a wider than normal note field with arrows and sensors moving up to receptors. The colours of the oblique arrows mirrors that of _Pump it Up_ using red for the top arrows and blue for the bottom arrows, with the sensor based hand arrows are yellow for up and down (again following the _Pump_ style), with left and right being green. The centre panel on a lot of the earlier cabinets was inactive, and just used for a place for the player to place their feet. 

_E5 Online_ added the yellow centre button which sits under the up and down hand receptors in the note field. This is one of the reasons a lot of the harder charts do not use those hands, as sometimes it has harder to see in a stream of notes. Many of the charts used in early PIU games were commonly used on this game, and the mechanics of later _pump_ games were 'borrowed' for the 5 panel mode. Support for this will be added in a later _Project OutFox_ release.

### Mechanics

``pump holds`` 

There is a special system for how pump holds are judged, which is different to ``dance`` or ``smx``. These holds can be picked up and regained on a loss.

``tick holds`` 

These hold types are active on this mode, completely holding a long note will increase combo per tick.

``free-style`` 

A lot of the charts made for this mode do not make use of the sensors, or encourage full body movement to complement a workout style way of playing the game. This is extremely popular in Chinese Arcades.

``sensors`` 

This mode uses PIR or photo sensors to measure a movement passing by them or for checking a movement has been met.

## Play Styles

 * Single - This style is played on 4 or 5 panels and 4 sensors for hands. 
  
 * Dual - This style is played on 8 or 10 panels and 8 sensors for hands, across 2 single player areas.

## Grading / Accuracy

The original 3DDX as released borrowed the accuracy rating from _DDR 1st_ using (_Perfect_, _Great_, _Boo_ and _Miss_), with the revived version of the game using the _Pump_ style of accuracy (_Perfect_, _Great_, _Good_ and _Miss_).

The timing windows for this grading system is very similar to the one used in the game _TechnoMotion_. There is very little information on the later games based on the _E5 Online_ system. 

**If you have any information on this system, do reach out to us!**

## Scoring

## Health Bar

## Modding

## Charting

## Controls

## Trivia



_Written and Maintained with ♡ by Squirrel, with thanks to community member MKNK for the detailed information on the Chinese Versions._