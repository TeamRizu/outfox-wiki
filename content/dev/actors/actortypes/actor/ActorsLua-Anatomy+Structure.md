---
title: Anatomy of an Actor
weight: 0
---

<!-- TODO: This is just getting started. If you've got ideas for this, please help out! -->

Every actor in SM5 follows a standart general structure, with [ActorFrames](../../actorframe/) being more flexible in how they're constructed.

{{<toc>}}

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

When the definition is complete, the actor has to be "returned" for the game to see it. Most of the time, [ActorFrames](../../actorframe/) are usually what's returned instead of just a single actor.

## Commands

Commands come in two variants: "Commands" and "Messages".

Commands are usually isolated to a single actor, with a few exceptions. Messages are commands that are meant to be in multiple actors and can be invoked at around the same time on all actors with a "Broadcast".

{{<hint title="Example">}}
```lua
MESSAGEMAN:Broadcast("SpecialMove", {funnymove = 10, absolute = false})
```

_This would run "SpecialMoveMessageCommand" on all actors that have this command defined, with a parameter table being passed in. Not all actors might use this table, even though they might have the command defined._
{{</hint>}}

If one needs to manually queue a command or message, the `queuecommand` or `queuemessage` functions can be used.

These queued commands run only after all previous tweens have finished.

```lua
self:queuecommand("Action"):queuecommand("AnotherOne")

-- The actor itself
ActionCommand=function(self)
	-- an action is performed first
end
AnotherOneCommand=function(self)
	-- an action is performed after 'Action'
end
```

If a command has to run instantly, `playcommand` can be used for that.

```lua
self:playcommand("Action")

-- The actor itself
ActionCommand=function(self)
	-- an action is performed
end
```

If one wants to pass custom parameters into the command, a single table has to be used to wrap every parameter passed.

These command functions generally take two paramters: The actor calling the function (often called `self`), and the parameters table passed into the command. The paramters table is optional.

```lua
self:playcommand("Action", { --[[Values are added here like a regular table.]] })

-- example
self:playcommand("Action", { Value = 2 })

-- In the actor
ActionCommand=function(self,param)
	SCREENMAN:SystemMessage("I've got value which has ".. param.Value)
end
```
<!-- TODO: Document the difference between the two and add more notes!-->
