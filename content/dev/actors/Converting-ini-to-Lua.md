---
title: Converting INI files to Lua
weight: 5
---


<!-- There's probably a lot that I'm missing in here. If you've got something, please contribute! -->

# Converting BGAnimation INI files into lua files.

StepMania 3.9 & ITG are capable of using BGAnimation.ini files to define actors in place of xml files.

In StepMania 5, these have to be converted into .lua files instead.

## General Layout of a BGAnimation.ini file.

```ini
[BGAnimation]
[Layer2]
File=path/to/a/different_file.png
InitCommand=zoomx,3;zoomy,4;diffuse,1,0,0,0
OnCommand=diffusealpha,0;linear,3;diffusealpha,1
CommandRepeatSeconds=20

[Layer3]
File=Common Normal
Text=Help Me
InitCommand=diffusealpha,0.5
OnCommand=spin;effectmagnitude,0,0,-100

[Layer1]
File=path/to/a/file
InitCommand=diffusealpha,0.5
OnCommand=spin;effectmagnitude,0,0,100

```

Here, layers are defined with the section name of `Layer`, followed by numbers or letters.

They are sorted by the characters used after `Layer` (so Layer1 comes before Layer2, even if Layer2 was placed first.)

The actual actor type has to be inferred from the path given in `File`. (Often, it's a Sprite)

Commands are done in command format.

## Creating the .lua equivalent.

The entire ini can be expressed as a single ActorFrame. In this example, both are sprites, and they have to be sorted manually.

CommandRepeatSeconds isn't a feature in lua actors, so it has to be replicated with queuecommand and sleep. (It would loop the OnCommand every given amount of seconds)

The commands have to be converted into function format as well.

```lua
return Def.ActorFrame{
	Def.Sprite{
		Name="Layer1",
		InitCommand= function(self) self:diffusealpha(0.5) end,
		OnCommand= function(self) self:spin():effectmagnitude(0,0,100) end,
	},
	Def.Sprite{
		Name="Layer2",
		InitCommand= function(self) self:zoomx(3):zoomy(4):diffuse(1,0,0,0) end,
		OnCommand= function(self) self:diffusealpha(0):linear(3):diffusealpha(1):sleep(20-3):queuecommand("On") end,
	},
	Def.BitmapText{
		File="Common Normal",
		Text="Help Me".
		InitCommand= function(self) self:diffusealpha(0.5) end,
		OnCommand= function(self) self:spin():effectmagnitude(0,0,-100) end,
	},
}
```

## Other ini-style files (.sprite, .model)

Older SM also has alternate files that follow the ini format to define other actor types.

.sprite files have an extra set of attributes for defining frames.

```ini
Frame0000=0
Delay0000=0.25
Frame0001=4
Delay0001=0.25
Frame0002=2
Delay0002=0.25
Frame0003=1
Delay0003=0.25
Frame0004=3
Delay0004=0.25
```

These can be turned into `Frames` tables for a Def.Sprite.
```lua
Frames= {
	{Frame= 0, Delay= 0.25},
	{Frame= 4, Delay= 0.25},
	{Frame= 2, Delay= 0.25},
	{Frame= 1, Delay= 0.25},
	{Frame= 3, Delay= 0.25},
}
```

.model files have extra attributes to define bones, meshes and materials. These translate almost-1:1 into lua.
```ini
[Model]
Meshes=arrowmesh.txt
Materials=4th.txt
Bones=arrowmesh.txt
```

becomes

```lua
Def.Model{
	Meshes="arrowmesh.txt",
	Materials="4th.txt",
	Bones="arrowmesh.txt"
}
```
