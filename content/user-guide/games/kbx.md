---
title: "Game Module: kbx"
description: Details about the `kbx` mode supported by Project OutFox.
weight: 2
---

![kb4 game-play, default theme](/user-guide/kb4gameplayold.jpg)
###### kb4 game-play, default legacy theme
---
![kb6 game-play, default theme](/user-guide/kb6gameplayold.jpg)
###### kb6 game-play, default legacy theme
# About

## History:

The mode (``kb7``) was added in StepMania 4 CVS. It was designed to be a keyboard based mode using 7 keys (6 normal keys and the spacebar) and was requested by the community, as an alternative to the dance only focus at the time, with a view of providing keyboard players a better streamlined experience in the engine.

``kb7-small`` was a modded version of the mode, with a much smaller 'space bar' or middle button so the notefield was easier to read. This made it more popular than the standard wide mode, and due to this, it replaced the original ``kb7-single`` as the mode in Project OutFox.

In the final release of 2021, Project OutFox 4.12 replaced the original mode completely with a new rewritten version which allowed players to use a differing number of lanes, ranging from 1 to 15 in total. It also created a newer streamlined version of the system to give a small performance boost to this mode. Community member MDR has contributed some ideas to this mode.

Nicknamed ``Key Button eXtreme`` it has become a quite popular option for those who wish to trail/learn charts or just play in a slightly more efficient sandbox for other modes.

Due to the observations of community members Tarben and Yuki, this mode did not effectively support all of the expanded 'doubles' support of ``be-mu`` 7's (so 16k) and ``techno`` 18k / ``po-mu`` 18k. These charts were not being made available in a suitable playable format for this mode. ``kb16``, ``kb17``, ``kb18`` and ``kb19`` were added in the spring alpha release of alpha 4.14 at the end of March 2022.

_This mode is still being developed, so feedback and suggestion is welcome!_

---
### Introduced:

#### 7 Key:
First Seen:
 * StepMania v4.0 CVS - ``(kb7-single)`` (30 May 2008)
 * StepMania v5.0 alpha 3 - ``(kb7-small)`` (21 November 2012) 

Replaced by:
 * sm-ssc v1.0 beta 3 - ``(single)`` (28 June 2010)

**Removed** 
 * Project OutFox alpha4.6.0 - ``(single)`` (23 June 2020)

Replaced by: (``kb7-small`` -> ``kb7-single``)
 * Project OutFox alpha4.6.0 - ``(single)`` (23 June 2020)

Replaced by: 
 * Project OutFox alpha4.12.0 - ``kb7-single`` (31 December 2021)
---
#### 1 Key:

First Seen:
 * Project OutFox alpha4.12.0 - ``kb1-single`` (31 December 2021)
---
#### 2 Key:

First Seen:
 * Project OutFox alpha4.12.0 - ``kb2-single`` (31 December 2021)
---  
#### 3 Key:
First Seen:
 * Project OutFox alpha4.12.0 - ``kb3-single`` (31 December 2021)
---
#### 4 Key:
First Seen:
 * Project OutFox alpha4.12.0 - ``kb4-single`` (31 December 2021)
---
#### 5 Key:
First Seen:
 * Project OutFox alpha4.12.0 - ``kb5-single`` (31 December 2021)
---
#### 6 Key:
First Seen:
 * Project OutFox alpha4.12.0 - ``kb6-single`` (31 December 2021)
---
#### 8 Key:
First Seen:
 * Project OutFox alpha4.12.0 - ``kb8-single`` (31 December 2021)
---
#### 9 Key:
First Seen:
 * Project OutFox alpha4.12.0 - ``kb9-single`` (31 December 2021)
---
#### 10 Key:
First Seen:
 * Project OutFox alpha4.12.0 - ``kb10-single`` (31 December 2021)
---
#### 11 Key:
First Seen:
 * Project OutFox alpha4.12.0 - ``kb11-single`` (31 December 2021)
---
#### 12 Key:
First Seen:
 * Project OutFox alpha4.12.0 - ``kb12-single`` (31 December 2021)
---
#### 13 Key:
First Seen:
 * Project OutFox alpha4.12.0 - ``kb13-single`` (31 December 2021)
---
#### 14 Key:
First Seen:
 * Project OutFox alpha4.12.0 - ``kb14-single`` (31 December 2021)
---
#### 15 Key:
First Seen:
 * Project OutFox alpha4.12.0 - ``kb15-single`` (31 December 2021)
---
#### 16 Key:
First Seen:
 * Project OutFox alpha4.14.0 - ``kb16-single`` (27 March 2022)
---
#### 17 Key:
First Seen:
 * Project OutFox alpha4.14.0 - ``kb17-single`` (27 March 2022)
---
#### 18 Key:
First Seen:
 * Project OutFox alpha4.14.0 - ``kb18-single`` (27 March 2022)
---
#### 19 Key:
First Seen:
 * Project OutFox alpha4.14.0 - ``kb19-single`` (27 March 2022)
---

## Supported Parser Types:

This mode is _parser agnostic_. It will happily load and parse items for you without hassle. It will do one-to-one parsing however! If you wish to do conversions to a specific key/button amount that will be a feature in a future update. 

The table below lists the supported files and their types that ``kbx`` supports, their key/button value and the original mode the parser is used for (if any).

File Type|Label|Original Mode|Key Values Supported|Notes 
------------|-------------|-------------|-------------|-------------|
 ``.bms/.bme/.bml`` | BMS | ``be-mu`` | 6k / 12k / 8k / 16k | 5k+scratch / 7k+scratch be-mu charts
 ``.chart`` | CHART | ``gh`` | 6k | 5 lane _clone hero_ guitar charts with open notes
 ``.dwi`` | DWI | ``dance`` | 4k | legacy _dance with intensity_ charts
 ``.gda/.g2a/.dtx`` | DTX | ``gddm`` | 6k / 9k / 10k | 6/9/10 piece DTXMania drum charts
 ``.gda/.dtx`` | DTX | ``gdgf`` | 4k / 7k | 3 lane / 5 lane DTXMania guitar charts with wailing notes
 ``.mid`` | MIDI | ``gh`` | 6k | 5 lane _clone hero_ guitar charts with open notes 
 ``.osu/.osz`` | OTO |  ``kbx`` | 3 - 10k | charts created in the game _osu_ for the mode 'mania' - OSZ files are the compressed charts
 ``.osu/.osz`` | OTO |  ``taiko`` | 1k | charts created in the game _osu_ for the mode 'taiko' - OSZ files are the compressed charts
 ``.pms/.bme`` | PMS | ``po-mu`` | 3k / 4k / 5k / 7k / 9k / 18k | po-mu charts
 ``.qua``/``.qp`` | QUA | ``kbx`` | 4k / 7k | charts created in the game _quaver_ - QP files are the compressed charts
 ``.sm/.ssc`` | SM | ``dance`` / ``pump`` / ``para`` / ``techno`` / ``smx`` / ``ds3ddx`` / ``maniax`` / ``ez2``  | 3k / 4k / 5k / 6k / 8k / 9k / 10k / 12k / 16k / 18k | main format of _stepmania_ covering a lot of game types and lanes

This mode needs no _autogen_ to be configured! There is a setting in the preferences that enables or disables the precaching when the game loads.

 ---
## Game play

This mode is played default in down scroll, with the note receptors at the bottom of the screen. The mode has several different noteskins available to it, with some of them reflecting the currently _mapped_ button to the lane you need to press when the note hits the receptor.



### Mechanics

``lift holds`` 

You will need to lift at the end of each long note in time, or you will be judged a miss. You can turn it off in the modifier menu.

``anti-mash`` 

This is enabled to prevent button spam on some of the difficult charts, and the game will judge you as a miss and will break combo.

``tick holds`` 

These hold types are active on this mode, completely holding a long note will increase combo per tick.

``anything loaded`` 

In this mode, as it is able to read almost everything the game supports.

``disabled mods`` 

This setting exists in this mode, as this mode is aimed to be better optimised for better playback. Mod files will play, but without any gimmick or effects. If a file/chart uses any FGCHANGES for movies or backgrounds, they too will sometimes fail to play.

### Key Mapping:

The default mapping for this mode is as follows: Please bear in mind, the button layout still needs work!

```
kb1  = space
kb2  = f j
kb3  = f space j
kb4  = d f j k
kb5  = d f space j k 
kb6  = s d f j k l
kb7  = s d f space j k l
kb8  = a s d f j k l ;
kb9  = a s d space f j k l ;
kb10 = a w s d f j k l p ;
kb11 = a w s d f space j k l p ;
kb12 = a w s d r f j i k l p ;
kb13 = a w s d r f space j i k l p ;
kb14 = a w s e d r f j i k o l p ;
kb15 = a w s e d r f space j i k o l p ;
kb16 = q a w s e d r f j i k o l p ; [
kb17 = q a w s e d r f space j i k o l p ; [
kb18 = caps q a w s e d r f j i k o l p ; [ '
kb19 = caps q a w s e d r f space j i k o l p ; [ '
```
---
## Play Styles
---
## Grading / Accuracy
---
## Scoring
---
## Health Bar
---
## Modding
No Modding is available in this mode.

---
## Charting
---
## Controls
---
## Trivia

The mode initially started life with 6 columns, but this was changed to include the spacebar when the SSC builds began.

Although the name for this mode is ``kbx`` it was decided to not use the SSC era title of ``'keyboard X'`` where X is the number of keys used, because this mode can be played on any device.

There was a completed theme for this mode exclusive to SM4/SSC 1.x made by the SSC team, but it was never released.

_Written and Maintained with ♡ by Squirrel_
