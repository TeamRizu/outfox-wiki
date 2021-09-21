---
title: Supported Mode Types
description: Details on game types supported by Project OutFox.
weight: 2
---

Project OutFox supports a variety of game **modes**, which can simulate different types of rhythm games (including button layouts and, where applicable, gameplay behaviours specific to the game type). Game types are further divided into **styles**, which defines chart types (such as the number of columns used, single or double, vs, number of players etc.)

This page will give a little more detail and history about the modes that we support, and new additions and tweaks added to _Project OutFox_ that you may have not noticed. Click on a button below for mode specific information in more detail, and to learn a bit about how the mode has evolved.

![Screenshot of the Project OutFox game selection screen.](/selectmode.png)

As of OutFox-alpha-4.10.0, they include:

### Dance Pad Based Modes:

* **dance** - The default game type. Similar to games such as _Dance Dance Revolution_ and _In the Groove_, it uses four lanes in the cardinal directions (left, down, up, right). It also contains a 6-lane style (solo) adding up-left and up-right directions, and a 3-lane style using only up-left, down, and up-right.
* **pump** - A five-lane dance game, which uses four diagional directions and the center rather than cardinal directions. In terms of functionality and behavior it is in line with  _Pro_/StepMania 4 CVS.
* **techno** - A dance game type designed for pads with nine panels, including 4-lane (similar to dance), 5-lane (similar to pump), 8-lane (using all but the center panel), and 9-lane styles in single and double versions.
* **ds3ddx** - A dance game whose format is common among Chinese arcade dance games, which uses four diagional foot panels, and four hand sensors around the pad in the cardinal directions.
* **kickbox** - Obscure lash-a-soft dance pad-to-a-punching-bag mode (four, six, and eight-sensor modes).

### Sensor Based Modes:

* **para** - A dance game designed for _para para_ routines, which is typically played with five infrared hand sensors in a semicircular layout, and uses a considerably looser scoring system. It is modelled upon the mechanics of the defunct arcade dance game _Para Para Paradise_.
* **ez2** - A game type based on the defunct arcade dance game _EZ2Dancer_, which uses three foot panels and a pair of hand sensors.
* **maniax** - A game type based on the defunct arcade dance game _Dance Maniax_, which uses four hand sensors arranged into two columns (upper and lower).

### Controller Based Modes:

* **bms** - Formally _beat_ Supports 5-key and 7-key styles, and the ability to load BMS files. Full BME/BML support is coming soon.
* **pomu** - Formally _popn_ A PMS player mode, supporting 3, 4, 5, 7, and 9-button styles, and the ability to load PMS files.
* **kb7** - A seven-lane game type designed primarily for keyboard play, with two sets of three keys flanking a centre column (usually mapped by default to the SDF, JKL, and space keys). This is a StepMania-specific game type that does not emulate any specific game.
* **gddm** - A drum mode supporting six-part (five drums and one pedal), nine-part (seven drums, bass pedal, hi-hat pedal), and 10-part ("Real") styles, modelled upon the mechanics of the arcade rhythm game _Drummania_). We support the DTX file format, which is used with simulators for the game such as DTXMania.
* **gdgf** (formerly **guitar** prior to OutFox-alpha-4.9.8) - A guitar mode supporting three-fret and five-fret styles, modelled upon the mechanics of the arcade rhythm game _GuitarFreaks_.
* **gh** - A five-fret guitar mode modelled upon the mechanics of once-popular console games originating from North America.
* **taiko** - A "don da don" styled mode. Support for .TJA files will added in the future.


## These pages below are a work in progress! Please be patient while we work on updating them! - Squirrel

{{< columns >}}

## Project OutFox Dance Pad Modes
{{< button size="medium" relref="user-guide/games/dance"    >}}dance{{< /button >}}
{{< button size="medium" relref="user-guide/games/pump"     >}}pump{{< /button >}}
{{< button size="medium" relref="user-guide/games/techno"   >}}techno{{< /button >}}
{{< button size="medium" relref="user-guide/games/ds3ddx"   >}}ds3ddx{{< /button >}}
{{< button size="medium" relref="user-guide/games/kickbox"  >}}kickbox{{< /button >}}
<--->

## Project OutFox Sensor Based Modes

{{< button size="medium" relref="user-guide/games/para" 	>}}para{{< /button >}}
{{< button size="medium" relref="user-guide/games/ez2d" 	>}}ez2d{{< /button >}}
{{< button size="medium" relref="user-guide/games/maniax" 	>}}maniax{{< /button >}}
<--->

## Project OutFox Controller Based Modes

{{< button size="medium" relref="user-guide/games/beat"		>}}beat{{< /button >}}
{{< button size="medium" relref="user-guide/games/pomu" 	>}}pomu{{< /button >}}
{{< button size="medium" relref="user-guide/games/kb7" 		>}}kb7{{< /button >}}
{{< button size="medium" relref="user-guide/games/gdgf" 	>}}gdgf{{< /button >}}
{{< button size="medium" relref="user-guide/games/gh"	 	>}}gh{{< /button >}}
{{< button size="medium" relref="user-guide/games/gddm" 	>}}gddm{{< /button >}}
{{< button size="medium" relref="user-guide/games/taiko" 	>}}taiko{{< /button >}}

{{< /columns >}}


## Future game types

These are proposed and are scheduled on the roadmap. Limitations or code problems may delay or change these modes, so there is no date or ETA given.

* **drum** - A MIDI-based drum mode with 20 parts simulating a full Yamaha DTX drum kit.
* **karaoke** -  A _(...do i need to explain this?)_ singing mode. Will happen if Squirrel gets off his butt.
* **jam** - A mode properly supporting _o2Jam_ and its modes, with full .OJM loader support.
* **piu** - A major refactoring to make it more accurate to the mainline series.
* **ppr** - An obscure 'Plug in!' TV based cartridge marble game from 2001.
* **djh** - A Hero isn't always needed, neither are the DJs
* **d86** - Feet dance Station Radio 3 panel


_Written and Maintained with ♡ by Squirrel_