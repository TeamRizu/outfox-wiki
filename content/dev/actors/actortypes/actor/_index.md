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

## Attributes

| Name | Type | Description |
| :--- | :--- | ----------- |
[Name]Command | function | The basis for any command. Check [Commands](./ActorsLua-Anatomy+Structure/#commands) for more information.
Name | string | The name for the actor. Giving this a value allows this actor to be obtain by its name by any other actor. Check [Obtaining Childs and ActorFrame Levels](./obtainlevels) for more information.
BaseRotationX | number | The base rotation for the X axis. Any rotation value is added ON TOP of this value.
BaseRotationY | number | The base rotation for the Y axis. Any rotation value is added ON TOP of this value.
BaseRotationZ | number | The base rotation for the Z axis. Any rotation value is added ON TOP of this value.
BaseZoomX | number | The base zoom for the X axis. Any zoom value is added ON TOP of this value.
BaseZoomY | number | The base zoom for the Y axis. Any zoom value is added ON TOP of this value.
BaseZoomZ | number | The base zoom for the Z axis. Any zoom value is added ON TOP of this value.

## Table of Contents

{{<toc-tree>}}
