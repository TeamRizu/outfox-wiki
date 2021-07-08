---
title: "Acceleration"
weight: -3
---

Acceleration modifiers mess with the vertical acceleration of the note. It lets people have notes speed up, slow down, or do a 180 among other things.

## Boomerang
Desc: Notes start flying out from the top of the screen, do a 180 at around the bottom of the screen, and go back towards the receptors.

The modifier has a simple on/off nature, so any nonzero magnitude will work. (Unless the `VariableBoomerang` sub modifier is in play)

Quirks: Hold bodies will draw only after the hold head does the 180. NotITG changed Boomerang's behavior to work with the magnitude by default. See the `VariableBoomerang` sub modifier for replicating NotITG's behavior.

PlayerOptions format: Boomerang(\<magnitude\>, \<approach rate\>)

Example: `Boomerang(1, 1)`

Modstring format: *\<approach rate\> \<magnitude\> boomerang

Example: `*1 100% boomerang`

<video src="/mods/vid/boomerang.webm" controls="">Boomerang video example</video>

### Available sub modifiers:
## VariableBoomerang
Desc: When active, Boomerang now takes its' magnitude into account, allowing for more varied effects.

PlayerOptions format: VariableBoomerang(\<enable\>)

Modstring format: \<enable\> variableboomerang


## Brake
Desc: Notes start fast at the bottom, but slow down as they approach the receptors.

Common values range from 50 to 200%

Quirks: Going over 100% can result in notes going past the receptors and then rebounding back.

Available variants (modstring): brake, land (alias for brake)

PlayerOptions format: Brake(\<magnitude\>, \<approach rate\>)

Example: `Brake(2, 5)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*5 200% brake`

<video src="/mods/vid/brake.webm" controls="">Brake video example</video>

## Boost
Desc: Notes start slow at the bottom, but speed up as they approach the receptors.

Common values range from -100% to 200%.

Quirks: Going over 100% may result in notes bobing at the bottom before going up.

PlayerOptions format: Boost(\<magnitude\>, \<approach rate\>)

Example: `Boost(1.5, 3)`

Modstring format: *\<approach rate\> \<magnitude\> boost

Example: `*3 150% boost`

<video src="/mods/vid/boost.webm" controls="">Boost video example</video>

## Expand
Desc: the visual speed of the field's notes oscilates back and forth, as if the notefield is expanding and contracting. Also has a tangent variant.

Common values range from -50 to 100%

Quirks: When using a negative magnitude, the notes may go beyond the receptor. Stops and Delays will pause the effect altogether.

Available variants: Expand, TanExpand

Available variants (modstring): expand, tanexpand

PlayerOptions format: \<Expand variant\>(\<magnitude\>, \<approach rate\>)

Example: `Expand(1.2, 0.25)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*0.25 120% Expand`

<video src="/mods/vid/expand.webm" controls="">Expand video example</video>

### Available sub modifiers:
## ExpandPeriod
Desc: Can speed up or slow down the oscilation. Positive speeds up, while negative slows down, -100% stops the effect.

Available variants: ExpandPeriod, TanExpandPeriod

Available variants (modstring): expandperiod, tanexpandperiod, expandsize (alias in NotITG), tanexpandsize (alias in NotITG)

PlayerOptions format: \<ExpandPeriod variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>


## Wave
Desc: Notes slow down in the middle and then speed up to the receptors. 200% makes notes effectively stop at the middle before going up to the receptors. Also has a column-specific version.

Common values range from 50 to 200%.

Quirks: N/A

Available variants (modstring): wave, wave\<column\>

PlayerOptions format: Wave(\<magnitude\>, \<approach rate\>)

Example: `Wave(2, 0.5)`

Column-specific format: WaveCol(\<column\>, \<magnitude\>, \<approach rate\>)

Example: `WaveCol(1, -2, 10, true):WaveCol(2, -1, 5, true):WaveCol(3, 1, 5, true):WaveCol(4, 2, 10, true)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>
Example: `*0.5 200% wave` `*10 -200 wave1, *5 -100% wave2, *5 100% wave3, *10 200% wave4`

<video src="/mods/vid/wave.webm" controls="">Wave video example</video>

### Available sub modifiers:
## WavePeriod
Desc: Affects how many times the notes slow down. Positive values increase the period (less times the notes slow down), while negative values decrease the period (more times the notes slow down). -100% stops the effect.

Modstring variants: waveperiod, wavesize (NotITG alias), waveperiod\<column\>

PlayerOptions format: WavePeriod(\<magnitude\>, \<approach rate\>)

Column-specific format: WavePeriodCol(\<column\>, \<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

## WaveOffset
Desc: Shifts where the slow down point is. Positive values shift towards the receptor, negative values shift away from the receptor.

Modstring variants: waveoffset, waveoffset\<column\>

PlayerOptions format: WaveOffset(\<magnitude\>, \<approach rate\>)

Column-specific format: WaveOffsetCol(\<column\>, \<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>
