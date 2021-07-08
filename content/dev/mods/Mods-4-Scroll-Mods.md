---
title: "Scroll"
weight: -6
---

Scroll modifiers affect the general scroll of the notefield. This is often used to change from upscroll to downscroll among other effects.

## Reverse
Desc: Reverse flips the scroll of the whole notefield from upscroll to downscroll. There is also a column-specific version that adds onto the value of normal Reverse.

Commonly, 50% or 100% is used on its' own.

Quirks: When going over 100%, the effect goes backwards, with 200% being normal upscroll again. Negative values go upward resulting in a longer notefield. This applies to the column-specific version, too. Going to 100% on column 1 will also make the judgment & combo swap positions.

For example, 100% reverse + 100% reverse on a single column would result in that single column having upscroll and the rest being downscroll.

Available Variants (modstring): reverse, reverse\<column\>

PlayerOptions format: Reverse(\<magnitude\> \<approach rate\>)

Example: `Reverse(1, 2)`

Column-specific format: ReverseCol(\<column\>, \<magnitude\>, \<approach rate\>)

Example: `ReverseCol(2, 0.25, 0.25)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

example: `*2 100% reverse` `*0.25 25% reverse2`

<video src="/mods/vid/reverse.webm" controls="">Reverse video example</video>

### Available sub modifiers:
## UnboundedReverse
Desc: UnboundedReverse is a boolean modifier that makes it so Reverse no longer bounces back when going over 100% (Acts similar to negative reverse, behavior-wise). This affects all reverse-type modifiers, including Split, Alternate and Cross. In NotITG, this is known as `reversetype`.

PlayerOptions format: UnboundedReverse(\<enable\>)

modstring format: \<enable\> unboundedreverse


## Split
Desc: The second half of the notefield gets reversed.

Commonly, 50% or 100% is used on its' own.

Quirks: Same as Reverse. If used in modes with an odd number of columns, the middle column also gets affected.

PlayerOptions format: Split(\<magnitude\>, \<approach rate\>)

Example: `Split(0.75,3)`

Modstring format: *\<approach rate\> \<magnitude\> split

example: `*3 75% reverse`

<video src="/mods/vid/split.webm" controls="">Split video example</video>

## Alternate
Desc: Every other column gets reversed, starting with the second column. Also can be activated with `ultraman` in NotITG.

Commonly, 50% or 100% is used on its' own.

Quirks: Same as Reverse.

PlayerOptions format: Alternate(\<magnitude\>, \<approach rate\>)

Example: `Alternate(1, 1)`

Modstring format: *\<approach rate\> \<magnitude\> alternate

example: `*1 100% alternate`

<video src="/mods/vid/alternate.webm" controls="">Alternate video example</video>

## Cross
Desc: The inner part of the notefield gets reversed with the outer sides staying as upscroll.

Commonly, 50% or 100% is used on its' own.

Quirks: Same as Reverse.

PlayerOptions format: Cross(\<magnitude\>, \<approach rate\>)

Example: `Cross(0.25, 4)`

Modstring format: *\<approach rate\> \<magnitude\> cross

example: `*4 25% cross`

<video src="/mods/vid/cross.webm" controls="">Cross video example</video>

## Centered
Desc: Centered moves the notefield down to where the receptors are at the center of the whole field at 100% (which is usually around the middle of the screen), taking the above scroll modifiers into account (As seen with Alternate in the video example). Commonly used to create "driven drops". Can also be activated with `converge` in modstring form.

Also often combined with other scroll modifiers above.

Commonly used at 100%, but more or less can be used. Negative values move the notefield up.

Quirks: The speed it has when going to the center depends on multiple theme metrics, so "driven drop" effects may be inconsistent across multiple themes. Most modfiles expect ITG positioning, which is available as the "Lower" note position setting in the default theme. The player's Combo also moves down based on the current amount of Centered.

PlayerOptions format: Centered(\<magnitude\>, \<approach rate\>)

Example: `Centered(1. 0.5)`

Modstring format: *\<approach rate\> \<magnitude\> centered

example: `*0.5 100% centered`

<video src="/mods/vid/centered.webm" controls="">Centered video example</video>

## CenteredPath
Desc: While Centered moves the notefield down in position, CenteredPath moves the columns down their current path in multiples of the column's width (Commonly 64 pixels for dance mode). This consist amount allows for more consistent "driven drops" across different setups. In NotITG, this modifier is called `centered2`.

Large amounts of CenteredPath may be used because "driven drops" can span the whole screen height.

When combined with the opposite amount of MoveY in upscroll, interesting movement effects can be achieved.

Quirks: Because CenteredPath moves columns down the *path*, receptors may become affected by mods that otherwise would not affect them (As seen in the video example with Tornado), and note paths may look different.

PlayerOptions format: CenteredPath(\<magnitude\>, \<approach rate\>)

Example: `CenteredPath(2.5,0.23)`

Modstring format: *\<approach rate\> \<magnitude\> centeredpath

example: `*0.23 250% centeredpath`

<video src="/mods/vid/centeredpath.webm" controls="">CenteredPath video example</video>

## What's a "Driven Drop"?
Driven Drops are an effect where the notes are stationary while the receptor moves down to hit the notes. (As seen in the ITG course, "Driven")

Often, speed mod has to be taken into account for these (which can be made simpler by forcing a speed mod).

CenteredPath makes it easier due to using a consistent amount that doesn't depend on multiple theme metrics, but the resulting effect may look different.

## "SCAR" Gimmicks
Before column-specific Reverse existed, Combinations of Split, Cross, Alternate and Reverse (SCAR, for short) were used to generate column-specific reverse in 4 panel modes. Here's what's possible when combining the modifiers.

SPLIT    |CROSS    |ALTERNATE|Reverse  | LDUR reversed (1 = reversed)
---------|---------|---------|---------|------
  50%    | -50%    |  50%    |  0%     | 0001
  50%    |  50%    | -50%    |  0%     | 0010
 -50%    |  50%    | -50%    |  0%     | 0100
  50%    |  50%    |  50%    |  0%     | 0111
 -50%    | -50%    | -50%    |100%     | 1000
   0%    |-100%    |   0%    |100%     | 1001
  50%    |   0%    |-100%    |100%     | 1010
  50%    | -50%    | -50%    |100%     | 1011
-100%    |   0%    |   0%    |100%     | 1100
 -50%    | -50%    |  50%    |100%     | 1101
 -50%    |  50%    | -50%    |100%     | 1110
