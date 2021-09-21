---
title: "Modules"
weight: 5
---

Introduced in [OutFox Alpha 4](/releases/A4.0/), Modules are Lua files that provide snippet-like functions, tables, and metatables that can be quickly used and unloaded from memory when done.
These can be loaded by using the `LoadModule` function. Depending on the return methodology from the module, it can be called in several ways.

{{< hint warning >}}
Given the loading nature of modules, it is not recommended to use LoadModule directly if the function
that will load it is called too quickly (like calling the module inside of a JudgmentMessageCommand),
specially with modules that require file loading/saving. For that, it is recommended to cache the value
returned by the module to then use.

```lua
-- An example: caching the result from the Load Configuration module into a variable.
local moduleResult = LoadModule("Config.Load.lua")("ShowOffsetBar","OutFoxPrefs.ini")
```
{{</hint>}}

If the module gives a table:
```lua
return {
	"objects!"
}

-- Load it by doing:
LoadModule( "MyModule.lua" )
```

If the module gives a function:
```lua
return function(arguments)
	print( arguments )
end

-- Load it by doing:
LoadModule( "MyModule.lua" )( arguments )
```

If the module needs a table:
```lua
local function(requiredtable)
	for i = 1,#requiredtable do
		print( requiredtable[i] )
	end
end

-- Load it by doing:
LoadModule( "MyModule.lua" ){ arguments }
-- Or
LoadModule( "MyModule.lua" )({ arguments })
```

If the module needs a string:
```lua
return function(theString)
	print( "i'm printing ".. theString )
end

LoadModule( "MyModule.lua" )"a string" -- This is technically valid syntax, but it's not great for readability.
-- Or
LoadModule( "MyModule.lua" )( "a string" )
```