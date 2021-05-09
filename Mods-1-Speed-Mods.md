# Speed modifiers
These modifiers are used to control the scroll speed of notes in gameplay. These modifiers are not column-specific, unlike later mods described elsewhere.

Negative speed modifiers cannot be selected from the Player Options menu, nor can it be set through the lua functions PlayerOptions provides, but it can become negative through the use of mod strings (and some modfiles have taken advantage of that).

## XMod
Desc: The "X" in "XMod" is for multiply, with it often showing as 1x or 2.5x or some other multiplier value followed by an x.
Larger multiplier numbers result in a faster scroll.
This speed mod type is capable of showing BPM changes, stops and other chart segment types.
Often ranges of 1 to 4 (and in between at practically any specified granularity) can be common.

Quirks: When setting this through the lua function it will immediately override CMod, MMod or AMod unlike how it functions in courses or modstring-based modfiles.

PlayerOptions format: XMod(\<multiplier\>,\<approach rate\>)

Example: `XMod(2.5, 0.5)`

Modstring format: *\<approach rate\> \<multiplier\>x

Example: `*0.5 2.5x`

## CMod
Desc: The "C" in "CMod" is for "Constant BPM Scroll", with it often showing as C200 or C450.5 or some other BPM value preceded by a C.
Larger BPM values result in faster scroll speeds.
This speed mod type visibly ignores chart segments and only shows a constant speed. (some forks of SM even disqualify if the chart has BPM changes and CMod is used!) Other modifiers still work on CMod, though.

Often ranges of 200 to 400 (and in between at practically any specified granularity) can be common, but some people may be more comfortable reading at slower or faster speeds.

Quirks: When setting this through the lua function it will immediately override XMod, MMod or AMod unlike how it functions in courses or modstring-based modfiles.

PlayerOptions format: CMod(\<BPM Value\>,\<approach rate\>)

Example: `CMod(200, 0.5)`

Modstring format: *\<approach rate\> c\<BPM value\>

Example: `*0.5 c200`

## MMod
Desc: The "M" in "MMod" is for "Maximum BPM Scroll", with it often showing as m200 or m450.5 or some other BPM value preceded by an m.
Unlike CMod, this speed modifier supports everything that XMod does.
Instead of specifying a BPM speed for the whole song, this specifies the maximum scroll speed that will be used.

Often ranges of 200 to 400 (and in between at practically any specified granularity) can be common, but some people may be more comfortable reading at slower or faster speeds.

Quirks: The magnitude is in the hundreds most of the time, so a larger approach rate might be needed.

PlayerOptions format: MMod(\<BPM Value\>,\<approach rate\>)

Example: `MMod(200, 0.5)`

Modstring format: *\<approach rate\> m\<BPM value\>

Example: `*0.5 m200`

## AMod
Desc: The "A" in "AMod" is for "Average BPM Scroll", with it often showing as a200 or a450.5 or some other BPM value preceded by an a.
Like MMod, this modifier supports everything XMod supports, and the song's BPM is used in calculations, the average of the song's BPMs is calculated instead of the maximum BPM being used. (and the amount of time a BPM lasts for is taken into account, too)

Often ranges of 200 to 400 (and in between at practically any specified granularity) can be common, but some people may be more comfortable reading at slower or faster speeds.

Quirks: The magnitude is in the hundreds most of the time, so a larger approach rate might be needed.

PlayerOptions format: AMod(\<BPM Value\>,\<approach rate\>)

Example: `AMod(200, 0.5)`

Modstring format: *\<approach rate\> a\<BPM value\>

Example: `*0.5 a200`

## RandomSpeed
Desc: Each note is given a random addition to its' speed mod, with larger additions being applied when a higher magnitude is used. This does not have column-specific controls.

Normally, 100 is the magnitude used (as it's not commonly used in modfiles), but other values are valid.

Quirks: Only values greater than zero have any visual effect. Missed notes revert to the actual speed mod upon passing the receptors.

PlayerOptions format: RandomSpeed(\<magnitude\>,\<approach rate\>)

Example: `RandomSpeed(1, 0.125)`

Modstring format: *\<approach rate> \<magnitude\> randomspeed

Example: `*0.125 100% randomspeed`

![RandomSpeed video example](/vid/randomspeed.webm ':include :type=video')

# Speed Modifier Controllers
These modifiers control the internal parts of the speed modifiers above, and usually shouldn't be used unless there's a good reason to. Like the speed mods above, these aren't column-specific either, but can support negative numbers like how the modstrings do. Unlike the speed modifiers listed above, there is no modstring form for any of these.

## TimeSpacing
Desc: Allows one to switch between CMod and the remaining mods. At 100%, this tells the game to use CMods. 0% means use XMod/MMod/AMod.

It's tweenable like other modifiers, which allows one to tween 'between' CMods and the other mods.

Often the values used only range between 0 and 100%

Quirks: The 'tweening' capability can cause interesting stutter effects while tweening. Some modfiles take advantage of this. This cannot be replicated with the plain CMod & XMod PlayerOptions functions, but can be replicated with modstrings.

PlayerOptions format: TimeSpacing(\<magnitude\>, \<approach rate\>)

Example: `TimeSpacing(1)`

## ScrollBPM (Used for CMod, values are BPMs)
Desc: This is the underlying BPM value that CMod uses.
Common values are the same as those for CMod.

Quirks: Like the BPM-based speed mods, the magnitude is often in the 100s, so a larger approach rate might be needed.

PlayerOptions format: ScrollBPM(\<BPM value\>, \<approach rate\>)

Example: `ScrollBPM(1, 2)`

## AvarageScrollBPM
Desc: This is the underlying BPM value that AMod uses. When this is zero, AMod is turned off.
Common values are the same as those for AMod.

Quirks: Like the BPM-based speed mods, the magnitude is often in the 100s, so a larger approach rate might be needed.

PlayerOptions format: AvarageScrollBPM(\<BPM value\>, \<approach rate\>)

Example: `AvarageScrollBPM(200, 0.5)`

## MaxScrollBPM
Desc: This is the underlying BPM value that MMod uses. When this is zero, MMod is turned off, and AMod is able to be used.
Common values are the same as those for MMod.

Quirks: Like the BPM-based speed mods, the magnitude is often in the 100s, so a larger approach rate might be needed.

PlayerOptions format: MaxScrollBPM(\<BPM value\>, \<approach rate\>)

Example: `MaxScrollBPM(200, 0.5)`

## ScrollSpeed
Desc: This is the underlying multiplier value that XMod uses.
Common values are the same as those for XMod.

Quirks: N/A

PlayerOptions format: ScrollSpeed(\<multiplier\>, \<approach rate\>)

Example: `ScrollSpeed(2.5, 0.5)`
