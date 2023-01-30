---
title: DynamicActorScroller
weight: 0
geekdocCollapseSection: true
---

The DynamicActorScroller is an [ActorScroller](../actorscroller/) that fills in its children on the fly.

The best example for the use of this class is the HighScore scroller, which constantly updates itself with new
information everytime an item is deloaded from the screen.

The biggest different about this and [ActorScroller](../actorscroller/) is that DynamicActorScroller ***requires only 1 [Actor] to be inside it. It cannot be more than 1.***

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

{{<toc>}}

## Attributes

The attributes for DynamicActorScroller are the same as [ActorScroller](../actorscroller/), except for an addition.

| Name | Type | Action |
| :--- | :--- | :----- |
LoadFunction | function | **New to DynamicActorScroller**, determines the ammount of items to be generated. provides two arguments which are nil.
NumItemsToDraw | number | How many items will be drawn at once on the ActorScroller.
SecondsPerItem | number | How long will the scroller take before moving to the next item.
TransformFunction | function | The function that positions every item in the ActorScroller. For more information, check [Transforming the Scroller](../actorscroller/#transforming-the-scroller).
Subdivisions | number | How many subdivisions should there be between each item? This allows for smoother movement for scrollers that contain any mathematical curve.
UseMask | bool | Toggles a mask on the top and bottom of the ActorScroller.
MaskHeight | number | Height of the mask present on the top and bottom of the ActorScroller. Requires `UseMask` to be `true`.
MaskWidth | number | Width of the mask present on the top and bottom of the ActorScroller. Requires `UseMask` to be `true`.
LoopScroller | bool | Loops the **selection** of the scroller to wrap around.
WrapScroller | bool | Wraps the items of the scroller to attempt a seamless transition back.

## Utilization

As mentioned previously, this actor class only allows 1 actor in it, which will be processed to be filled on the fly. If more are provided, it will complain about it, and stop the game due to a [failed assert](https://en.wikipedia.org/wiki/Assertion_(software_development)).

Adding actors can be done with the same methods presented on [Adding Actors on ActorScroller](../actorscroller/#adding-actors).

Upon adding the actor, a new attribute is added to the list, which is `LoadFunction`. This attribute is  responsible to manage and update the actors based on the relative position of the current choice.

## Behavior changes

With this actor type, the `TransformFunction` has a different behavior.

- `itemIndex` won't update anymore, as `LoadFunction` is now the one doing the work.

## Full code example

```lua
local af = Def.ActorFrame{
	InitCommand=function(self)
		self:Center()
	end
}

local numItems = 10

af[#af+1] = Def.DynamicActorScroller{
	NumItemsToDraw = 5,
	SecondsPerItem = 0.1,
	LoopScroller = true,
	OnCommand=function(self)
		-- For more information about this Input Controller, check "Custom Input".
		-- https://outfox.wiki/dev/theming/Theming-Custom-Input/
		self.controller = LoadModule("Lua.InputSystem.lua")(self)
		SCREENMAN:GetTopScreen():AddInputCallback(self.controller)
	end,
	OffCommand=function(self)
		SCREENMAN:GetTopScreen():RemoveInputCallback(self.controller)
	end,
	LoadFunction = function(self, itemIndex)
		-- This will tell the scroller how many items will be generated for the scroller. It just needs a number.
		-- "Call the expression with line = nil to find out the number of lines."

		-- Self is the actor represented for the actor set.
		-- itemIndex is the item relative to the current selection from the user.
		if self then
			self:GetChild("Text"):settext( "I am line ".. itemIndex )
		end
		return numItems
	end,
	TransformFunction=function(self, offset, itemIndex, numItems)
		self:y( offset * 40 )
	end,
	-- By the rules, this is only adding a single item, which is an ActorFrame holding a BitmapText.
	-- The actor in this case will be provided with a ItemIndex attribute attached. This can be accessed
	-- using self. This is only given initially and doesn't update. Use the LoadFunction to get a new
	-- version of the value.
	Def.ActorFrame{
		OnCommand=function(self)
			self:GetChild("Text"):diffuse(color("#000000"))
		end,
		Def.BitmapText{
			Font="Common Normal",
			Name="Text"
		}
	},
	-- Let's add input to this scroller.
	MenuLeftCommand=function(self)
		self:SetDestinationItem( self:GetCurrentItem() - 1 )
	end,
	MenuRightCommand=function(self)
		self:SetDestinationItem( self:GetCurrentItem() + 1 )
	end,
}

return af
```