---
title: "Column movement"
weight: -7
---

Column movement modifiers allow one to move the columns in any direction. Usually, these are used to create "column swaps", which alter the visual order of the columns in gameplay.

## Flip
Desc: Flip alters the column order to make it appear backwards. For Example, if the column order is usually left down up right, the order becomes right up down left.

Negative values have been used to space out the columns, so values from -200% to 100% could be possible.

50% coverges all columns to the same horizontal spot.

Different amounts could be used in combination with Invert.

Quirks: N/A

PlayerOptions format: Flip(\<magnitude\>, \<approach rate\>)

Example: `Flip(1.25, 10)`

Modstring format: *\<approach rate\> \<magnitude\> flip

Example: `*10 125% flip`

<video src="/mods/vid/flip.webm" controls="">Flip video example</video>

## Invert
Desc: Invert flips each half of the notefield. When doubles charts are being played, the two "players" are inverted separately.

Commonly, 100% is used, but different amounts could be used in combination with Flip.

Quirks: If used in 5.2 and earlier, Invert may act in unexpected ways on modes with an odd number of columns (eg. Pump).

In 5.3, Invert will have no visual effect if the mode has three columns per side or less (eg. Pump halfdoubles).

PlayerOptions format: Invert(\<magnitude\>, \<approach rate\>)

Example: `Invert(1, 0.3)`

Modstring format: *\<approach rate\> \<magnitude\> invert

Example: `*0.3 100% invert`

<video src="/mods/vid/invert.webm" controls="">Invert video example</video>

## Move
Desc: Move is a set of modifiers that are column-specific by nature and has variants for the X,Y, and Z axis. 100% moves a column forward on an axis by one dance mode column width. This can allow for column swaps that can't be achieved through just Flip and Invert, but can take more time to set up.

Quirks: Since alpha 4.8.3, all columns can't be hit from the modstring (possible in NotITG), but can be done through the lua function. Right now (as of SM5.3 alpha 4.7), Pump mode's column-spacing is 48 pixels instead of 64, so use multiples of 0.75 instead when working with Pump mode. It's also the only way to move the center panel with any of the column-movement mods.

Available Variants: MoveXCol, MoveYCol, MoveZCol

Available Variants (modstring): movex, movey, movez

PlayerOptions format: \<Move variant\>(\<column\>, \<magnitude\>, \<approach rate\>)

Examples: `MoveXCol(1, -0.5, 4, true):MoveYCol(2, 1, 0.5, true):MoveZCol(3, 5, 1)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>\<column\>

Examples: `*4 -50 movex1, *0.5 100 movey2, *1 500 movez3`

<video src="/mods/vid/move.webm" controls="">Move video example</video>

## Tipsy
Desc: Tipsy makes the columns bob up and down in a sinusoidal pattern. There is a tangent-based variant as well.

Common ranges go from -300 to 300%

Quirks: When combined with Drunk in SM5.1 or earlier, hold bodies may detach from the hold head.

Available Variants: Tipsy, TanTipsy

Available Variants (modstring): tipsy, tantipsy

PlayerOptions format: \<Tipsy variant\>(\<magnitude\>, \<approach rate\>)

Example: `Tipsy(1.5, 3)` `TanTipsy(1.5, 3)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*3 150% tipsy` `*3 150% tantipsy`

<video src="/mods/vid/tipsy.webm" controls="">Tipsy video example</video>

### Available sub modifiers:
## TipsyOffset
Desc: TipsyOffset shifts the point in time of where Tipsy is in its' sinusoidal pattern.

Values of -100 to 100% have a noticable effect.

Available Variants: TipsyOffset, TanTipsyOffset

Available Variants (modstring): tipsyoffset, tantipsyoffset

## TipsySpacing
Desc: TipsySpacing shifts the phase for each column after the first column.

Values of -100 to 100% have a noticable effect.

Available Variants: TipsySpacing, TanTipsySpacing

Available Variants (modstring): tipsyspacing, tantipsyspacing

## TipsySpeed
Desc: TipsySpeed affects how fast Tipsy goes through its' sinusoidal pattern with a multiplier. Lower magnitudes slow it down, while higher magnitudes speed it up. -100% freezes the effect completely. Results in a very jittery effect when using game uptime as the mod timer.

Common ranges can go from -100 to 100%

Available Variants: TipsySpeed, TanTipsySpeed

Available Variants (modstring): tipsyspeed, tantipsyspeed


## Combining Flip & Invert
Flip and invert, when paired together, allow for unusual column ordering. Here's what's possible in dance & pump modes.

<table>
  <tr>
    <th>Dance mode (4 panel)</th>
    <th>Pump mode (5 panel)</th>
  </tr>

  <tr>
    <td>75&percnt; flip + 75&percnt; invert</td>
    <td>66.666667&percnt; (AKA 2/3) flip + 133.333333&percnt; (AKA 4/3) invert</td>
  </tr>
  <tr>
    <td><img src="/mods/75f+75i_dance.png"></td>
    <td><img src="/mods/75f+75i_pump.png"></td>
  </tr>

  <tr>
    <td>25&percnt; flip +  -75&percnt; invert</td>
    <td>33.333333&percnt; (AKA 1/3) flip + -133.333333&percnt; (AKA -4/3) invert</td>
  </tr>
  <tr>
    <td><img src="/mods/25f-75i_dance.png"></td>
    <td><img src="/mods/25f-75i_pump.png"></td>
  </tr>

  <tr>
    <td>100&percnt; flip + -100&percnt; invert</td>
    <td>100&percnt; flip + -100&percnt; invert</td>
  </tr>
  <tr>
    <td><img src="/mods/100f-100i_dance.png"></td>
    <td><img src="/mods/100f-100i_pump.png"></td>
  </tr>

  <tr>
    <td>25&percnt; flip + 125&percnt; invert</td>
    <td>33.333333&percnt; (AKA 1/3) flip +  166.666666&percnt; (AKA 5/3) invert</td>
  </tr>
  <tr>
    <td><img src="/mods/25f+125i_dance.png"></td>
    <td><img src="/mods/25f+125i_pump.png"></td>
  </tr>

  <tr>
    <td>75&percnt; flip + -125&percnt; invert</td>
    <td>66.666666&percnt; (AKA 2/3) flip + -166.666666&percnt; (AKA -5/3) invert</td>
  </tr>
  <tr>
    <td><img src="/mods/75f-125i_dance.png"></td>
    <td><img src="/mods/75f-125i_pump.png"></td>
  </tr>

  <tr>
    <td>25&percnt; flip + -25&percnt; invert</td>
    <td>33.333333&percnt; (AKA 1/3) flip + -33.333333&percnt; (AKA -1/3) invert</td>
  </tr>
  <tr>
    <td><img src="/mods/25f-25i_dance.png"></td>
    <td><img src="/mods/25f-25i_pump.png"></td>
  </tr>
</table>
