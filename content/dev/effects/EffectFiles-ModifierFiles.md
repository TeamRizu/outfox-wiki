---
title: Modifier Files
weight: 3
---

These simfiles have modifiers that are scripted to happen at various points of the song. The difficulty can range between "trivial to read" to "may as well memorize the chart".

Often called "Modfiles" or "Modcharts".

These usually use the FGCHANGES or BGCHANGES of a simfile to load the lua files (if any are used).

Disclaimer: Make sure you've got making a chart down before starting to make modcharts! Good mods can't save a bad chart!

## How to Apply Modifiers

There are a few ways to go about this, and it varys depending on what version of SM is being used.

### ApplyGameCommand (SM3.95/oITG/nITG)

ApplyGameCommand is a GameState function that provides a way to send modifiers among other commands. The first paramter is the command type followed by the parameters. (In this case, a modstring) The second parameter is what player to apply the command (1 = player 1). If not specified, it applies to all players.

```lua
GAMESTATE:ApplyGameCommand("mod, *0.5 420 beat", 1)
```

While it's still available in SM5 (including OutFox), it's not recommended because it applies mods to the "Preferred" ModsLevel, which means modifiers apply instantly (no transition), and they persist outside of the simfile. SM5.2 Doesn't even have this function available.

### #MODS (Course files, SM3.95/oITG/nITG/SM5)

Old modfiles used to require going into marathon mode to play the scripted modifiers. Unlike most things, this is time-based due to charts being able to have stops.

```
#MODS:TIME=0.000:END=10.000:MODS=*0.5 420 beat;
#MODS:TIME=5.000:LEN=1.600:MODS=*2 50 stealth;
```
(ex: Beat starts at 0 seconds and ends at 10. Stealth turns on at 5 seconds and ends 1.6 seconds later)

Nowadays, this is considered obsolete in favor of lua-powered modifiers. It's still usuable in SM5.

### #ATTACKS (Simfiles, nITG/SM5)

Allows for the application of modifiers similar to what course files have. The syntax is exactly the same, just with MODS becoming ATTACKS.

```
#ATTACKS:TIME=0.000:END=10.000:MODS=*0.5 420 beat;
#ATTACKS:TIME=5.000:LEN=1.600:MODS=*2 50 stealth;
```

nITG accepts #ATTACKS or #MODS inside the .sm file, while SM5 only accepts #ATTACKS in sm & ssc.

These do not load in course mode, however.

### ApplyModifiers (nITG)

A dedicated function for applying modifiers without needing the processing overhead and "mod, " that ApplyGameCommand does.

```lua
GAMESTATE:ApplyModifiers("*0.5 420 beat", 1)
```

Often used as a replacement for ApplyGameCommand in nITG modfiles.

### PlayerOptions functions (SM5)

Every modifier has a setter function in PlayerOptions. This can be used in place of other functions. These are case-sensitive, though. If using strings, they'll have to be parsed to make use of these functions.

```lua
local po = {GAMESTATE:GetPlayerState(0):GetPlayerOptions('ModsLevel_Song'), GAMESTATE:GetPlayerState(1):GetPlayerOptions('ModsLevel_Song')}
po[1]:Beat(4.2, 0.5)
```

### SetPlayerOptions (SM5)

This function works by resetting the PlayerOptions for the given level, and setting it according to the string.

```lua
GAMESTATE:GetPlayerState(PLAYER_1):SetPlayerOptions('ModsLevel_Song', '*0.5 420 beat')
```

Because it resets PlayerOptions, it might not be so useful for applying scripted modifiers.

### FromString (SM5.1 and onwards)

Like how ApplyModifiers is specifically for modstrings in nITG, FromString provides direct access to the string parser used for modifiers in ApplyGameCommand, and works very much like how ApplyGameCommand would.

```lua
local po = {GAMESTATE:GetPlayerState(0):GetPlayerOptions('ModsLevel_Song'), GAMESTATE:GetPlayerState(1):GetPlayerOptions('ModsLevel_Song')}
po[1]:FromString("*0.5 420 beat")
```

## Modfile templates

Starting to make a modfile can seem really daunting if one does not know how to begin. Luckilly, there are many templates out there to help with creating modfiles.

Ones made for Open/NotITG and SM3.95 are usually done with .xml files, and some rare .lua files.

Ones made for SM5 are almost always .lua files.

<!--

TODO: I'm gonna need everyone else's help from the mods community when we start making this documentation public.

-->

### StepMania 5-Based templates

- MTK's OutFox port of Exschwasion's easing template
	- https://drive.google.com/open?id=1HfCFvTHZUI4dO_eAk4iN5mO3H61caHzE
	- Lost of local variables used up in the main scope to preserve syntax.
	- The place to put the actual calls is a little different.

- XeroOl's port of the "Mirin" template
	- https://github.com/XeroOl/sm5-mirin
	- Unknown if up to date.

- Sudospective's Kitsu Template
	- https://github.com/Tiny-Foxes/kitsu-template
	- Up to date: fully supports Project OutFox
	- Fully compatible with the new tween system
	- Object Orientated Template
	- Easy to find update loop


### OpenITG/NotITG/SM3.95 templates

- Exschwasion's easing template
	- OpenITG: https://drive.google.com/open?id=1q_d8bJw80uJ4UBUWRj-4iKtTe1ORNkDl
	- NotITG: https://drive.google.com/open?id=10J7B8EOeMAcS0WSvfcnni8UG7xbq2X66
	- Very popular & widely used.
	- Modstrings are fully usable.
	- Has ease functions so you're not limited to just linear, accelerate, decelerate & spring.
		- These can be applied to modifiers & functions.
		- Needs sustains to ensure the eases fully complete.
	- Has an "actions" table (at a given beat, a function runs or a message is broadcast)

- XeroOl's "Mirin" template
	- https://github.com/XeroOl/notitg-mirin
	- Documentation: https://xerool.github.io/notitg-mirin/
	- Gaining popularity.
	- Supposed to be optimized (a lot more than the ease template)
	- Allows for 'custom' modifiers through node
	- Has a plugin system to allow for extending the template.
		- https://github.com/XeroOl/notitg-mirin-plugins
	- Has ease functions
		- No sustains needed.
	- Aims to not leave behind global variables. \[citation needed\]
	- Cannot use modstrings? \[citation needed\]
	- difficulty to use vs ease template \[citations needed\]

- TaroNuke's "Wow! It's Made" template
	- Used during TaroNuke's "Wow! It's Made" streams where he wrote a modfile live.
		- https://www.twitch.tv/videos/321383917
		- https://www.twitch.tv/videos/321386003
		- https://www.twitch.tv/videos/321379794
		- https://www.twitch.tv/videos/321380780
	- Also pretty much how mods boot camp 3 files were made.
	- What does it have?
	<!-- TODO: is this different from what taro usually uses? -->

- Daikyi's simple template
	- https://cdn.discordapp.com/attachments/227819834480656384/493515557216452638/default.xml
	- Super simple & basic. (So, might be good for beginners)
	- Modstrings are fully usable via mods table.
	- Has an "actions" table.
	- Lots of comments for documentation.

- Ky_Dash's template
	- https://github.com/KyDash/nitg-template
	- "somewhat cursed"
	- ???

- FMS_Cat's template
	- Used in FMS_Cat's modfiles.
	- Mainly uses "build.js" to construct the xml files.
	- CatEvent system for queueing everything?
	- Everything is a function?

- XeroOl's Galaxy Mod Loader (XGML) template
	- https://github.com/XeroOl/notitg-xgml
	- Predecesor to mirin
	- Considered deprecated/obsolete?
	- Has addons to extend template functionality
		- https://github.com/XeroOl/notitg-xgml-addons
	- What else?

- BrotherMojo's template
	- As seen in babaroque & blaster & mkdr?

- WinDEU's template
	- As seen in Mods Boot Camp?

- Cering's template (forked from exsch?)
	- As seen in NJSRT & Aster's Astral Adventures + Conflict?

- HeySora's template
	- As seen in purple people eater?

- FMS_Cat's Automaton template
	- https://github.com/FMS-Cat/automaton-notitg-template

- Jaezmien's template
	- https://github.com/Jaezmien/NotITG_Template
