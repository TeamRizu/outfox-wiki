---
title: "Modules"
weight: 5
---

Modules in OutFox are Lua files that provide snippet-like functions, tables, and metatables that can be quickly used and unloaded from memory when done.
These can be loaded by using the `LoadModule` function. Depending on the return methodology from the module, it can be called in several ways.

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