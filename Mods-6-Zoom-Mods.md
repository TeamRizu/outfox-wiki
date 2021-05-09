# Zoom modifiers
Zoom modifiers affect the size of the notefield or notes & receptors.
Zoom works a bit differently in SM5 in that it also affects the z axis unlike in ITG/SM3.95, which only affect x & y.

Extra scaling may be required if recreating effects between ITG and SM5.

Mods that work on the note and column-level may make holds look a bit weird due to how hold scaling works.

## Mini
Desc: Mini scales down the entire notefield, while maintaining the receptor position.

The following equation for calculating the zoom is this:

`1 - (0.5*mini)`, with `mini` being the magnitude as input into the PlayerOptions function.

100% is half-size, and 200% is zero zoom.

Negative values make the notefield bigger.

Quirks: Positive and negative values increase how far down the notefield draws, Judgment & combo scale down with Mini, but will not scale up when Mini is negative (Unlike OpenITG/NotITG, where the judgment scales down or up and the combo is unaffected). Going beyond 200% will result in the notefield having a negative zoom, which might look weird.

PlayerOptions format: Mini(\<magnitude\>, \<approach rate\>)

Example: `Mini(1,0.2)`

Modstring format: *\<approach rate\> \<magnitude\> mini

Example: *0.2 100% mini

Video Example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/mini.webm

## Tiny
Desc: Tiny scales down the notes and receptors instead of the entire field. Variants for all three axis are available, as are column-specific variants. These are multiplied onto the whole field variants.

The following equation for calculating the zoom is this:

`0.5^tiny`, with `tiny` being the magnitude as input into the PlayerOptions function.

NotITG uses the equation from Mini instead of this one for the zoom.

Common values can be from -100 to 100%.

Quirks: Judgment & combo scale down with Tiny, but will not scale up when Tiny is negative. Positive values bring the columns closer to simulate what Mini does, unlike NotITG. (Use the column-specific version if that effect is desired.)

Available Variants: Tiny, TinyX, TinyY, TinyZ

Available Variants (Column-Specific): TinyCol, TinyXCol, TinyYCol, TinyZCol, HoldTinyXCol (Hold bodies only, HoldTinyCol is an alias)

Available Variants (modstring): tiny, tiny\<column\>, tinyx, tinyx\<column\>, tinyy, tinyy\<column\>, tinyz, tinyz\<column\>, holdtiny (NotITG alias that hits all columns, Hold bodies only, holdgirth is also an alias), holdtinyx\<column\> (Hold bodies only, holdtiny\<column\> is an alias (NotITG uses this name instead), holdgirth\<column\> is a NotITG alias)

PlayerOptions format: \<Tiny variant\>(\<magnitude\>, \<approach rate\>)

Examples: `Tiny(2, 0.5)`

Column-specific format: \<Column-specific variant\>(\<column\>, \<magnitude\>, \<approach rate\>)

Examples: `TinyXCol(1, 1, 1, true):TinyYCol(2, -2, 0.5, true):TinyZCol(3, -4, 10, true):HoldTinyXCol(4, 3, 0.2)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Examples: `*0.5 -200% tinyy` `*1 100% tinyx1, *0.5 -200% tinyy2, *10 -400% tinyz3, *0.2 300% holdtinyx4`

Video Example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/tiny.webm

### Available sub modifiers:
## TinyUsesMiniCalc
Desc: When active, all Tiny mods use the zoom equation from Mini instead of the normal one. This allows for negative zooms and is useful for replicating NotITG effects that expect this behavior.

PlayerOptions format: TinyUsesMiniCalc(\<enable\>)

Modstring format: \<enable\> tinyusesminicalc


## Pulse
Desc: Pulse is a set of mods that make the notes zoom in and out as they approach the receptors.

PulseOuter affects the main pulsing effect, while PulseInner offsets the maximum & minumum zoom. Also has a tangent-based variant.

PulseOuter is noticable at 100%, and 100% PulseInner offsets the zoom to between 2x and 1x zoom.

Quirks: N/A

Available Variants: PulseInner, PulseOuter, TanPulseInner, TanPulseOuter

Available Variants (modstring): pulseinner, pulseouter, pulse (NotITG alias that hits both inner & outer), tanpulseinner, tanpulseouter, tanpulse (NotITG alias that hits both inner & outer)

PlayerOptions format: \<Pulse variant\>(\<magnitude\>, \<approach rate\>)

Examples: `PulseInner(1, 0.5, true):PulseOuter(1, 0.5)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Examples: `*0.5 100% pulseinner, *0.5 100% pulseouter`

Video Example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/pulse.webm

### Available sub modifiers:
## PulseOffset
Desc: Affects the phase of the sinusoidal pattern used for Pulse.

Available Variants: PulseOffset, TanPulseOffset

Available Variants (modstring): pulseoffset, tanpulseoffset

PlayerOptions format: \<PulseOffset variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

## PulsePeriod
Desc: Affects the speed of the pulsing with a multiplier (1 + magnitude).

Positive magnitudes slow down the pulsing, negative magnitudes speed it up.

-100% freezes the effect at the minumum.

Available Variants: PulsePeriod, TanPulsePeriod

Available Variants (modstring): pulseperiod, tanpulseperiod

PlayerOptions format: \<PulsePeriod variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>


## ShrinkLinear
Desc: ShrinkLinear has notes start out zoomed in, and linearly go down to normal size based on how far away the note is from hitting the receptor. There are also separate variants for all three axis.

50% is still readable in normal circumstances.

Negative amounts may result in notes starting backwards and ending normally.

Quirks: N/A

Available Variants: ShrinkLinear, ShrinkLinearX, ShrinkLinearY, ShrinkLinearZ

Available Variants (modstring): shrinklinear, shrinklinearx, shrinklineary, shrinklinearz

PlayerOptions format: \<ShrinkLinear variant\>(\<magnitude\>, \<approach rate\>)

Examples: `ShrinkLinear(0.5,1)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Examples: `*1 50% shrinklinear`

Video Example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/shrinklinear.webm

## ShrinkMult
Desc: ShrinkMult has notes that start zoomed out and decelerate to normal zoom. There are also separate variants for all three axis.

100% is a decent amount.

Quirks: Using negative amounts will result in notes going to negative infinity zoom before going back to normal.

Available Variants: ShrinkMult, ShrinkMultX, ShrinkMultY, ShrinkMultZ

Available Variants (modstring): shrinkmult, shrinkmultx, shrinkmulty, shrinkmultz

PlayerOptions format: \<ShrinkMult variant\>(\<magnitude\>, \<approach rate\>)

Examples: `ShrinkMult(1, 2)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Examples: `*2 100% shrinkmult`

Video Example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/shrinkmult.webm
