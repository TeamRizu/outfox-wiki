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

As of OutFox-alpha-4.18.1, they include:
---
### Dance / Fitness Pad Based Modes:

* **dance** _(core)_ (3k, 3k double, 4k, 4k double, 6k, 6k double) 
	* Parsers: .bms, .dwi, .sm, .ssc 
	* The default game type. This game type uses four lanes in the cardinal directions (left, down, up, right). It also contains a 6-lane style, adding up-left and up-right directions, and a 3-lane style using only up-left, down, and up-right.

* **pump** _(core)_ (5k, 5k double, 6k (half-double) 
	* Parsers: .ksf, .piu, .sma, .sm, .ssc 
	* A five-lane dance game, which uses four diagonal directions and the center rather than cardinal directions.

* **techno** _(core)_ (4k, 4k double, 5k, 5k double, 8k, 8k double, 9k, 9k double)
	* Parsers: .sm, .ssc
	* A dance game type designed for pads with nine panels, including 4-lane (similar to dance), 5-lane (similar to pump), 8-lane (using all but the center panel), and 9-lane styles in single and double versions.

* **smx** _(core)_ (3k, 3k double, 5k, 5k double)
	* Parsers: .ssc
	* A dance game type designed by _StepRevolution_ using a new unique pad which uses the cardinal directions plus middle (left, down, up, right and centre).

* **stepstage** (6k, 3k)
	* Parsers: .ssc
	* A dance game whose format is familiar to those that played it; it had 6 panels over 2 columns, based on a circular design and was made by _Jaleco_ in 2000.

* **kickbox** (4k, 6k, 8k)
	* Parsers: .sm, .ssc
	* An obscure lash-a-soft dance pad-to-a-punching-bag mode. Designed for a boxing style workout, it was requested by a community member in late 2014.
---
### Sensor / Mixed Sensor Based Modes:

* **ds3ddx** (4k + 4 sensor, 5k + 4 sensor)
	* Parsers: .ssc
	* A dance game whose format is common among Chinese arcade dance games, which uses four diagonal foot panels, and four hand sensors around the pad in the cardinal directions. The extended version which used the centre panel as well as the diagonals was added to the game in the Spring of 2022, simulating _E5Online_ style play.

* **para** (5 sensor, 8 sensor)
	* Parsers: .sm, .ssc
	* A freestyle game designed for para para routines, which is typically played with five infrared hand sensors in a semicircular layout, and uses a considerably looser scoring system. 
	
* **ez2** (3k + 4 sensor) 
	* Parsers: .sm, .ssc 
	* A game type based on the defunct arcade dance game EZ2Dancer, which uses three foot panels and a pair of hand sensors.
	
* **maniax** (4 sensor)
	* Parsers: .sm, .ssc
	* A game type based on the defunct arcade dance game DanceManiax, which uses four hand sensors arranged into two columns (upper and lower).
	
---
### Instrument Based Modes

* **gddm** _(core)_ (6k, 9k, 10k)
	* Parsers: .dtx, .gda, .g2a
	* A drum mode supporting six-part (five drums and one pedal), nine-part (seven drums, bass pedal, hi-hat pedal), and 10-part (“Real”) styles, played with MIDI electronic drum kits.

* **gdgf** _(core)_ (3fret, 5fret, 6fret coming soon)
	* Parsers: .dtx, .gda
	* (formerly **guitar** prior to OutFox-alpha-4.9.8) A fiendishly difficult guitar mode supporting three-fret and five-fret styles, often played with a guitar style controller. a highly requested 6 fret mode is coming soon.

* **gh** _(core)_ (5fret, 6fret coming soon)
	* Parsers: .chart, .mid
	* A five-fret guitar mode simulating the mechanics of once-popular console games originating from North America.

* **rb** _(core)_ (4 drum, 3 drum 2 cymbal (gh mode drums), 4 drum 3 cymbal)
	* Parsers: .chart, .mid
	* A drum mode supporting the various different drum options from games originating from North America. This mode can be played with normal PS3/PS4/XBox drum kits, or with MIDI electronic drum kits.
	
* **taiko** _(core)_ (1 drum - 4 hit points)
	* Parsers: .osu, .osz, .tja 
	* A popular game often played with a single drum controller.

* **bongo** - (2 bongos + clap)
	* Parsers: .osu, .osz, .tja 
	* A 2 hand drum controller styled mode. Uses content designed for _taiko_. This mode is often played with a 2 hand drum controller, or 3 midi drums called toms.

* **kbm** - (2 octave piano, 4 octave piano) _Coming Soon_
	* Parsers: .bmson 
	* A piano style game played using a small portion of a normal piano or keyboard. Best played on MIDI, or a normal piano with an arduino MIDI pickup. Most modern 48 key or 61 key MIDI keyboards work well and are recommended if you wish to use a compact option.

* **karaoke** - (1 pitch grid) _Coming Soon_
	* Parsers: .txt/.xml 
	* A karaoke style mode simulating the likes of _UltraStar_. It allows for the input of singing/rapping into a microphone, and like the other simulators, it uses pitch based detection for scoring. It will read most microphone inputs and can use the official _SingStar_ mics, so keep them around, don't lose that usb dongle!
---

### Controller / Key Based Modes:

* **be-mu** _(core)_ (5k +scratch, 5k +scratch+foot, 5k +scratch double, 7k +scratch, 7k +scratch double)
	* Parsers: .bms, .bml, .bme
	* Formally _beat_. A BMS player mode, supporting 5-key+scratch, 5-key+scratch+foot and 7-key+scratch styles and the ability to load BMS files. Full BME/BML support is almost complete. 5K and 7K charts _without_ scratch are also supported, though will likely play in the 7 lane + scratch layouts.

* **po-mu** _(core)_ (3k, 4k, 5k, 7k, 9k, 9k double)
	* Parsers: .pms, .bme 
	* Formally _popn_. A PMS player mode, supporting 3, 4, 5, 7, and 9-button styles, 2 player mode, and the ability to load PMS/BME po-mu files, with full extended _po-mu_ support. The 4 button mode simulates a short lived arcade game with a different layout 

* **kbx** _(core)_ (1k to 19k)
	* Parsers: .bms, .bml, .bme .chart, .dwi, .dtx, .gda, .ksf, .mc, .mid, .osu, .osz, .pms, .qua, .qp, .sma, .sm, .ssc, .tja
	* A 1 to 19 lane game type designed primarily for keyboard play, being able to play songs from any mode using the smartGen system. This is an OutFox-specific game type that does not simulate any specific game. The legacy _SSC_ era kb7 mode charts are still supported and run in this mode instead.
	
---

## These pages below are a work in progress! Please be patient while we work on updating them! - Squirrel

{{< columns >}}

## Dance / Fitness Pad Based Modes:
{{< button size="medium" relref="user-guide/games/dance"    >}}dance{{< /button >}}
{{< button size="medium" relref="user-guide/games/pump"     >}}pump{{< /button >}}
{{< button size="medium" relref="user-guide/games/techno"   >}}techno{{< /button >}}
{{< button size="medium" relref="user-guide/games/smx"      >}}smx{{< /button >}}
{{< button size="medium" relref="user-guide/games/stepstage">}}stepstage{{< /button >}}
{{< button size="medium" relref="user-guide/games/kickbox"  >}}kickbox{{< /button >}}
<--->

## Sensor / Mixed Sensor Based Modes:
{{< button size="medium" relref="user-guide/games/ds3ddx"   >}}ds3ddx{{< /button >}}
{{< button size="medium" relref="user-guide/games/para" 	>}}para{{< /button >}}
{{< button size="medium" relref="user-guide/games/ez2d" 	>}}ez2d{{< /button >}}
{{< button size="medium" relref="user-guide/games/maniax" 	>}}maniax{{< /button >}}

<--->
## MIDI Instrument / Controller Based Modes:
{{< button size="medium" relref="user-guide/games/gddm" 		>}}gddm{{< /button >}}
{{< button size="medium" relref="user-guide/games/gdgf" 		>}}gdgf{{< /button >}}
{{< button size="medium" relref="user-guide/games/gh"	 			>}}gh{{< /button >}}
{{< button size="medium" relref="user-guide/games/rb"	 			>}}rb{{< /button >}}
{{< button size="medium" relref="user-guide/games/taiko" 		>}}taitai{{< /button >}}
{{< button size="medium" relref="user-guide/games/bongo" 		>}}bongo{{< /button >}}
{{< button size="medium" relref="user-guide/games/kbm" 	    >}}kbm{{< /button >}}
{{< button size="medium" relref="user-guide/games/karaoke" 	>}}karaoke{{< /button >}}

<--->
## Controller / Key Based Modes:
{{< button size="medium" relref="user-guide/games/bemu"		>}}be-mu{{< /button >}}
{{< button size="medium" relref="user-guide/games/pomu" 	>}}po-mu{{< /button >}}
{{< button size="medium" relref="user-guide/games/kbx" 		>}}kbx{{< /button >}}

{{< /columns >}}


## Future game types

These are proposed and are scheduled on the road-map. Limitations or code problems may delay or change these modes, so there is no date or ETA given.

* **jam** - A mode properly supporting _o2Jam_ and its modes, with full .OJM loader support.
* **piu** - A major refactoring to make it more accurate to the mainline series.
* **ppr** - An obscure 'Plug in!' TV based cartridge marble game from 2001.
* **djh** - A Hero isn't always needed, neither are the DJs
* **cdj** - The dj's are crackin'!
* **d86** - Feet dance Station Radio 3 panel

_Written and Maintained with ♡ by Squirrel_