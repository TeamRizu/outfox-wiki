---
title: "Miscellaneous modifiers"
weight: 4
---

# Miscellaneous Modifiers
These modifiers don't really fit into any of the above categories, so they're here instead.

## "clearall"
Desc: Tells PlayerOptions to do a reset. Often used in modfiles to mimic crs-style resetting. Only available in modstring form right now.

Quirks: N/A

Modstring format: clearall

## HoldGrainMult
Desc: Adds a multiplier to the 'step size' of holds, allowing one to control how 'granular' a hold is. In NotITG, this is known as "granulate" or "grain" (alias).

Negative values make the hold smoother (with a 'limit' of -93.75% which results in a step size of 1 pixel), but could cost performance due to the extra calculations being done. Positive values make the hold look more polygonal (with no real limit). Very noticable on modifiers that work on position, like Drunk.

Common values can range from practically anywhere due to it being a multiplier. Try starting with -50% or 100% and go further if extra points or less points are desired.

Quirks: In NotITG, this modifier works a bit differently. At 0%, the holds are drawn with the normal stepsize, but the magnitude when nonzero controls the step size in pixels (100% = step size of 1 pixel, 400% = step size of 4 pixels (normal in NotITG)). This means NotITG can have step sizes below 1 pixel.

PlayerOptions format: HoldGrainMult(\<magnitude\>, \<approach rate\>)

Example: `HoldGrainMult(4, 2)`

Modstring format: *\<approach rate\> \<magnitude\> holdgrainmult

Example: `*2 400% holdgrainmult`

<video src="/mods/vid/holdgrainmult.webm" controls="">HoldGrainMult video example</video>

## ExtendHolds
Desc: Adds a multiplier to the visual length of holds. In NotITG, this is known as "longholds", "longboy" (alias) or "longboys" (alias).

Common values range from -100% to 300%

Quirks: N/A

PlayerOptions format: ExtendHolds(\<magnitude\>, \<approach rate\>)

Example: `ExtendHolds(0.5, 1)`

Modstring format: *\<approach rate\> \<magnitude\> extendholds

Example: `*1 50% extendholds`

<video src="/mods/vid/extendholds.webm" controls="">ExtendHolds video example</video>

## StraightHolds
Desc: Makes holds react less to mods, similar to what holds do in "Pump It Up". NotITG has an alias called "gayholds", which applies negative straightholds (so 100% gayholds = -100% straightholds). There is also a column-specific variant.

Common values range from -100 to 200%

Quirks: N/A

Available variants (modstring): straightholds, gayholds (NotITG negative alias), straightholds\<column\>, gayholds\<column\> (NotITG negative alias for straightholds\<column\>)

PlayerOptions format: StraightHolds(\<magnitude\>, \<approach rate\>)

Example: `StraightHolds(1, 0.2)`

Column-specific format: StraightHoldsCol(\<column\>, \<magnitude\>, \<approach rate\>)

Example: `StraightHoldsCol(3, 2, 0.5)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*0.2 100% straightholds` `*0.5 200% straightholds3`

<video src="/mods/vid/straightholds.webm" controls="">StraightHolds video example</video>

## NotePath
Desc: Draws a line that shows the path a note takes to the receptor and beyond, which means it depends on all position mods that are in the game. Known as "arrowpath" in NotITG. Effectively a 'hold' that lasts the whole notefield, so it could hurt performance depending on what mods are being used. Has a column-specific variant available which is additive like Stealth & Dark.

Common values range from -100 to 100% due to the additive nature.

Quirks: N/A

Available variants (modstring): notepath, notepath\<column\>, arrowpath (NotITG name), arrowpath\<column\> (NotITG name)

PlayerOptions format: NotePath(\<magnitude\>, \<approach rate\>)

Example: `NotePath(1, 0.4)`

Column-specific format: NotePathCol(\<column\>, \<magnitude\>, \<approach rate\>)

Example: `NotePathCol(4, 1, 0.4)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*0.4 100% notepath` `*0.4 100% notepath4`

<video src="/mods/vid/notepath.webm" controls="">NotePath video example</video>

### Available sub modifiers:
## NotePathBlendMode
Desc: Set the blend mode used for the NotePath. This does not have a modstring form, and in NotITG, is only available in Player.

PlayerOptions format: NotePathBlendMode(\<blend mode\>)

NotITG Player format: SetArrowPathBlendMode(\<blend mode\>)

## NotePathDrawMode
Desc: Set the secondary draw mode used for the NotePath. It allows for different 'looks' for the notepath. For example, "DrawMode_Fan" creates a veil-type visual with 50% NotePath, while "DrawMode_Lines" creates a dotted line.

This does not have a modstring form and does not reset with a clearall.

PlayerOptions format: NotePathDrawMode(\<draw mode\>)

## NotePathGrainMult
Desc: Allows for adjusting the step size like what HoldGrainMult does for holds. The same notes from there apply here.

Available variants (modstring): notepathgrainmult, arrowpathgranulate (NotITG name), arrowpathgrain (NotITG alias)

PlayerOptions format: NotePathGrainMult(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

## NotePathWidth
Desc: Allows for adjusting how wide the notepath is. It's added onto the default, which is one pixel in theme-space.

At the moment, there is a GPU-enforced limit on the actual width. In NotITG, this can be worked around by turning off smoothlines (Which uses CPU-based quads, also has a side-effect of showing depth in the lines)

Available variants (modstring): notepathwidth, arrowpathsize (NotITG name), arrowpathgirth (NotITG alias), arrowpathwidth (NotITG alias)

PlayerOptions format: NotePathWidth(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

## NotePathDrawSize
Desc: Where DrawSize affects the notefield's rendering space, this affects the rendering space of NotePath. This is unaffected by normal DrawSize, but the rendering space starts out the same as a whole notefield.

Available variants: NotePathDrawSize (Affects area below the receptors), NotePathDrawSizeBack (Affects area above the receptors)

Available variants (modstring): notepathdrawsize, notepathdrawsizeback, arrowpathdrawsize (NotITG name for notepathdrawsize), arrowpathdrawsizefront (NotITG alias for notepathdrawsize), arrowpathdrawdistance (NotITG alias for notepathdrawsize), arrowpathdrawdistancefront (NotITG alias for notepathdrawsize), arrowpathdrawsizeback (NotITG name for notepathdrawsizeback), arrowpathdrawdistanceback (NotITG alias for notepathdrawsizeback)

PlayerOptions format: \<NotePathDrawSize variant\>(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>


## ModTimer
Desc: Allows one to set the timer used by many modifiers.

These are the following types (denoted as \<type\>):
- 'ModTimerType_Default' just go with the game's default timer type (5.2 defaults to song, 5.1 & OutFox default to game)
- 'ModTimerType_Game' (Use the game's current uptime in seconds.)
- 'ModTimerType_Song' (Use the song's current time in seconds.)
- 'ModTimerType_Beat' (Use the song's current beat.)

Often, song time is used as the setting.

Quirks: In NotITG, this is done by a single name ("modtimer", "timer" or "globalmodtimer") with magnitudes. 0% = game time, 100% = song time, 200% = song beat.

Available variants (modstring): modtimerdefault, modtimergame, modtimersong, modtimerbeat

PlayerOptions format: ModTimerSetting(\<type\>)

Example: `ModTimerSetting('ModTimerType_Beat')`

Modstring format: \<modstring variant\>

Example: `modtimerbeat`

Available sub modifiers:
### ModTimerMult
Desc: Add a multiplier onto the timer used for modifiers. 100% = 2x, -50% = 0.5x.

Available variants (modstring): modtimermult, timermult (NotITG alias), globalmodtimermult (NotITG alias)

PlayerOptions format: ModTimerMult(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

### ModTimerOffset
Desc: Offset the timer used for modifiers. 100% = 1 time unit.

Available variants (modstring): modtimeroffset, timeroffset (NotITG alias), globalmodtimeroffset (NotITG alias)

PlayerOptions format: ModTimerOffset(\<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

## NoteSkew
Desc: Applies skew on the notes and receptors. Does not affect holds. Comes in skewx & skewy variants, and is also column-specific. NotITG calls the skewx variant "noteskew" because they originally only had skewx.

Common values range from -200 to 200%

Quirks: N/A

Available variants: NoteSkewX, NoteSkewY

Column-specific variants: NoteSkewXCol, NoteSkewYCol

Available variants (modstring): noteskewx, noteskewx\<column\>, noteskew (NotITG name), noteskew\<column\> (NotITG name), noteskewy, noteskewy\<column\>

PlayerOptions format: \<NoteSkew variant\>(\<magnitude\>, \<approach rate\>)
Example: `NoteSkewX(0.7, 4)`

Column-specific format: \<NoteSkewCol variant\>(\<column\>, \<magnitude\>, \<approach rate\>)

Example: `NoteSkewXCol(1, 0.25, 0.25, true):NoteSkewXCol(2, 0.5, 0.5, true):NoteSkewXCol(3, 0.75, 0.75, true):NoteSkewXCol(4, 1, 1)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*4 70% noteskewx` `*0.25 25% noteskewx1, *0.5 50% noteskewx2, *0.75 75% noteskewx3, *1 100% noteskewx4`

<video src="/mods/vid/noteskewx.webm" controls="">NoteSkewX video example</video>

### Available sub modifiers:
## noteskewtype (NotITG only)
Desc: When active, the note skews get rotated (but not the receptors). In SM5, this can be often (mostly) replicated in dance by using the negative amount of NoteSkewY on columns 1 and 4.

Available variants (modstring): noteskewtype, skewtype (alias)

Modstring format: \<enable\> \<modstring variant\>


## TrigClip
Desc: Performs clipping on the trigonometric waves used in many modifiers and their variants.

The following are available:
- SinClip (sine wave clipping. Affects Wave (all non-tan variants), SpiralY, Bumpy (all non-tan variants), Beat (all variants), Zigzag (All variants), Digital (All non-tan variants), Bounce (All variants), Blink (All variants), Pulse (all non-tan variants),
- CosClip (cosine wave clipping. Affects Tornado (all non-tan varians), Tipsy (all non-tan variants), Expand, Drunk (all non-tan variants), SpiralX
- TanClip (tangent wave clipping, use values close to 100% for visible effects. Affects all tangent variants of all modifiers)

Quirks: Going beyond 100% may result in interesting effects on some modifiers. In NotITG, this was 'fixed'.

Common values range from 50 to 100%

PlayerOptions format: \<TrigClip variant\>(\<magnitude\>, \<approach rate\>)

Example: `CosClip(0.5, 0.5)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*0.5 50% cosclip`

<video src="/mods/vid/cosclip.webm" controls="">CosClip video example</video>

## DisableMines
Desc: When active, stepping on mines will not have any effect. Useful if you want to place mines for aesthetic purposes, but don't want to penalize players for ghost-tapping.

Quirks: N/A

PlayerOptions format: DisableMines(\<enable\>)

Example: `DisableMines(true)`

Modstring format: \<enable\> disablemines

Example: `disablemines`

## ZBuffer
Desc: When active, the zbuffer gets enabled regardless of modifiers active. Can act as an alternate way to enable zbuffer instead of using low amounts of z position modifiers. NotITG also allows having negative values to force it off. When the zbuffer is enabled, holds draw at a step size of 4 instead of 16. Also has "ztest" as an alias in NotITG.

Quirks: N/A

PlayerOptions format: ZBuffer(\<enable\>)

Example: `ZBuffer(true)`

Modstring format: \<enable\> zbuffer

Example: `zbuffer`

## Cosecant
Desc: When active, all tangent modifiers use a cosecant wave instead of a tangent wave, mimicking how NotITG v1 did tangent wave modifiers. Known as "cosec" or "glitchytan" (alias) in NotITG.

Quirks: N/A

PlayerOptions format: Cosecant(\<enable\>)

Example: `Cosecant(true)`

Modstring format: \<enable\> cosecant

Example: `cosecant`

<video src="/mods/vid/cosecant.webm" controls="">Cosecant video example</video>

## WireFrame
Desc: A Column-specific modifier that allows setting the column to use wireframe mode for notes and holds. NotITG has a modstring alias that hits all columns.

Quirks: Using a 3D noteskin is recommended if using this modifier.

Available variants (modstring): wireframe\<column\>, wireframe (NotITG alias that hits all columns)

PlayerOptions format: WireFrameCol(\<column\>, \<enable\>)

Example: `WireFrameCol(2, true)`

Modstring format: \<enable\> \<modstring variant\>

Example: `wireframe2`

<video src="/mods/vid/wireframe.webm" controls="">WireFrame video example</video>

### Available sub modifiers:
## WireFrameWidth
Desc: Like how NotePath has a width sub modifier, this affects the width of the wireframe lines.

Available variants (modstring): wireframewidth\<column\>, wireframegirth\<column\> (NotITG alias), wireframewidth (NotITG alias that hits all columns), wireframegirth (NotITG alias that hits all columns)

PlayerOptions format: WireFrameWidthCol(\<column\>, \<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>


## NoteSkin
Desc: Get and set the NoteSkin for the player.

Quirks: Returns both the previous name & if the set succeeded upon being given a string. Cannot be used to change noteskins mid-song (If forcing a noteskin, you have to reload the screen) like what OpenITG/SM3.95/NotITG has.

PlayerOptions format: NoteSkin(\<noteskin name\>)

Example: `NoteSkin('Metal')`

Modstring format: \<noteskin name\>

Example: `metal`

## NoteSkinCol
Desc: Allow getting and setting the noteskin on a column-basis. Unlike `NoteSkin`, this allows for changing the noteskin mid-song.

When used on a single column, the receptors will not change.

When \<column\> is nil, all columns will use the requested noteskin, and the receptors will change to match.

Quirks: Requires a Preferences.ini for the song that lists the noteskins to load. May not play nice when the noteskin isn't loaded. `NOTESKIN:DoesNoteSkinExist` could be used to ensure the noteskin exists before setting. The change is instant unlike noteskin changes done through attacks in OpenITG/SM3.95/NotITG.

PlayerOptions format: NoteSkinCol(\<column\>, \<noteskin name\>)

Example: `NoteSkinCol(nil, 'lambda')`

Modstring format: \<noteskin name\> noteskin\<column\> (ommitting column will hit all columns)

Example: `lambda noteskin`

<video src="/mods/vid/noteskincol.webm" controls="">NoteSkinCol video example</video>

## LifeSetting
Desc: Set the lifebar type to be used. There are three types (denoted as `<type>`):
- Bar (The normal lifebar most people are used to.) Modstring form is "bar".
- Battery (Mess up a certain number of times and you fail the song) Modstring form is "battery".
- Time (You have a limited amount of time to live. Hit notes better to gain time.) Modstring form is "lifetime".

Quirks: This cannot be set during gameplay. It must be set before entering ScreenGameplay.

PlayerOptions format: LifeSetting('LifeType_\<type\>')

Example: `LifeSetting('LifeType_Time')`

Modstring format: \<type\>

Example: `lifetime`

## DrainSetting
Desc: Set how the lifebar's health behavior works. There are three drain types (denoted as `<type>`):
- Normal (The health goes up and down at the expected rate.) Modstring form is "normal-drain".
- NoRecover (The health only goes down.) Modstring form is "norecover" or "power-drop".
- SuddenDeath (Getting any judgment below the required one will instantly kill you.) Modstring form is "suddendeath" or "death".

Quirks: Initial health will start at 100% when not using Normal drain. Initial health for Normal is a theme metric, as well as the minimum judgment for SuddenDeath. This also works mid-gameplay, allowing for sections that require good accuracy.

PlayerOptions format: DrainSetting('DrainType_\<type\>')

Example: `DrainSetting('DrainType_NoRecover')`

Modstring format: \<type\>

Example: `norecover`

## BatteryLives
Desc: Set how many lives are available in the Battery life bar at the start. Probably shouldn't be set mid-gameplay.

Quirks: N/A

PlayerOptions format: BatteryLives(\<number of lives\>)

Example: `BatteryLives(5)`

Modstring format: \<number of lives divided by 100\> lives

Example: `0.05% lives`

## RandAttack
Desc: When active, random attacks will be launched throughout the song. Any nonzero magnitude will activate it. Cannot be set through modstrings.

Quirks: The attacks chosen come from /Data/RandomAttacks.txt

PlayerOptions format: RandAttack(\<magnitude\>, \<approach rate\>)

Example: `RandAttack(1,1)`

## NoAttack
Desc: When active, RandAttack is canceled out. Any nonzero magnitude will activate it. Cannot be activated through modstrings.

Quirks: N/A

PlayerOptions format: NoAttack(\<magnitude\>, \<approach rate\>)

Example: `NoAttack(1,1)`

## PlayerAutoPlay
Desc: When active, AutoPlay will be set on the player. Cannot be set through modstrings.

Quirks: Do not set this during gameplay. Attempting to enable it will result in no input for the player and no autoplay, which will result in a stage fail.

PlayerOptions format: PlayerAutoPlay(\<magnitude\>, \<approach rate\>)

Example: `PlayerAutoPlay(1, 1)`

## Passmark
Desc: Set what life amount is required to pass a stage. Cannot be set through modstrings.

Quirks: N/A

PlayerOptions format: Passmark(\<magnitude\>, \<approach rate\>)

Example: `Passmark(0.5, 2)`

## MuteOnError
Desc: When active, keysounds will not play upon errors (letting go hold notes and/or missing).

Quirks: N/A

PlayerOptions format: MuteOnError(\<enable\>)

Example: `MuteOnError(true)`

Modstring format: \<enable\> muteonerror

Example: `muteonerror`

## FailSetting
Desc: Set how failing a song works. There are four drain types (denoted as `<type>`):
- Immediate (Song ends the moment you fail) Modstring forms are "failimmediate" and "failarcade".
- ImmediateContinue (Song continues after failure, but you still fail at the end) Modstring forms are "failendofsong" and "failimmediatecontinue".
- EndOfSong (Failure status is determined at the end of the song) Modstring form is "failatend".
- Off (You cannot fail.) Modstring form is "failoff".

The default can be set in modstrings through "faildefault"

Quirks: N/A

PlayerOptions format: FailSetting('FailType_\<type\>')

Example: `FailSetting('FailType_Off')`

Modstring format: \<type\>

Example: `failoff`
