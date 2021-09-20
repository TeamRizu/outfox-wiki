---
title: "Scripts"
weight: 4
---

Introduced in StepMania 3.95, Scripts are Lua files that are loaded globally to the engine. These are always available to use, from anywhere in the theme. However, it is advised to **use these sparingly** to avoid unnecesary carry over of data, overlapping variable names with other existing Lua naming scopes, and others.

It is recommended practice to ensure script data is kept to a minimum to avoid collision with objects like song data, scores, player data, mods, profile information, song rates, and others.

An example of a script file can be the following:
```lua
MyGlobalObject = {}

-- Add some objets to this variable.
MyGlobalObject.CustomFunction = function( val )
	SCREENMAN:SystemMessage( "I've just recieved ".. val )
end
```

Usage example:
```lua
return Def.Actor{
	OnCommand=function(self)
		-- Notice how this object is called, but there's no presence of MyGlobalObject on this actor or even
		-- the file at all; given it's loaded into memory.
		MyGlobalObject.CustomFunction( "a custom string!" )
	end
}
```

## Clearing an object
As mentioned on the introduction, it is advised to keep this at a minimum, and also to clean these objects when
not in use anymore.

```lua
-- Let's say MyGlobalObject is filled to the brim with number objects.
MyGlobalObject = {
	0.41534,
	0.23452342,
	0.23452342,
	...
}

-- to clean the object, just reasign the value back to an empty table.
MyGlobalObject = {}
```