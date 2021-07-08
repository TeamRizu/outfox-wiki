---
title: "Visibility"
weight: -2
---

## Visibility Modifiers
Visibility modifiers hide various parts of the gameplay screen, such as the background, notes, receptors and other things.

## Cover
Desc: Cover hides the song background. The range between fully lit and fully hidden scales based on the current value of the BGBrightness preference.

Use negative amounts to bring back the background if BGBrightness is less than 1. A lot of modfiles use large amounts of negative cover to deal with any positive value BGBrightness could have.

If used on only one player, only that player's side will have the background dimmed/hidden, with a fade in the middle between the two players.

Quirks: If BGBrightness is at 0, then no amount of negative Cover can bring back the background.

PlayerOptions format: Cover(\<magnitude\>, \<approach rate\>)

Example: `Cover(0.5, 0.5)`

Modstring format: *\<approach rate\> \<magnitude\> cover

Example: `*0.5 50% cover`

## Blind
Desc: Blind hides the information relating to judgment & combo.

Unlike most On/Off modifiers, this modifier is float-based. Any positive magnitude will turn it on.

Quirks: In OpenITG, the noteflashes also turn into all fantastic (W1) noteflashes, which is why some of the modding community discourages its' use.

PlayerOptions format: Blind(\<magnitude\>, \<approach rate\>)

Example: `Blind(1,1)`

Modstring format: *\<approach rate\> \<magnitude\> blind

Example: `*1 100% blind`

## HideHoldJudgments
Desc: Hides the OK/NG judgments that appear upon the end of a hold note. It's called "hoholdjudge" or "halgun" in NotITG.

Quirks: N/A

PlayerOptions format: HideHoldJudgments(\<enable\>)

Example: `HideHoldJudgments(true)`

Modstring format: \<enable\> hideholdjudgments

Example: `100% hideholdjudgments`

## HideNoteFlash
Desc: Turns off the noteflashes for a given column. Since alpha 4.8.3, all columns can't be hit from the modstring (possible in NotITG), but can be done through the lua function. Also known as "hidenoteflashes" in NotITG.

Quirks: N/A

Available variants (modstring): hidenoteflash\<column\>, hidenoteflash (NotITG alias that hits all columns), hidenoteflashes\<column\> (NotITG alias), hidenoteflashes (NotITG alias that hits all columns)

PlayerOptions format: HideNoteFlashCol(\<column\>, \<magnitude\>, \<approach rate\>)

Example: `HideNoteFlashCol(2, true)`

Modstring format: \<enable\> \<modstring variant\>

Example: `100% hidenoteflash2`

## MinTNSToHideNotes
Desc: This sets the minimum judgment that is needed to hide the notes upon hitting. There is no modstring form.

Quirks: The default is set in Preferences.ini, holds aren't subject to this setting.

PlayerOptions format: MinTNSToHideNotes(\<TapNoteScore enum\>)

Example: `MinTNSToHideNotes('TapNoteScore_W1')`

## DrawSize
Desc: DrawSize is a set of modifiers that affect how far down and up the notefield will draw notes.

DrawSize affects notes below the receptor (usually notes that have yet to be hit), while DrawSizeBack affects notes above the receptor (usually notes that were visibly missed)

Not often used unless some mod effects need a longer or shorter field, but can be used to ensure a consistent field length across multiple setups through ratios.

Quirks: The farther the notefield is allowed to draw, the more notes will be on-screen, which can hurt game performance. This is a multiplier, so it depends on your theme's metrics.

Available variants: DrawSize, DrawSizeBack

Available variants (modstring): drawsize, drawsizefront (NotITG alias for drawsize), drawdistance (NotITG alias for drawsize), drawdistancefront (NotITG alias for drawsize), drawsizeback, drawdistanceback (NotITG alias for drawsizeback)

PlayerOptions format: \<DrawSize variant\>(\<magnitude\>, \<approach rate\>)

Example: `DrawSize(-0.5,1)`

Modstring format: *\<approach rate\>, \<magnitude\> \<modstring variant\>

Example: `*1 -50% drawsize`

## Dark
Desc: Dark hides the receptors (but not the noteflashes). There is a column-specific variant and it adds onto the normal variant.

Because of this additive property, the range often used can go between -100 and 100%.

Quirks: N/A

Available variants: Dark, DarkCol

Available variants (modstring): dark, dark\<column\>

PlayerOptions format: Dark(\<magnitude\>, \<approach rate\>)

Example: `Dark(1, 0.125)`

Column-specific format: DarkCol(\<column\>, \<magnitude\>, \<approach rate\>)

Example: `DarkCol(1, 0.25, 1, true):DarkCol(2, 0.5, 1, true):DarkCol(3, 0.75, 1, true):DarkCol(4, 0.90, 1, true)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*0.125 100% dark` `*1 25% dark1, *1 50% dark2, *1 75% dark3, *1 90% dark4`

<video src="/mods/vid/dark.webm" controls="">Dark video example</video>

## Stealth
Desc: Stealth hides the notes. When activating, notes start glowing white (0 to 50%), and then the glow fades away to an invisible note (50 to 100%). There's a column-specific version. All variants add onto eachother, so it's possible to have one variant at 100%, and undo it for another type with a different variant at -100%.

Because of this additive property, the range often used can go between -100 and 100%.

StealthMines affects the mines only, while StealthHolds only affects the hold bodies (topcap, body, bottomcap)

NotITG has column-specific versions of those variants, too.

Quirks: N/A

Available variants: Stealth, StealthCol, StealthHolds, StealthMines

Available variants (modstring): stealth, stealth\<column\>, stealthmines, minestealth (NotITG's name for stealthmines), minestealth\<column\> (NotITG only), hidemines (NotITG alias), hidemines\<column\> (NotITG alias), stealthholds, holdstealth (NotITG's name for stealthholds), holdstealth\<columns\> (NotITG's only), hideholds (NotITG alias), hideholds\<column\> (NotITG alias)

PlayerOptions format: \<Stealth variant\>(\<magnitude\>, \<approach rate\>)

Example: `Stealth(0.90, 1, true):StealthMines(-0.4, 1)`

Column-specific format: StealthCol(\<column\>, \<magnitude\>, \<approach rate\>)

Example: `StealthCol(1, 0.25, 1, true):StealthCol(2, 0.5, 1, true):StealthCol(3, 0.75, 1, true):StealthCol(4, 0.90, 1, true)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*1 90% stealth, *1 -40% stealthmines` `*1 25% stealth1, *1 50% stealth2, *1 75% stealth3, *1 90% stealth4`

<video src="/mods/vid/stealth.webm" controls="">Stealth video example</video>

### Available sub modifiers:
## StealthType
Desc: When active, Stealth, Sudden, Hidden, Blink and RandomVanish act based on y offset (distance from the receptor) instead of the visible y position on the screen.

PlayerOptions format: StealthType(\<enable\>)

Modstring format: \<enable\> stealthtype

## StealthPastReceptors
Desc: When active, Stealth, Sudden, Hidden, Blink and RandomVanish will not revert to zero upon passing the receptors.

PlayerOptions format: StealthPastReceptors(\<enable\>)

Modstring format: \<enable\> stealthpastreceptors


## Sudden
Desc: Notes start invisible and appear at around the middle of the notefield.

Due to how Stealth works, values between -100 and 100% usually get used.

Quirks: When combined with Hidden, the appearance point moves down.

PlayerOptions format: Sudden(\<magnitude\>, \<approach rate\>)

Example: `Sudden(1, 1)`

Modstring format: *\<approach rate\> \<magnitude\> sudden

Example: `*1 100% sudden`

<video src="/mods/vid/sudden.webm" controls="">Sudden video example</video>

### Available sub modifiers:
### SuddenOffset
Desc: Shifts the point where the notes appear. Positive values shifts the point away from the receptors, while negative values shift it towards the receptors.

PlayerOptions format: SuddenOffset(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> suddenoffset


## Hidden
Desc: Notes start visible and disappear at around the middle of the notefield.

Due to how Stealth works, values between -100 and 100% usually get used.

Quirks: When combined with Sudden, the disappearance point moves up.

PlayerOptions format: Hidden(\<magnitude\>, \<approach rate\>)

Example: `Hidden(0.75, 1)`

Modstring format: *\<approach rate\> \<magnitude\> hidden

Example: `*1 75% hidden`

<video src="/mods/vid/hidden.webm" controls="">Hidden video example</video>

### Available sub modifiers:
## HiddenOffset
Desc: Shifts the point where the notes disappear. Positive values shifts the point away from the receptors, while negative values shift it towards the receptors.

PlayerOptions format: HiddenOffset(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> hiddenoffset


## Blink
Desc: The notes blink in and out of sight. The blinking itself is based on game uptime.

Unlike most modifiers, this only has an on and off state. Any positive magnitude will work.

Quirks: Due to the magnitude not affecting anything and the clock being based on game uptime (unless ModTimer is changed), Blink is considered a bad mod in terms of scripted modfiles, and its' use is discouraged.

PlayerOptions format: Blink(\<magnitude\>, \<approach rate\>)

Example: `Blink(1, 1)`

Modstring format: *\<approach rate\> \<magnitude\> blink

Example: `*1 100% blink`

<video src="/mods/vid/blink.webm" controls="">Blink video example</video>

## RandomVanish
Desc: The notes disappear, then reappear in a different/random column. NotITG supposedly has an offset sub modifier. NotITG also split this modifier into separate "Randomize" and "Vanish" modifiers.

Not used that much.

Quirks: The "Random" feature of "RandomVanish" was removed in SM5 beta2a, but should fully work in NotITG.

PlayerOptions format: RandomVanish(\<magnitude\>, \<approach rate\>)

Example: `RandomVanish(1, 1)`

Modstring format: *\<approach rate\> \<magnitude\> randomvanish

Example: `*1 100% randomvanish`

<video src="/mods/vid/randomvanish.webm" controls="">RandomVanish video example</video>
