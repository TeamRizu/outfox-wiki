---
title: Supported Game Modules
description: The different game modules supported by Project OutFox.
weight: 2
---

As part of our commitment to rhythm game preservation (**The Working Museum**), Project OutFox will add a growing number of supported game modules so a new generation can play and enjoy these forgotten gems, and to showcase the creativity and expression our fellow developers employed in the past. 

Project OutFox supports a variety of game _modules_ (**modes**), which can simulate different types of rhythm games (including note field layouts and, where applicable, game-play behaviour specific to the game being simulated). Game types are further divided into _layouts_ (**styles**), which define the specific chart type to be played, such as the number of columns used, single layout or double layout, whether or not vs mode is available, number of players, timing windows, judgments, scoring etc. This project is a _simulator_ we do not take code from official releases or use assets from these games. Support the industry!

This page will give a little more detail and history about the modes that we support, and new additions and tweaks added to _Project OutFox_ that you may have not noticed. Click on a button below for mode specific information in more detail, and to learn a bit about how the mode has evolved.

### **_We are still dedicated to our players from older versions, and this does not mean we are not focussing on working on our core game support!_**

![Screenshot of the Project OutFox game selection screen.](/user-guide/selectmode.png)

As of OutFox-alpha-4.13.0, they include:

### Dance Pad Based Modes:

* **dance** _(core)_ - The default game type that simulates some of the features of early _Dance Dance Revolution_ and _In the Groove_, it uses four lanes in the cardinal directions (left, down, up, right). It also contains a 6-lane style (solo) adding up-left and up-right directions, and a 3-lane style using only up-left, down, and up-right.
* **pump** _(core)_ - A five-lane dance game, which uses four diagonal directions and the center rather than cardinal directions. In terms of functionality and behavior it is in line with  _Pro_/StepMania 4 CVS.
* **techno** _(core)_ - A dance game type designed for pads with nine panels, including 4-lane (similar to dance), 5-lane (similar to pump), 8-lane (using all but the center panel), and 9-lane styles in single and double versions.
* **smx** _(core)_ - A dance game type designed by _StepRevolution_ using a new unique pad which uses the cardinal directions plus middle (left, down, up, right and centre).
* **ds3ddx** - A dance game whose format is common among Chinese arcade dance games, which uses four diagonal foot panels, and four hand sensors around the pad in the cardinal directions.
* **stepstage** - A dance game whose format is familiar to those that played it; it had 6 panels over 2 columns, and was made by _Jaleco_ in 2000.
* **kickbox** - Obscure lash-a-soft dance pad-to-a-punching-bag mode (four, six, and eight-pad modes).
### Sensor Based Modes:

* **para** - A dance game designed for _para para_ routines, which is typically played with five infrared hand sensors in a semicircular layout, and uses a considerably looser scoring system. It is modelled upon the mechanics of the defunct arcade dance game _Para Para Paradise_.
* **ez2** - A game type based on the defunct arcade dance game _EZ2Dancer_, which uses three foot panels and a pair of hand sensors.
* **maniax** - A game type based on the defunct arcade dance game _Dance Maniax_, which uses four hand sensors arranged into two columns (upper and lower).

### Controller Based Modes:

* **be-mu** _(core)_ - Formally _beat_ Supports 5-key + scratch and 7-key + scratch styles , and the ability to load BMS files. Full BME/BML support is almost complete.
* **po-mu** _(core)_ - Formally _popn_ A PMS player mode, supporting 3, 4, 5, 7, 9 and 18-button styles, 2 player mode, and the ability to load PMS/BME po-mu files.
* **kbx** _(core)_ - A 1 to 19 lane game type designed primarily for keyboard play, being able to play songs from any mode using the smartGen system. This is a OutFox-specific game type that does not emulate any specific game.
* **gddm** _(core)_ - A drum mode supporting six-part (five drums and one pedal), nine-part (seven drums, bass pedal, hi-hat pedal), and 10-part ("Real") styles, modelled upon the mechanics of the arcade rhythm game _Drummania_). We support the DTX file format, which is used with simulators for the game such as DTXMania.
* **gdgf** _(core)_ (formerly **guitar** prior to OutFox-alpha-4.9.8) - A guitar mode supporting three-fret and five-fret styles, modelled upon the mechanics of the arcade rhythm game _GuitarFreaks_.
* **gh** _(core)_ - A five-fret guitar mode modelled upon the mechanics of once-popular console games originating from North America.
* **taiko** _(core)_ - A "don da don" styled mode. Support for .TJA files will added in the future.


## These pages below are a work in progress! Please be patient while we work on updating them! - Squirrel

{{< columns >}}

## Dance Pad Modes
{{< button size="medium" relref="user-guide/games/dance"    >}}dance{{< /button >}}
{{< button size="medium" relref="user-guide/games/pump"     >}}pump{{< /button >}}
{{< button size="medium" relref="user-guide/games/techno"   >}}techno{{< /button >}}
{{< button size="medium" relref="user-guide/games/smx"      >}}smx{{< /button >}}
{{< button size="medium" relref="user-guide/games/ds3ddx"   >}}ds3ddx{{< /button >}}
{{< button size="medium" relref="user-guide/games/stepstage">}}stepstage{{< /button >}}
{{< button size="medium" relref="user-guide/games/kickbox"  >}}kickbox{{< /button >}}
<--->

## Sensor Based Modes

{{< button size="medium" relref="user-guide/games/para" 	>}}para{{< /button >}}
{{< button size="medium" relref="user-guide/games/ez2d" 	>}}ez2d{{< /button >}}
{{< button size="medium" relref="user-guide/games/maniax" 	>}}maniax{{< /button >}}
<--->

## Controller Based Modes

{{< button size="medium" relref="user-guide/games/bemu"		>}}be-mu{{< /button >}}
{{< button size="medium" relref="user-guide/games/pomu" 	>}}po-mu{{< /button >}}
{{< button size="medium" relref="user-guide/games/kbx" 		>}}kbx{{< /button >}}
{{< button size="medium" relref="user-guide/games/gdgf" 	>}}gdgf{{< /button >}}
{{< button size="medium" relref="user-guide/games/gh"	 	>}}gh{{< /button >}}
{{< button size="medium" relref="user-guide/games/gddm" 	>}}gddm{{< /button >}}
{{< button size="medium" relref="user-guide/games/taiko" 	>}}taiko{{< /button >}}

{{< /columns >}}


## Future game types

These are proposed and are scheduled on the road-map. Limitations or code problems may delay or change these modes, so there is no date or ETA given.

* **karaoke** -  A _(...do i need to explain this?)_ singing mode. Will happen if Squirrel gets off his butt.
* **jam** - A mode properly supporting _o2Jam_ and its modes, with full .OJM loader support.
* **piu** - A major refactoring to make it more accurate to the mainline series.
* **ppr** - An obscure 'Plug in!' TV based cartridge marble game from 2001.
* **djh** - A Hero isn't always needed, neither are the DJs
* **d86** - Feet dance Station Radio 3 panel

_Written and Maintained with ♡ by Squirrel_