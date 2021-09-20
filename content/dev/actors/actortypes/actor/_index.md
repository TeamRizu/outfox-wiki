---
title: Actor
weight: 0
geekdocCollapseSection: true
---

This is the base that everything derives from. Whatever an Actor can do, everything else can as well. It can be useful for creating control variables without creating something visible on screen.

```lua
-- Actors can be very useful as variable controllers since it does not perform any kind of
-- overhead to the draw pipe.

local Value = 2
Def.Actor{
    InitCommand=function(self)
        Value = Value + 2
        Trace("My Value is now ".. Value)
    end
}
```

## Table of Contents

{{<toc-tree>}}