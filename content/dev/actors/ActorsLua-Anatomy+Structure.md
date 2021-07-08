---
title: Anatomy of a Lua actor
weight: 3
---

<!-- TODO: This is just getting started. If you've got ideas for this, please help out! -->

Every actor in SM5 follows a standart general structure, with ActorFrames being more flexible in how they're constructed.

## General layout

```lua
Def.Actor {
	Name= "Example Actor",
	InitCommand= function(self) self:zoom(100) end,
	OnCommand= function(self) self:linear(2):x(30) end,
}
```

Every actor starts with a `Def.` prefix, followed by the actor type itself. An actor can have a name and commands. These commands could be anything, as long as it's suffixed with a `Command` or `MessageCommand`, depending on the type of commands needed.

Names allow one to easily grab the actor through functions like `GetChild`, but there are other exampled given later.

When the definition is complete, the actor has to be "returned" for the game to see it. Most of the time, ActorFrames are usually what's returned instead of just a single actor.

## ActorFrames and how to build them

ActorFrames can hold other actors. The ``Def.`` format is set up like any other lua table, allowing for creating actors in batches. Because of this, there are multiple ways to build an ActorFrame.

### Inline building

Actors can be explicitly placed into an ActorFrame like this:
```lua
Def.ActorFrame{
	Def.Actor{
		--Commands and stuff go here.
	},
	Def.Sprite{
		--More commands and stuff go here.
	}
}
```

### Concatenation

Because lua tables can be concatenated (added) to each other, so can ActorFrames.

This can allow for programatically creating Actors in batches as needed.

However, if one does not plan on creating actors programmaticly, then a simple `return Def.ActorFrame{...` is all that's needed. Storing it into a local variable that gets returned will waste resources.

There are two ways to add onto an actorframe.

<!-- TODO: There's probably better ways to show this. -->
Method 1 (indexing):
```lua
local t = Def.ActorFrame{
	Def.Sprite{
		--commands & stuff
	},
	Def.BitmapText{
		--who even knows
	},
}

t[#t+1] = Def.Actor{
	--It's the third actor
}
return t
```

Method 2 (lua concatenation):
```lua
return Def.ActorFrame{
	Def.Sprite{
		--commands & stuff
	},
	Def.BitmapText{
		--who even knows
	},
} .. Def.Actor{
	--It's the third actor
}
```

## Commands

Commands come in two variants: "Commands" and "Messages".

Commands are usually isolated to a single actor, with a few exceptions. Messages are commands that are meant to be in multiple actors and can be invoked at around the same time on all actors with a "Broadcast".

```lua
MESSAGEMAN:Broadcast("SpecialMove", {funnymove = 10, absolute = false})
```
_(ex: this would run "SpecialMoveMessageCommand" on all actors that have this command defined, with a parameter table being passed in. Not all actors might use this table, even though they might have the command defined.)_

If one needs to manually queue a command or message, the `queuecommand` or `queuemessage` functions can be used.

These queued commands run only after all previous tweens have finished.

If a command has to run instantly, `playcommand` can be used for that.

If one wants to pass custom parameters into the command, a single table has to be used to wrap every parameter passed.

These command functions generally take two paramters: The actor calling the function (often called `self`), and the parameters table passed into the command. The paramters table is optional.
<!-- TODO: Document the difference between the two and add more notes!-->

<!-- TODO: Review this demonstration about GetParent and GetChild on Actor. !-->
## Obtaining Childs and ActorFrame Levels

When using Actors, you can use `self:GetParent()` and `self:GetChild()` to get elements from other ActorFrames or actors.
**(Note: `GetChild` can only be used by ActorFrames.)**

You can think of an ActorFrame as a tree of objects.
This is the original table. And now you've called GetParent on the ActorProxy.
```lua
Def.ActorFrame{
	Def.BitmapText{},
	* Def.ActorProxy{},
}
```

When calling it, you go back up a level, which in this case,
it will become ActorFrame.
```lua
* Def.ActorFrame{
	Def.BitmapText{},
	[] Def.ActorProxy{},
}
```
In this new location, we get the MyText actor, which can be achieved by calling the GetChild command.
The command uses a String argument, but can also grab from nested tables in case of an ActorFrame not having
actors with names assigned. On those cases, actors are just indexed on that ActorFrame set.

### Example Without Names
```lua
Def.ActorFrame{
	OnCommand=function(self)
		-- If we want to get to the BitmapText, we'll need to get the second entry on the ActorFrame.
		self:GetChild("")[2] -- returns the BitmapText actor.
	end,
	Def.Sprite{},
	Def.BitmapText{}
}
```
### Example With Names
```lua
Def.ActorFrame{
	OnCommand=function(self)
		-- If we want to get to the BitmapText, we'll need to get the "Text" actor.
		self:GetChild("Text") -- returns the BitmapText actor.
	end,
	Def.Sprite{ Name = "Image" },
	Def.BitmapText{ Name = "Text" }
}
```
