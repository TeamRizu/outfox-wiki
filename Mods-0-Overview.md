# Modifiers
Modifiers often change or affect some aspect of the gameplay, usually by messing with the game's notefield. Some modifiers can be selected through the options menu before starting a song, but there are also simfiles with scripted modifiers that tend to have a wildly different experience than just a regular simfile. (Generally, they're known as "modfiles")

## General notes
Often, modifiers (or "mods") have what's called an "approach rate", which is how fast it'll go to reach the specified value.
When not specified, an approach rate of 1 is used, which means 100% per second.

So, if you have a modifier that goes from 0 to 200%, it will take 2 seconds, while 200% to -150% would take 3.5 seconds.
The approach rate can be a floating point number, so values like 0.24523 or 3.7 are valid.

Approach rates cannot be negative in SM5.3 alpha 4.8.2 or earlier, or it will crash.

In "NotITG" & SM5.3 alpha 4.8.3 and later, negative approach rates (specifically -1 in NotITG, but in general on SM5) are used to signify "instant" rates. in older versions of SM5, you can use large approach rate numbers (such as 10000 or 9e9) to achieve this.

Magnitude is usually shown in the form of percentages for modifiers, and are capable of being negative, unless otherwise noted.

There are also column-specific modifiers. This affect a single column instead of the whole notefield. In NotITG, column numbering starts at 0, while it starts at 1 in SM5.

For the column-specific lua functions (except for gradients, mentioned later), `nil` can be given as the column to affect all columns of a player. (Does not work in alpha 4.8.2 of SM5.3 or earlier)

## Modstrings
Normally these modifiers will have a modstring form that follows this general format: `*<approach rate> <percentage>% <mod name>` but some modifiers, like speed mods, may not follow that format.

When not given a percentage, 100% is assumed. `no` is another way to say `0%` as well.

eg: `*2 bumpy` is the same as `*2 100% bumpy`.

The `%` is optional and modstrings can work without it, but it's there for visual convenience.

eg: `*2 200 bumpy` is the same as `*2 200% bumpy`.

The mod name is case insensitive.

These modstrings can be used either by simfile ATTACKS, course MODS, or through PlayerOptions' FromString function.
Smaller numbers like 0.5 require the preceding 0.

Any modifier or sub modifier that is boolean has a turning point of 50%. Giving 50% or more will turn it on, while 49% or lower will turn it off.

## PlayerOptions Functions
Going from modstrings to PlayerOptions functions, the magnitude has to be divided by 100 most of the time, and mod names are now case sensitive.

When calling a PlayerOptions function, they often have an optional final boolean parameter that can be placed after all of the parameters that allows for function chaining similar to what Actor does, allowing for something like this:

`XMod(2.5, 3, true):Drunk(-0.75, 2.7)`

When passed nothing in the parameters, the function returns two values: the current magnitude, the current approach rate.
However, when passed in parameters, the previous values for magnitude and rate are returned.

You can grab a player's PlayerOptions for scripting purposes by doing the following:
`local po = {GAMESTATE:GetPlayerState('PlayerNumber_P1'):GetPlayerOptions('ModsLevel_Song'),GAMESTATE:GetPlayerState('PlayerNumber_P2'):GetPlayerOptions('ModsLevel_Song')}`

This stores them into a table for easy access at any point during the song. `po[1]` is what you'd use to affect Player 1, while `po[2]` affects Player 2. Both will need to be used to affect both players with the same mods.

Simfile ATTACKS and course MODS will override & reset anything set through lua on the Song level, and cannot be player-specific.

## Video Examples
The video examples for the modifiers use an excerpt of GPOP's expert chart for "My Story" from the "G.P.O.P.S. 3" pack.

The speed mod used is 1.5x, and the noteskin usually is the default noteskin for dance mode, with Exact3D used when needed.

The magnitude used in the video examples also may not be the value used in the textual example.