---
title: ActorFrame
weight: 0
---

ActorFrames can hold other actors. The ``Def.`` format is set up like any other lua table, allowing for creating actors in batches. Because of this, there are multiple ways to build an ActorFrame.

```lua
Def.ActorFrame{
    -- This sprite is now included inside of the ActorFrame.
    -- Any changes from the ActorFrame will affect the sprite, such as position, rotation,
    -- zoom and such.
    Def.Sprite{}
}
```

{{<toc>}}

## Inline building

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

## Concatenation

Because lua tables can be concatenated (added) to each other, so can ActorFrames.

This can allow for programatically creating [Actors](../actor/) in batches as needed.

However, if one does not plan on creating [Actors](../actor/) programmaticly, then a simple `return Def.ActorFrame{...` is all that's needed. Storing it into a local variable that gets returned will waste resources.

There are two ways to add onto an ActorFrame.

<!-- TODO: There's probably better ways to show this. -->
### Method 1 (indexing)
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

### Method 2 (lua concatenation)
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