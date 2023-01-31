---
title: ActorProxy
---

An ActorProxy is an actor that allows rendering of other [Actors](../_index.md) without the need to create the logic for it again.

```lua
Def.ActorProxy{
    OnCommand=function(self)
        self:SetTarget( [target actor] ) 
    end
}
```

{{<toc>}}

## Attributes

There are no special attributes for this actor class.

## Draw logic

As long as the target [Actor](../actor) is present, it will draw it. If it's deleted during runtime, it will stop drawing.

## Functions

### `SetTarget`
([Actor](../index.md) targetActor)

Tells the ActorProxy to use `targetActor` as its draw target.


### `GetTarget`

Returns the current actor this ActorProxy is currently rendering. Returns `nil` if no actor is assigned previously.
