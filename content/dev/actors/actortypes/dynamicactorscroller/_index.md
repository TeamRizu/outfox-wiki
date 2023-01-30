---
title: DynamicActorScroller
weight: 0
geekdocCollapseSection: true
---

{{<hint type="caution">}}
***(Heavily WIP document)***

This actor type seems to currently cause crashes on the majority of the general cases.
{{</hint>}}

The DynamicActorScroller is an [ActorScroller](../actorscroller/) fills in its children on the fly.

The best example for the use of this class is the HighScore scroller, which constantly updates itself with new
information everytime an item is deloaded from the screen.

```lua
Def.DynamicActorScroller{
	NumItemsToDraw = 3,
	SecondsPerItem = 3,
	TransformFunction = function(self, offset, itemIndex, numItems)
	end,
	LoadFunction = function()
	end,
	Subdivisions = 4,
	UseMask = false,
	MaskWidth = 30,
	MaskHeight = 50,
	LoopScroller = false,
	WrapScroller = false,
}
```

## Attributes

The attributes for DynamicActorScroller are the same as [ActorScroller](../actorscroller/), except for an addition.

| Name | Type | Action |
| :--- | :--- | :----- |
NumItemsToDraw | number | How many items will be drawn at once on the ActorScroller.
SecondsPerItem | number | How long will the scroller take before moving to the next item.
TransformFunction | function | The function that positions every item in the ActorScroller. For more information, check [Transforming the Scroller](../actorscroller/#transforming-the-scroller).
Subdivisions | number | How many subdivisions should there be between each item? This allows for smoother movement for scrollers that contain any mathematical curve.
UseMask | bool | Toggles a mask on the top and bottom of the ActorScroller.
MaskHeight | number | Height of the mask present on the top and bottom of the ActorScroller. Requires `UseMask` to be `true`.
MaskWidth | number | Width of the mask present on the top and bottom of the ActorScroller. Requires `UseMask` to be `true`.
LoopScroller | bool | Loops the **selection** of the scroller to wrap around.
WrapScroller | bool | Wraps the items of the scroller to attempt a seamless transition back.