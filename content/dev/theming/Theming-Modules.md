---
title: "Modules"
weight: 5
---

Modules in OutFox are Lua files that provide snippet-like functions, tables, and metatables that can be quickly used and unloaded from memory when done.
These can be loaded by using the `LoadModule` function. Depending on the return methodology from the module, it can be called in several ways.

If the module gives a table:
```lua
LoadModule( "MyModule.lua" )
```

If the module gives a function:
```lua
LoadModule( "MyModule.lua" )( arguments )
```

If the module needs a table:
```lua
LoadModule( "MyModule.lua" ){ arguments }
```

If the module needs a string:
```lua
LoadModule( "MyModule.lua" )"a string"
-- Or
LoadModule( "MyModule.lua" )( "a string" )
```