---
title: Game types
description: Details on game types supported by Project OutFox.
weight: 2
---

Project OutFox supports a variety of game types, which simulate different types of rhythm games (including button layouts and, where applicable, gameplay behaviours specific to the game type). Game types are further divided into **styles**, which define chart types such as single, double, etc.

![Screenshot of the Project OutFox game selection screen.](/getting-started/select-game-type.png)

As of OutFox-alpha-4.9.8, they include:

* **dance** - The default game type. Similar to games such as _Dance Dance Revolution_ and _In the Groove_, it uses four lanes in the cardinal directions (left, down, up, right). It also contains a 6-lane style (solo) adding up-left and up-right directions, and a 3-lane style using only up-left, down, and up-right.
* **pump** - A five-lane dance game, which uses four diagional directions and the center rather than cardinal directions. In terms of functionality and behavior it is in line with  _Pro_/StepMania 4 CVS.
* **kb7** - A seven-lane game type designed primarily for keyboard play, with two sets of three keys flanking a centre column (usually mapped by default to the SDF, JKL, and space keys). This is a StepMania-specific game type that does not emulate any specific game.
* **ez2** - A game type based on the defunct arcade dance game _EZ2Dancer_, which uses three foot panels and a pair of hand sensors.
* **para** - A dance game designed for _para para_ routines, which is typically played with five infrared hand sensors in a semicircular layout, and uses a considerably looser scoring system. It is modelled upon the mechanics of the defunct arcade dance game _Para Para Paradise_.
* **ds3ddx** - A dance game whose format is common among Chinese arcade dance games, which uses four diagional foot panels, and four hand sensors around the pad in the cardinal directions.
* **beat** - Supports 5-key and 7-key styles, and the ability to load BMS files. Full BME/BML support is coming soon.
* **maniax** - A game type based on the defunct arcade dance game _Dance Maniax_, which uses four hand sensors arranged into two columns (upper and lower).
* **techno** - A dance game type designed for pads with nine panels, including 4-lane (similar to dance), 5-lane (similar to pump), 8-lane (using all but the center panel), and 9-lane styles in single and double versions.
* **popn** - A PMS player mode, supporting 3, 4, 5, 7, and 9-button styles, and the ability to load PMS files.
* **gddm** - A drum mode supporting six-part (five drums and one pedal) and nine-part (seven drums, bass pedal, hi-hat pedal) styles, modelled upon the mechanics of the arcade rhythm game _DrumMania_. 5 and 10-part with full DTX file support coming soon.
* **gdgf** (formerly **guitar** prior to OutFox-alpha-4.9.8) - A guitar mode supporting three-fret and five-fret styles, modelled upon the mechanics of the arcade rhythm game _Guitar Freaks_.
* **gh** - A five-fret guitar mode modelled upon the mechanics of once-popular console games originating from North America.
* **kickbox** - Obscure lash-a-soft dance pad-to-a-punching-bag mode (four, six, and eight-sensor modes).

## Future game types

These are proposed and are scheduled on the roadmap. Limitations or code problems may delay or change these modes, so there is no date or ETA given.

* **drum** - A MIDI-based drum mode with 20 parts simulating a full Yamaha DTX drum kit.
* **karaoke** -  A _(...do i need to explain this?)_ singing mode. Will happen if Squirrel gets off his butt.
* **jam** - A mode properly supporting _o2Jam_ and its modes, with full .OJM loader support.
* **piu** - A major refactoring to make it more accurate to the mainline series.
* **taitai** - A "don da don" styled mode, supporting .TJA files.