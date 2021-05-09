# Chart Modifiers
Chart modifiers affect the chart itself, meaning what has to be stepped changes. These cannot be called during gameplay, but can be called through attacks & course files. All of these are boolean modifiers. At the moment, some of these aren't properly set up for any game other than dance.

# "Transform" Modifiers
Transform modifiers add or remove or alter notes from the chart, affecting how the chart has to be played. Some of these might disqualify your score depending on what version of SM is played. The list is shown in application order, from first to apply to last. (With exception to the first one).

## AttackMines (SM5 only)
Desc: When active, all mines apply a random attack when hit, and all other effects that come with hitting mines still happens.

Quirks: Appears to be activatable mid-gameplay?

PlayerOptions format: AttackMines(<enable>)

Modstring format: <enable> attackmines

## Little
Desc: Removes all notes that aren't on 4ths.

Quirks: N/A

PlayerOptions format: Little(<enable>)

Modstring format: <enable> little

## NoRolls
Desc: All rolls become normal holds.

Quirks: N/A

PlayerOptions format: NoRolls(<enable>)

Modstring format:  <enable> norolls

## NoHolds
Desc: All holds are replaced with a single tap note where the hold would start. Has a modstring alias of "nofreeze".

Quirks: N/A

PlayerOptions format: NoHolds(<enable>)

Modstring format: <enable> noholds

## NoMines
Desc: All mines are removed from the chart.

Quirks: N/A

PlayerOptions format: NoMines(<enable>)

Modstring format: <enable> nomines

## NoJumps
Desc: All jumps are removed from the chart, meaning a single note would be left where a jump would have been. Also affects hands (3 notes at once) and quads (4 notes at once).

Quirks: N/A

PlayerOptions format: NoJumps(<enable>)

Modstring format: <enable> nojumps

## NoLifts (SM5 only)
Desc: Removes all lift notes from the chart.

Quirks: N/A

PlayerOptions format: NoLifts(<enable>)

Modstring format: <enable> nolifts

## NoFakes (SM5 only)
Desc: Removes all fake notes from the chart.

Quirks: N/A

PlayerOptions format: NoFakes(<enable>)

Modstring format: <enable> nofakes

## NoHands
Desc: Removes notes until there are no more than two columns being hit at a given time.

Quirks: N/A

PlayerOptions format: NoHands(<enable>)

Modstring format: <enable> nohands

## NoQuads
Desc: Removes notes until there are no more than three columns being hit at a given time.

Quirks: N/A

PlayerOptions format: NoQuads(<enable>)

Modstring format: <enable> noquads

## NoStretch
Desc: Eliminates jumps (2 notes at once) such that there's only one note left where there would be two. Does not affect hands (3 notes at once) or quads (4 notes at once).

Quirks: N/A

PlayerOptions format: NoStretch(<enable>)

Modstring format: <enable> nostretch

## Big
Desc: Adds 8th notes between the 4th notes when possible.

Quirks: N/A

PlayerOptions format: Big(<enable>)

Modstring format: <enable> big

## Quick
Desc: Adds 16th notes between the 8th notes when possible.

Quirks: N/A

PlayerOptions format: Quick(<enable>)

Modstring format: <enable> quick

## BMRize
Desc: Performs Big, then Quick on the chart, supposedly "BMR-izing" it.

Quirks: N/A

PlayerOptions format: BMRize(<enable>)

Modstring format: <enable> bmrize

## Skippy
Desc: Adds 16th notes between 4th notes.

Quirks: N/A

PlayerOptions format: Skippy(<enable>)

Modstring format: <enable> skippy

## Mines
Desc: Adds more mines.

Quirks: N/A

PlayerOptions format: Mines(<enable>)

Modstring format: <enable> mines

## Echo
Desc: Adds 8th note "echos" after all tap notes.

Quirks: N/A

PlayerOptions format: Echo(<enable>)

Modstring format: <enable> echo

## Wide
Desc: Turns all single 4th notes into jumps.

Quirks: N/A

PlayerOptions format: Wide(<enable>)

Modstring format: <enable> wide

## Stomp
Desc: Turns all relatively isolated 4th notes into jumps.

Quirks: N/A

PlayerOptions format: Stomp(<enable>)

Modstring format: <enable> stomp

## Planted
Desc: Turns notes into holds such that there is at least one hold being held throughout the whole chart.

Quirks: N/A

PlayerOptions format: Planted(<enable>)

Modstring format: <enable> planted

## Floored
Desc: Turns notes into holds such that there is at least two holds being held throughout the whole chart.

Quirks: N/A

PlayerOptions format: Floored(<enable>)

Modstring format: <enable> floored

## Twister
Desc: Turns notes into holds such that there is at least three holds being held throughout the whole chart.

Quirks: N/A

PlayerOptions format: Twister(<enable>)

Modstring format: <enable> twister

## HoldRolls
Desc: Turns all holds into rolls. Goes by "holdstorolls" in ITG.

Quirks: N/A

PlayerOptions format: HoldRolls(<enable>)

Modstring format: <enable> holdrolls

# "Turn" Modifiers
Turn modifiers shift around the chart, but do not add or remove any notes. These are applied after the transform modifiers, so inserted notes get affected as well. They can be turned off all at once by using this modstring: `0% turn`

## Mirror
Desc: The notes are mirrored across the field.

Quirks: N/A

PlayerOptions format: Mirror(<enable>)

Modstring format: <enable> mirror

## Backwards (SM5 only)
Desc: The chart is 'rotated' 180 degrees, which may not be the same as 'mirror'.

Quirks: N/A

PlayerOptions format: Backwards(<enable>)

Modstring format: <enable> backwards

## Left
Desc: The chart is 'rotated' 90 degrees to the left.

Quirks: N/A

PlayerOptions format: Left(<enable>)

Modstring format: <enable> left

## Right
Desc: The chart is 'rotated' 90 degrees to the right.

Quirks: N/A

PlayerOptions format: Right(<enable>)

Modstring format: <enable> right

## Shuffle
Desc: Mixes around where the notes are.

Quirks: N/A

PlayerOptions format: Shuffle(<enable>)

Modstring format: <enable> shuffle

## SoftShuffle
Desc: Randomly performs either not shuffling, swapping of L+R, swapping of U+D or mirroring on every row.

Quirks: N/A

PlayerOptions format: SoftShuffle(<enable>)

Modstring format: <enable> softshuffle

## SuperShuffle
Desc: Runs Shuffle, then performs an extra shuffle on the tap notes (includes normal taps, fakes, mines and lifts) alone.

Quirks: N/A

PlayerOptions format: SuperShuffle(<enable>)

Modstring format: <enable> supershuffle
