## Path Modifiers
Path modifiers affect the path a note takes to the receptor, often curving it in some way or creating a type of wave in the movement.

## Drunk
Desc: Drunk makes the notes and receptors move left and right in a constantly shifting sinusoidal wave. There are extra variants for the Y and Z axis, as well as tangent variants.

Common values can be practically any value, due to its' wide use in modfiles. Try starting with -200 to 200% for an initial effect.

Quirks: When combined with Tipsy in SM5.1 and earlier, hold bodies may detatch from the hold head. The phase of the sinusoidal wave depends on game uptime unless the mod timer is changed.

Available variants: Drunk, DrunkY, DrunkZ, TanDrunk, TanDrunkY, TanDrunkZ

Available variants (modstring): drunk, drunky, drunkz, tandrunk, tandrunky, tandrunkz

PlayerOptions format: \<Drunk variant\>(\<magnitude\>, \<approach rate\>)

Example: `Drunk(3, 2)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*2 300% drunk`

Video Example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/drunk.webm

### Available sub modifiers:
## DrunkOffset
Desc: Offsets the phase of the sinusoidal wave, which is added onto the offset caused by time.

Available variants: DrunkOffset, DrunkYOffset, DrunkZOffset, TanDrunkOffset, TanDrunkYOffset, TanDrunkZOffset

Available variants (modstring): drunkoffset, drunkyoffset, drunkzoffset, tandrunkoffset, tandrunkyoffset, tandrunkzoffset

PlayerOptions format: \<DrunkOffset variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

## DrunkPeriod
Desc: Alters the period of the sinusoidal wave. Positive values decrease the period, negative values increase the period. -100% just results in the columns moving, but the notes won't go back and forth.

Available variants: DrunkPeriod, DrunkYPeriod, DrunkZPeriod, TanDrunkPeriod, TanDrunkYPeriod, TanDrunkZPeriod

Available variants (modstring): drunkperiod, drunksize (NotITG alias for drunkperiod), drunkyperiod, drunkysize (NotITG alias for drunkyperiod), drunkzperiod, drunkzsize (NotITG alias for drunkzperiod), tandrunkperiod, tandrunksize (NotITG alias for tandrunkperiod), tandrunkyperiod, tandrunkysize (NotITG alias for tandrunkyperiod), tandrunkzperiod, tandrunkzsize (NotITG alias for tandrunkzperiod)

PlayerOptions format: \<DrunkPeriod variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

## DrunkSpacing
Desc: Alters the amount of space between the columns, and is cyclical like DrunkOffset. Used to be called "DrunkOffset" before SM5.3 and NotITG v4.

Available variants: DrunkSpacing, DrunkYSpacing, DrunkZSpacing, TanDrunkSpacing, TanDrunkYSpacing, TanDrunkZSpacing

Available variants (modstring): drunkspacing, drunkyspacing, drunkzspacing, tandrunkspacing, tandrunkyspacing, tandrunkzspacing

PlayerOptions format: \<DrunkSpacing variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

## DrunkSpeed
Desc: Affects the speed of Drunk through a multiplier. Positive numbers speed it up, negative numbers slow it down, -100% freezes the effect. Will look really jittery when using game uptime as the mod timer.

Available variants: DrunkSpeed, DrunkYSpeed, DrunkZSpeed, TanDrunkSpeed, TanDrunkYSpeed, TanDrunkZSpeed

Available variants (modstring): drunkspeed, drunkyspeed, drunkzspeed, tandrunkspeed, tandrunkyspeed, tandrunkzspeed

PlayerOptions format: \<DrunkSpeed variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>


## Bounce
Desc: Notes bounce to the right. There's also a Z axis variant that has notes bounce towards the player.

100% is good enough to give a good idea for the effect.

Quirks: N/A

Available variants: Bounce, BounceZ

Available variants (modstring): bounce, bouncez

PlayerOptions format: \<Bounce variant\>(\<magnitude\>, \<approach rate\>)

Example: `Bounce(1, 0.25)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*0.25 100% bounce`

Video Example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/bounce.webm

### Available sub modifiers:
## BouncePeriod
Desc: Affects the period of the bouncing. Positive numbers increase the period, while negative numbers decrease the period. -100% moves the columns to the highest point of the bounce.

Available variants: BouncePeriod, BounceZPeriod

Available variants (modstring): bounceperiod, bouncezperiod

PlayerOptions format: \<BouncePeriod variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

## BounceOffset
Desc: Offsets the phase of the bounce.

Available variants: BounceOffset, BounceZOffset

Available variants (modstring): bounceoffset, bouncezoffset

PlayerOptions format: \<BounceOffset variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>


## Tornado
Desc: Notes swirl around as they go to the receptor. Has a Z axis variant, as well as tangent variants.

Common values range from -200 to 200%

Quirks: N/A

Available variants: Tornado, TornadoZ, TanTornado, TanTornadoZ

Available variants (modstring): tornado, tornadoz, tantornado, tantornadoz

PlayerOptions format: \<Tornado variant\>(\<magnitude\>, \<approach rate\>)

Example: `Tornado(1, 0.2)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*0.2 100% tornado`

Video Example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/tornado.webm

### Available sub modifiers:
## TornadoOffset
Desc: Offsets the phase of the sinusoidal curves for each column. Large values are needed for noticable effects.

Available variants: TornadoOffset, TornadoZOffset, TanTornadoOffset, TanTornadoZOffset

Available variants (modstring): tornadooffset, tornadozoffset, tantornadooffset, tantornadozoffset

PlayerOptions format: \<TornadoOffset variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

## TornadoPeriod
Desc: Affects the period of the sinusoidal curves for each column. Positive values decrease the period, while negative values increase the period. -100% visually removes the effect.

Available variants:

Available variants (modstring):

PlayerOptions format: \<TornadoPeriod variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>


## Bumpy
Desc: Notes go back and forth on the z axis as they go towards the receptor. Has variants for all axis as well as tangent variants and column-specific variants. Unlike the variants for Stealth and Dark, this does not add onto the values for normal Bumpy.

Common values could be practically anywhere due to its' wide use in modfiles. Try starting with -300 to 300% for an initial amount.

Quirks: N/A

Available variants: Bumpy, BumpyX, BumpyY, TanBumpy, TanBumpyY, TanBumpyZ

Available variants (column-specific): BumpyCol, BumpyXCol, BumpyYCol, TanBumpyCol, TanBumpyXCol, TanBumpyYCol

Available variants (modstring): bumpy, bumpyx, bumpyy, bumpyz (NotITG alias for bumpy), bumpy\<column\>, bumpyx\<column\>, bumpyy\<column\>, bumpyz\<column\> (NotITG alias for bumpy\<column\>), tanbumpy, tanbumpyx, tanbumpyy, tanbumpyz (NotITG alias for tanbumpy), tanbumpy\<column\>, tanbumpyx\<column\>, tanbumpyy\<column\>, tanbumpyz\<column\> (NotITG alias for tanbumpy\<column\>)

PlayerOptions format: \<Bumpy variant\>(\<magnitude\>, \<approach rate\>)

Example: `Bumpy(3, 0.5)`

Column-specific format: \<Column-specific variant\>(\<column\>, \<magnitude\>, \<approach rate\>)

Example: `BumpyCol(1, -3, 3, true):BumpyCol(2, -1, 1, true):BumpyCol(3, 1, 1, true):BumpyCol(4, 3, 3)`
Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*0.5 300% Bumpy`

Video Example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/bumpy.webm

### Available sub modifiers:
## BumpyOffset
Desc: Offsets the phase of the back and forth wave. The min/max and middle points are reachable through increments of 25%.

Available variants: BumpyOffset, BumpyXOffset, BumpyYOffset, TanBumpyOffset, TanBumpyXOffset, TanBumpyYOffset

Available variants (column-specific): BumpyOffsetCol, BumpyXOffsetCol, BumpyYOffsetCol, TanBumpyOffsetCol, TanBumpyXOffsetCol, TanBumpyYOffsetCol

Available variants (modstring): bumpyoffset, bumpyxoffset, bumpyyoffset, bumpyzoffset (NotITG alias for bumpyoffset), bumpyoffset\<column\>, bumpyxoffset\<column\>, bumpyyoffset\<column\>, bumpyzoffset\<column\> (NotITG alias for bumpyoffset\<column\>), tanbumpyoffset, tanbumpyxoffset, tanbumpyyoffset, tanbumpyoffset\<column\>, tanbumpyxoffset\<column\>, tanbumpyyoffset\<column\>

PlayerOptions format: \<BumpyOffset variant\>(\<magnitude\>, \<approach rate\>)

Column-specific format: \<Column-specific variant\>(\<column\>, \<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

## BumpyPeriod
Desc: Affects the period of the back and forth wave. Positive values increase the period, while negative values decrease the period. -100% stops the effect and moves the columns to the negative-most value.

Available variants: BumpyPeriod, BumpyXPeriod, BumpyYPeriod, TanBumpyPeriod, TanBumpyXPeriod, TanBumpyYPeriod

Available variants (column-specific): BumpyPeriodCol, BumpyXPeriodCol, BumpyYPeriodCol, TanBumpyPeriodCol, TanBumpyXPeriodCol, TanBumpyYPeriodCol

Available variants (modstring): bumpyperiod, bumpyxperiod, bumpyyperiod, bumpyzperiod (NotITG alias for bumpyperiod), bumpysize (NotITG alias for bumpyperiod), bumpyxsize (NotITG alias for bumpyxperiod), bumpyysize (NotITG alias for bumpyyperiod), bumpyzsize (NotITG alias for bumpyperiod), bumpyperiod\<column\>, bumpyxperiod\<column\>, bumpyyperiod\<column\>, bumpyzperiod\<column\> (NotITG alias for bumpyperiod\<column\>), tanbumpyperiod, tanbumpyxperiod, tanbumpyyperiod, tanbumpyzperiod (NotITG alias for tanbumpyperiod), tanbumpysize (NotITG alias for tanbumpyperiod), tanbumpyxsize (NotITG alias for tanbumpyxperiod), tanbumpyysize (NotITG alias for tanbumpyyperiod), tanbumpyzsize (NotITG alias for tanbumpyperiod), tanbumpyperiod\<column\>, tanbumpyxperiod\<column\>, tanbumpyyperiod\<column\>

PlayerOptions format: \<BumpyPeriod variant\>(\<magnitude\>, \<approach rate\>)

Column-specific format: \<Column-specific variant\>(\<column\>, \<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>


## Beat
Desc: Notes & receptors pulse to the left and right to the beat. Contrary to popular belief, it is not the only mod. There are variants for each axis.

Common values range from -250% to 200%, but could be practically anything because of its' wide use in modfiles.

Quirks: Beat in OpenITG & NotITG does not respond well to very high BPMs.

Available variants: Beat, BeatY, BeatZ

Available variants (modstring): beat, beaty, beatz

PlayerOptions format: \<Beat variant\>(\<magnitude\>, \<approach rate\>)

Example: `Beat(1.5, 0.2)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*0.2 150% Beat`

Video Example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/beat.webm

### Available sub modifiers:
## BeatMult
Desc: Multiply the BPM that Beat is reacting to. Negative values slow down, while positive values speed up. -50% is half, while 100% is double.

Available variants: BeatMult, BeatYMult, BeatZMult

Available variants (modstring): beatmult, beatymult, beatzmult

PlayerOptions format: \<BeatMult variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

## BeatOffset
Desc: Offset the beat that the effect is going off of. 50% makes the effect act on the half beat instead of on the beat.

Available variants: BeatOffset, BeatYOffset, BeatZOffset

Available variants (modstring): beatoffset, beatyoffset, beatzoffset

PlayerOptions format: \<BeatOffset variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

## BeatPeriod
Desc: Affects the period of the wave used. Positive values increase the period, negative values reduce the period. -100% makes the field shift back and forth to the beat.

Available variants: BeatPeriod, BeatYPeriod, BeatZPeriod

Available variants (modstring): beatperiod, beatyperiod, beatzperiod, beatsize (NotITG alias for beatperiod), beatysize (NotITG alias for beatyperiod), beatzsize (NotITG alias for beatzperiod)

PlayerOptions format: \<BeatPeriod variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

## BeatCap (NotITG only)

Desc: When active (any nonzero magnitude), Beat acts like it does in SM5, being able to properly react to high BPMs.

Available variants (modstring): beatcap, beatcapy, beatcapz

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>


## Zigzag
Desc: Notes move left and right on a triangle wave. There is also a Z axis variant.

Common values range from -400 to 400%

Quirks: N/A

Available variants: Zigzag, ZigzagZ

Available variants (modstring): zigzag, zigzagz

PlayerOptions format: \<Zigzag variant\>(\<magnitude\>, \<approach rate\>)

Example: `Zigzag(2, 2)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*2 200% zigzag`

Video Example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/zigzag.webm

### Available sub modifiers:
## ZigzagOffset
Desc: Offsets the phase of the triangle wave used.

Available variants: ZigzagOffset, ZigzagZOffset

Available variants (modstring): zigzagoffset, zigzagzoffset

PlayerOptions format: \<ZigzagOffset variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

## ZigzagPeriod
Desc: Affects the period of the triangle wave. Positive values increase the period, negative values decrease the period, -100% shifts the field to the negative extrema.

Available variants: ZigzagPeriod, ZigzagZPeriod

Available variants (modstring): zigzagperiod, zigzagzperiod, zigzagsize (NotITG alias for zigzagperiod), zigzagzsize (NotITG alias for zigzagzperiod)

PlayerOptions format: \<ZigzagPeriod variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>


## Sawtooth
Desc: Notes move left and right on a sawtooth wave. There is also a Z axis variant.

Common values range from -200 to 200%.

Quirks: N/A

Available variants: Sawtooth, SawtoothZ

Available variants (modstring): sawtooth, sawtoothz

PlayerOptions format: \<Sawtooth variant\>(\<magnitude\>, \<approach rate\>)

Example: `Sawtooth(2, 1)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*1 200% sawtooth`

Video Example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/sawtooth.webm

### Available sub modifiers:
## SawtoothOffset (NotITG only)
Desc: Offsets the sawtooth wave.

Available variants (modstring): sawtoothoffset, sawtoothzoffset

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

## SawtoothPeriod
Desc: Affects the period of the sawtooth wave. Positive values increase the period, negative values decrease the period. -100% makes the notefield disappear.

Available variants: SawtoothPeriod, SawtoothZPeriod

Available variants (modstring): sawtoothperiod, sawtoothzperiod, sawtoothsize (NotITG alias for sawtoothperiod), sawtoothzsize (NotITG alias for sawtoothzperiod)

PlayerOptions format: \<SawtoothPeriod variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>


## Square
Desc: Notes & receptors are placed onto a (mostly) square wave. There is also a Z axis variant.

Common values range from -150 to 150%

Quirks: The wave period is different from NotITG. Refer to https://gist.github.com/MrThatKid/2a8525a1abe1cb95073ef4eb64590b00

Available variants: Square, SquareZ

Available variants (modstring): square, squarez

PlayerOptions format: \<Square variant\>(\<magnitude\>, \<approach rate\>)

Example: `Square(-0.5, 1)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*1 -50% square`

Video Example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/square.webm

### Available sub modifiers:
## SquareOffset
Desc: Offsets the square wave used.

Available variants: SquareOffset, SquareZOffset

Available variants (modstring): squareoffset, squarezoffset

PlayerOptions format: \<SquareOffset variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

## SquarePeriod
Desc: Alters the period of the square wave. Positive values increase the period, negative values decrease the period. -100% shifts the field to the positive extrema.

Available variants: SquarePeriod, SquareZPeriod

Available variants (modstring): squareperiod, sqaurezperiod

PlayerOptions format: \<SquarePeriod variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>


## Digital
Desc: Notes are placed onto a 'digital' sine wave. (Think of a sine wave, but more blocky looking). There is a variant for the Z axis, as well as tangent variants.
Common values range from -400 to 400%

Quirks: The wave period is different from NotITG. Refer to https://gist.github.com/MrThatKid/2a8525a1abe1cb95073ef4eb64590b00

Available variants: Digital, DigitalZ, TanDigital, TanDigitalZ

Available variants (modstring): Digital, DigitalZ, TanDigital, TanDigitalZ

PlayerOptions format: \<Digital variant\>(\<magnitude\>, \<approach rate\>)

Example: `Digital(-1.5, 3)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*3 -150% digital`

Video Example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/digital.webm

### Available sub modifiers:
## DigitalSteps
Desc: Affects how many 'levels' the digital sine wave has. Positive values make the wave smoother, while negative values make the wave more blocky. -50% visually removes the effect, -100% hides the notefield.

Available variants: DigitalSteps, DigitalZSteps, TanDigitalSteps, TanDigitalZSteps

Available variants (modstring): digitalsteps, digitalzsteps, tandigitalsteps, tandigitalzsteps

PlayerOptions format: \<DigitalSteps variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

## DigitalOffset
Desc: Offsets the sine wave used in Digital. It's really granular, so large amounts and large approach rates may be needed.

Available variants: DigitalOffset, DigitalZOffset, TanDigitalOffset, TanDigitalZOffset

Available variants (modstring): digitaloffset, digitalzoffset, tandigitaloffset, tandigitalzoffset

PlayerOptions format: \<DigitalOffset variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

## DigitalPeriod
Desc: Affects the period of the sine wave. Positive values increase the period, negative values decrease the period. -100% shifts the field to the negative extrema.

Available variants: DigitalPeriod, DigitalZPeriod, TanDigitalPeriod, TanDigitalZPeriod

Available variants (modstring): digitalperiod, digitalzperiod, tandigitalperiod, tandigitalzperiod

PlayerOptions format: \<DigitalPeriod variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>


## Spiral
Desc: Spiral is a set of modifiers that move notes in a spiral towards the receptors. There are three axis variants that are usually combined to make the full spiral effect (X + Y, Y + Z, X + Z)

Common values range from -200 to 200%, with a period of -99% as a starting point.

Quirks: When at 50% Reverse, the spiral effect looks much more like a full spiral. SpiralY does not affect holds in SM5.3 unless some NoteField functions are used (Refer to the SpiralHolds sub modifier for more details. The video example uses `NoteField:set_holds_use_nonstandard_y_pos` only.)

Available variants: SpiralX, SpiralY, SpiralZ

Available variants (modstring): spiralx, spiraly, spiralz

PlayerOptions format: \<Spiral variant\>(\<magnitude\>, \<approach rate\>)

Example: `SpiralX(1,1,true):SpiralY(1,1,true):SpiralXPeriod(-0.99,1,true):SpiralYPeriod(-0.99,1,true)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*1 100% spiralx, *1 100% spiraly, *1 -99% spiralxperiod, *1 -99% spiralyperiod`

Video Example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/spiral.webm

### Available sub modifiers:
## SpiralOffset
Desc: Offsets the waves used for the spiral.

Available variants: SpiralXOffset, SpiralYOffset, SpiralZOffset

Available variants (modstring): spiralxoffset, spiralyoffset, spiralzoffset

PlayerOptions format: \<SpiralOffset variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

## SpiralPeriod
Desc: Affects the period of the waves used in spiral. Positive values decrease the period, negative values increase the period, -100% just has notes come in at a diagonal line.

Available variants: SpiralXPeriod, SpiralYPeriod, SpiralZPeriod

Available variants (modstring): spiralxperiod, spiralyperiod, spiralzperiod

PlayerOptions format: \<SpiralPeriod variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

## SpiralHolds (NotITG only)
Desc: When at a positive amount, the hold renderer is switched out for one that can handle spirals better with proper uv scaling. When at -100%, the hold render uses unscaled uvs for the holds, emulating old spiralholds behavior.

The old behavior can be mostly replicated in SM5 by combining `NoteField:set_holds_orient_to_travel_dir` with `NoteField:set_holds_use_nonstandard_y_pos` (works for most cases) or `NoteField:set_hold_length_uses_beats` (when dealing with ~50% reverse, holds become much more smooth)

Available variants (modstring): spiralholds, holdtype (alias)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>


## Asymptote
Desc: The receptors become the zero point of an asymptote on the x axis, while notes get closer to it on the x axis.

There aren't any real common values because this modifier isn't used that much.

Quirks: N/A

PlayerOptions format: \<Asymptote variant\>(\<magnitude\>, \<approach rate\>)

Example: `Asymptote(1, 1)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*1 100% asymptote`

Video Example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/asymptote.webm

### Available sub modifiers:
## AsymptoteOffset
Desc: Moves the asymptote line. Negative values move it down.

PlayerOptions format: AsymptoteOffset(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> asymptoteoffset

## AsymptoteScale
Desc: Affects the curve before veering off towards the asymptote. Negative values make the curve more noticable. Going past -100% flips the curve. Being at -100% hides the notefield. (Has an alias of "asymptotesize" in NotITG)

PlayerOptions format: AsymptoteScale(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> asymptotescale


## Parabola
Desc: A set of modifiers that turn the path into a parabola, with the zero point being the receptors. There are variants for all axis.

Common values range from -500 to 500%

Quirks: N/A

Available variants: ParabolaX, ParabolaY, ParabolaZ

Available variants (modstring): parabolax, parabolay, parabolaz

PlayerOptions format: \<Parabola variant\>(\<magnitude\>, \<approach rate\>)

Example: `ParabolaX(2, 0.125)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*0.125 200% parabolax`

Video Example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/parabola.webm

### Available sub modifiers:
## ParabolaOffset
Desc: Moves the zero point of the parabola.

Available variants: ParabolaXOffset, ParabolaYOffset, ParabolaZOffset

Available variants (modstring): parabolaxoffset, parabolayoffset, parabolazoffset

PlayerOptions format: \< variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>


## Cubic
Desc: A set of modifiers that turn the path into a cubic graph, with the zero point being the receptors. There are variants for all axis.

Common values range from -200% to 200%

Quirks: N/A

Available variants: CubicX, CubicY, CubicZ

Available variants (modstring): cubicx, cubicy, cubicz

PlayerOptions format: \<Cubic variant\>(\<magnitude\>, \<approach rate\>)

Example: `CubicZ(3, 10)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*10 300% cubicz`

Video Example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/cubic.webm

### Available sub modifiers:
## CubicOffset
Desc: Moves the zero point of the cubic graph. This modifier is really granular, so use large amounts.

Available variants: CubicXOffset, CubicYOffset, CubicZOffset

Available variants (modstring): cubicxoffset, cubicyoffset, cubiczoffset

PlayerOptions format: \<CubicOffset variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>


## Xmode (SM5 only)
Desc: A replication of Pump It Up's X scroll mode.

This is rarely used, so 100% should work fine.

Quirks: The effect is reversed on player 2 in singles mode and is reversed on the second half of the notefield if doubles modes are used. (The video example shows player 1)

PlayerOptions format: Xmode(\<magnitude\>, \<approach rate\>)

Example: `Xmode(1, 1)`

Modstring format: *\<approach rate\> \<magnitude\> xmode

Example: `*1 100% xmode`

Video Example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/xmode.webm

## Attenuate
Desc: Emphasises the note position the further a note gets away from the receptor. Has variants for all axis. NotITG V3 and later does not have the Y axis variant.

Common values range from -300 to 300%

Quirks: This modifier is applied after every other modifier has run, so all path modifiers are taken into account for this.

Available variants: AttenuateX, AttenuateY, AttenuateZ

Available variants (modstring): attenuatex, attenuate (NotITG name), attenuatey, attenuatez

PlayerOptions format: \<Attenuate variant\>(\<magnitude\>, \<approach rate\>)

Example: `AttenuateX(2, 4)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*4 200% attenuatex`

Video Example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/attenuate.webm

### Available sub modifiers:
## AttenuateOffset
Desc: Offset the position emphasis used in Attenuate.
Available variants: AttenuateXOffset, AttenuateYOffset, AttenuateZOffset

Available variants (modstring): attenuatexoffset, attenuateoffset (NotITG name), attenuateyoffset, attenuatezoffset

PlayerOptions format: \<AttenuateOffset variant\>(\<magnitude\>, \<approach rate\>)
Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>
