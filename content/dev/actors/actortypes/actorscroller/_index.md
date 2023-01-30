---
title: ActorScroller
weight: 0
geekdocCollapseSection: true
---

The Actorscroller is an [ActorFrame](../actorframe/) that acts as a scroller, allowing for a selection-styled menu with choices and animations.

```lua
Def.ActorScroller{
	NumItemsToDraw = 3,
	SecondsPerItem = 3,
	TransformFunction = function(self, offset, itemIndex, numItems)
	end,
	Subdivisions = 4,
	UseMask = false,
	MaskWidth = 30,
	MaskHeight = 50,
	LoopScroller = false,
	WrapScroller = false,
}
```

{{<toc format="raw">}}

## Attributes

| Name | Type | Action |
| :--- | :--- | :----- |
NumItemsToDraw | number | How many items will be drawn at once on the ActorScroller.
SecondsPerItem | number | How long will the scroller take before moving to the next item.
TransformFunction | function | The function that positions every item in the ActorScroller. For more information, check [Transforming the Scroller](#transforming-the-scroller).
Subdivisions | number | How many subdivisions should there be between each item? This allows for smoother movement for scrollers that contain any mathematical curve.
UseMask | bool | Toggles a mask on the top and bottom of the ActorScroller.
MaskHeight | number | Height of the mask present on the top and bottom of the ActorScroller. Requires `UseMask` to be `true`.
MaskWidth | number | Width of the mask present on the top and bottom of the ActorScroller. Requires `UseMask` to be `true`.
LoopScroller | bool | Loops the **selection** of the scroller to wrap around.
WrapScroller | bool | Wraps the items of the scroller to attempt a seamless transition back.

## Adding actors

To add actors to the ActorScroller, simply add them directly to the scroller, or using the `children` attribute for [ActorFrame](../actorframe/).

### The direct method.
```lua
local af = Def.ActorFrame{}

af[#af+1] = Def.ActorScroller{
	NumItemsToDraw = 15,
	TransformFunction=function(self, offset, itemIndex, numItems)
		self:y( 10 * offset )
	end,

	Def.BitmapText{ Font="Common Normal", Text="I am Item 1" },
	Def.BitmapText{ Font="Common Normal", Text="I am Item 2" },
	Def.BitmapText{ Font="Common Normal", Text="I am Item 3" },
	Def.BitmapText{ Font="Common Normal", Text="I am Item 4" },
}

return af
```

### The function method

{{<hint>}}
All actors being added via the `children` method have to be added to an [ActorFrame](../actorframe/) wrapper, which will be included in this demonstration.
{{</hint>}}

```lua
local af = Def.ActorFrame{}

local function generateItemsForScroller()
	-- When using the children attribute, the result of the function must
	-- be wrapped in an ActorFrame, which in this case is t.
	local t = Def.ActorFrame{}
	
	for i = 1,4 do
		t[#t+1] = Def.BitmapText{ Font="Common Normal", Text="I am Item ".. i }
	end
	
	return t
end

af[#af+1] = Def.ActorScroller{
	NumItemsToDraw = 15,
	TransformFunction=function(self, offset, itemIndex, numItems)
		self:y( 10 * offset )
	end,
	children = generateItemsForScroller()
}

return af
```


## Transforming the Scroller

To perform a different scroll to the ActorScroller, the `TransformFunction` is used. This function provides 4 arguments:

- `self` ([Actor](../../actortypes/)): The actor in question.
- `offset` (number): The relative 0 offset of the current item.

{{<hint>}}
By this, it means that, if the value is 0, That's the current item. Anything before or after is - 1 / + 1 respectively.
{{</hint>}}

- `itemIndex` (number): The index of the current item to the entire list of items.
- `numItems` (number): The total amount of items currently available.

For this example, let's make a vertical scroller. When we say vertical, we mean that we want each item to scroll through the Y axis. So, taking that into consideration, we can end up with a function like this:

```lua
TransformFunction=function(self, offset, itemIndex, numItems)
	-- We're telling the game here that each item has a space
	-- of 60 vertical pixels between each item.
	self:y( 60 * offset )
end
```

This next example let's us create a circular scroller. This is by using [cosine and sine functions](https://en.wikipedia.org/wiki/Sine_and_cosine).
```lua
TransformFunction=function(self, offset, itemIndex, numItems)
	self:xy( math.cos(offset) * 150, math.sin(offset) * 150 )
end
```

Here we're telling the game to perform the operation on the X and Y axis, and they're using cosine and sine respectively. [These two values return a value of -1 to 1](https://en.wikipedia.org/wiki/Sine_and_cosine#/media/File:Sine_cosine_one_period.svg). By having these two values in sync with each other, we're effectively creating a circunference, which in turns provides us with a circle.

### Subdivisions

You may have noticed that while scrolling with this, it won't scroll like a circle, and that's because there aren't that many items to scroll through to provide the motion. You could either add more items to fulfill the item criteria or use Subdivisions.

The general **(very summarized)** rule with subdivisions on the actor scroller is that it adds N amount of items in-between existing items to provide a smoother scroll when using functions.

```lua
Subdivisions = 2

--[[
	Item 1
	--
	--
	Item 2
	--
	-- 
	Item 3
]]
```

{{<expand "Example with full code">}}
```lua
local af = Def.ActorFrame{
	InitCommand=function(self)
		self:Center()
	end
}

local function generateItemsForScroller()
	-- When using the children attribute, the result of the function must
	-- be wrapped in an ActorFrame, which in this case is t.
	local t = Def.ActorFrame{}
	
	for i = 1,20 do
		t[#t+1] = Def.ActorFrame{
			Def.BitmapText{
				Font="_eurostile normal",
				Text="I am Item ".. i,
			}
		}
	end
	
	return t
end

af[#af+1] = Def.ActorScroller{
	NumItemsToDraw = 20,
	SecondsPerItem = 0.2,
	Subdivisions = 4,
	WrapScroller = true,
	LoopScroller = true,
	OnCommand=function(self)
		self:SetFastCatchup(true)

		-- For more information about this Input Controller, check "Custom Input".
		-- https://outfox.wiki/dev/theming/Theming-Custom-Input/
		self.controller = LoadModule("Lua.InputSystem.lua")(self)
		SCREENMAN:GetTopScreen():AddInputCallback(self.controller)
	end,
	OffCommand=function(self)
		SCREENMAN:GetTopScreen():RemoveInputCallback(self.controller)
	end,
	TransformFunction=function(self, offset, itemIndex, numItems)
		self:xy( math.cos(offset) * 150, math.sin(offset) * 150 )
		-- Let's mark the current choice with the color green.
		if offset == 0 then
			self:diffuse(Color.Green)
		else
			self:diffuse(Color.Orange)
		end

		-- You can also interpret that if statement with a ternary method.
		-- self:diffuse( offset == 0 and Color.Green or Color.Orange )
	end,
	children = generateItemsForScroller(),
	-- Let's add input to this scroller.
	MenuLeftCommand=function(self)
		self:SetDestinationItem( self:GetCurrentItem() - 1 )
	end,
	MenuRightCommand=function(self)
		self:SetDestinationItem( self:GetCurrentItem() + 1 )
	end
}

return af
```
{{</expand>}}

## Functions

### `PositionItems`

Forces all items to position themselves back into position. Useful if you happen to encounter a situation where the scroller doesn't end exactly on the item you've selected.

### `SetTransformFromFunction`
`(function transformFunction)`

The equivalent of the `TransformFunction` provided on the [Attributes list](#attributes). Allows you to add a new function in runtime, such as for example, converting the list from a vertical one to a horizontal one once the user has selected something.

### `SetTransformFromHeight`
`(number itemHeight)`

An alias for [SetTransformFromFunction](#settransformfromfunction) that will convert the scroller to a vertical one.

### `SetTransformFromWidth`
`(number itemWidth)`

An alias for [SetTransformFromFunction](#settransformfromfunction) that will convert the scroller to a horizontal one.

### `SetCurrentAndDestinationItem`
`(number index)`

Tells the ActorScroller to set both Current and Destination to `index`.
This can be useful if you want to move to the option `index` instantly.

### `SetDestinationItem`
`(number index)`

Tells the scroller to move to `index` for its destination.

### `GetSecondsToDestination`

Gives you a number indicating how long it will take before reaching the destination, which is the newly selected item.

### `SetSecondsPerItem`
`(number seconds)`

Changes the scroll length for each item.

### `SetSecondsPauseBetweenItems`
`(number seconds)`

Changes how long the scroller must wait while scrolling through an item.

### `GetSecondsPauseBetweenItems`

Gets the amount of time the scroller must wait while scrolling through an item.

### `SetPauseCountdownSeconds`
`(number state)`

Set the amount of time to wait fully when pressing a button. This value works alongside [SetSecondsPauseBetweenItems](#setsecondspausebetweenitems) to calculate a pause time.

### `SetNumSubdivisions`
`(number numDivisions)`

Sets the amount of [Subdivisions](#subdivisions) for the scroller.

### `ScrollThroughAllItems`

Forces the scroll to scroll through all of the items present.

### `ScrollWithPadding`
`(number beforeItems, number afterItems)`

Makes the scroller move automatically with a number of empty items to add at the start and end. You can use this to create credit sequences.

### `SetFastCatchup`
`(bool state)`

Accelerates the amount of time it takes to go from an item to another if it's more than 1.

For example, let's say you're in position 1, and you want to go to 5.
You have `SecondsPerItem` set to 1; so it would take a second to go through each item, totalling 5 seconds.

With `SetFastCatchup`, it will speed up based on how many items it needs to jump through to scroll roughly the same amount of time it takes to scroll to one.

### `SetLoop`
`(bool state)`
Toggles looping.

### `SetWrap`
`(bool state)`

Toggles wrapping.

### `SetMask`
`(bool state)`

Toggles the Mask.

### `SetNumItemsToDraw`
`(number numItems)`

Changes the value of items to draw at once.

### `GetFullScrollLengthSeconds`

Returns the total amount of time it would take to do a full rotation of the entire scroller. This is counting all of the items and subdivisions with the amount of time set in per item (SecondsPerItem).

### `GetCurrentItem`

Returns the currently selected item.

### `GetDestinationItem`

Gets the item that the scroller is currently traveling to.

### `GetNumItems`

Returns the number of items available on the ActorScroller.