---
title: Converting XML files to Lua
weight: 6
---

<!-- There's probably a lot that I'm missing in here. If you've got something, please contribute! -->
# Converting xml files into lua files.

StepMania 3.95 & ITG use xml files for both themeing and effect scripting. It also allows embedding lua functions to perform more complex effects & scripting.

In StepMania 5, these have to be converted into .lua files instead.

## The 'easy way' of converting

There are two semi-automatic ways to convert xml files into lua.

1. StepMania 5's built-in XML to LUA converter
- Converts positions to be based off of SCREEN_CENTER_X (which can result in some lost position information.)
- Condition attributes are turned into uses of a local function
- Commands are left in command format
- Misses commands in .sprite files
- Accessible from the debug menu
- Rearranges commands to be in alphabetical order

2. XeroOl's xmlconvert tool
- Requires some extra libraries on your system
- Does not touch positions
- Condition attributes are turned into ternary expressions
- Commands are turned into function format.
- performs a bit more work when dealing with modifier-related calls
- Sorts the actors to match what the xml tag sorting would do

The result isn't going to always work, but should do a good amount of the grunt-work needed.

## General layout of an xml file.

```xml
<ActorFrame>
	<children>

	<ZZZActor
		Type="Quad"
		InitCommand="hidden,1"
		OnCommand="sleep,1000"
	/>

	<Special
		Type="Sprite"
		File="funny.png"
		OnCommand="%function(self)
			SCREENMAN:SystemMessage('hi')
		end"
	/>

	<Sprite
		File="circle"
		Condition="GAMESTATE:IsHumanPlayer(0)"
	/>

	</children>
</ActorFrame>
```

Here, layers can have a name as well as a tag or Type. Either the tag name or the Type attribute defines what type of actor it is. If neither of these are given, the game would have to infer the actor type by itself.

ActorFrames have a `children` tag for holding their inner actors.

Unlike .ini files, layers can have practically any name in the tag, instead of a required `Layer` prefix.

The layer sorting is somewhat like ini files, with the tag name being used to determine actor order. (This is separate from the `Name` attribute)

For example, the layer tagged as `ZZZActor` gets sorted to be after `Special`, even though it was written the other way around.

## Creating the .lua equivalent manually.

```lua
return Def.ActorFrame{
	-- Special --
	Def.Sprite{
		Texture="funny.png",
		OnCommand= function(self)
			SCREENMAN:SystemMessage('hi')
		end,
	},
	-- Sprite --
	GAMESTATE:IsHumanPlayer(PLAYER_1) and Def.Sprite{
		Texture="circle",
	} or Def.Actor{},
	-- ZZZActor --
	Def.Quad{
		Texture="funny.png",
		InitCommand=function(self) self:visible(false) end,
		OnCommand=function(self) self:sleep(1000) end,
	},
}
```

Often, the main xml file is an ActorFrame, with the inner actors matching the layout of the xml after sorting.

Conditions can be turned into ternary expressions, though they now run at different times compared to the original xml file.

Just like in ini files, commands have to be turned into function format.

The commands that are already in function format are mostly 1:1. The "% " that are around the functions must be removed.
