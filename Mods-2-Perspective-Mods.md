# Perspective Modifiers
Perspective modifiers tilt and skew the notefield itself to allow for a feeling of depth. Scripted modfiles can use these to do effects like rocking the notefield back and forth among other effects (And is definitely noticable with 3D noteskins).

Unlike most modifiers available through PlayerOptions, these functions only return values in terms of tilt and skew and don't return the current/previous approach rate. Perspecitve modifiers aren't column-specific either.

## Hallway
Desc: The notefield is tilted away from the player, so that notes start far away and come closer. Very noticable with 3D noteskins.

Tilt is negative, while Skew is at zero.

Common ranges can go from 50% to 150%, while the Player Options menu uses 100%.

Negative magnitudes activate Distant instead.

Quirks: Going over 150% Hallway may result in the notefield's draw distance limit showing up, or even result in the notefield rotating over 90 degrees and becoming unreadable.

PlayerOptions format: Hallway(\<magnitude\>, \<approach rate\>)

Example: `Hallway(1.5, 1)`

Modstring format: *\<approach rate\> \<magnitude\> hallway

Example: `*1 150% hallway`

Video example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/hallway.webm

## Distant
Desc: The notefield is tilted towards the player, so that notes start close to the screen and go away. Very noticable with 3D noteskins.

Tilt is positive, while Skew is at zero.

Common ranges can go from 50% to 200%, while the Player Options menu uses 100%.

Negative magnitudes activate Hallway instead.

Quirks: Going over 200% Distant may result in the notefield rotating over 90 degrees and becoming unreadable.

PlayerOptions format: Distant(\<magnitude\>, \<approach rate\>)

Example:  `Distant(2, 2)`

Modstring format: *\<approach rate\> \<magnitude\> distant

Example: `*2 200% distant`

Video example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/distant.webm

## Incoming
Desc: The notefield is tilted away from the player, like Hallway, but the notefield is also skewed so that notes approach from the middle of the screen.

Tilt is negative, while Skew is positive.

Common ranges can go from -150% to 150%, while the Player Options menu uses 100%.

Quirks: Going over 150% Incoming may result in the notefield's draw distance limit showing up, or even result in the notefield rotating over 90 degrees and becoming unreadable.

PlayerOptions format: Incoming(\<magnitude\>, \<approach rate\>)

Example: `Incoming(1.5, 1)`

Modstring format: *\<approach rate\> \<magnitude\> incoming

Example: `*1 150 incoming`

Video example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/incoming.webm

## Space
Desc: The notefield is tilted away from the player, like Distant, but the notefield is also skewed so that notes approach from the sides of the screen.

Tilt and Skew are positive.

Common ranges can go from -150% to 200%, while the Player Options menu uses 100%.

Quirks: Going beyond the common range may result in the notefield's draw distance limit showing up, or even result in the notefield rotating over 90 degrees and becoming unreadable.

PlayerOptions format: Space(\<magnitude\>, \<approach rate\>)

Example: `Space(1, 3)`

Modstring format: *\<approach rate\> \<magnitude\> space

Example: `*3 100% space`

Video example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/space.webm

## Overhead
Desc: The notefield is parallel to the screen, and appears directly flat. Returns whether both tilt and skew are at zero before the function was called.

Both Tilt and Skew are at zero.

Quirks: N/A

PlayerOptions format: Overhead(\<Set Overhead?\>, \<approach rate\>)

Example: `Overhead(true, 0.2)`

Modstring format: *\<approach rate\> overhead

Example: `*0.2 overhead`

Video example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/overhead.webm

# Perspective Modifier Controllers
These modifiers control the internal parts of the modifiers above, and generally shouldn't be used unless finer control is desired. Like the perspective modifiers, these aren't column-specific either. Unlike the perspective modifiers, there is no modstring form for any of these, and the standard current/previous magnitude & approach rate are returned.

## Skew
Desc: Alters the vanish point of the notefield. Positive values move the point towards the middle of the screen, with 100% being fully on the center, while negative values move it towards the sides of the screen.

Normally, this has the same ranges as Incoming & Space.

Quirks: Will have no visible effect when players are centered on the screen. Can result in interesting x axis movements from z axis modifiers.

PlayerOptions format: Skew(\<magnitude\>, \<approach rate\>)

Example: `Skew(10, 3)`

Video example: https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/skew.webm

## Tilt
Desc: Rotates the notefield on the x axis near the receptors so the arrows get closer or farther from the player when they initially appear. Positive values tilt the notefield away from the player, while negative values point it towards the player.

Normally, this has the same ranges as Distant & Hallway.

Quirks: Same as Distant and Hallway.

PlayerOptions format: Tilt(\<magnitude\>, \<approach rate\>)

Example: `Tilt(2, 4)`

Video example: See Distant & Hallway.