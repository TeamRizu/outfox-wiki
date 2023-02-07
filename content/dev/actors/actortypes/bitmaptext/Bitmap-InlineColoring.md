---
title: Inline-Text manipulation
weight: 1
---

Starting from SM5 Preview 1, [BitmapText](../) actors can include special instructions to manipulate separate glyphs with things like color. Operations from this use the `AddAttribute` function to insert these instructions.

```lua
-- This adds an attribute to the BitmapText. These are stacked.
self:AddAttribute( [starting point], {[attribute to add]} )

-- This removes all attributes applied on the BitmapText.
self:ClearAttributes()
```

{{<hint type="important">}}
Any time the [BitmapText](../) calls `settext` or its own text changes, all attributes assigned to it will be cleared and will need to be reapplied.
{{</hint>}}

{{<toc>}}

# The Attributes table
The following are the attributes available via the `AddAttribute` function.
| Name | Type | Action |
| :--- | :--- | :----- |
Diffuse | color | Color for the attribute segment. This applies for all the coloring of the glyph.
Length | int | How long is the attribute going to be (size is in number of glyphs)
Diffuses | table | Table version of the Diffuse attribute, iterates through them all to give different corner colors for the glyph. An example is [shown below](#utilizing-the-diffuses-attribute).
Glow | color | Color to apply as additional color for the attribute segment.

# Examples

## Squared-Bracketed string conversion
The following example converts a string that includes square brackets into red colored sections.

{{< include file="/static/actors/bitmaptext/ConvertText.lua" language="lua" options="linenos=table" >}}

{{<columns>}}
The result of this example, makes the `Text` segment of the BitmapText's Text attribute red.
<--->
![](/theming/bitmap/colorAttrExample.png)
{{</columns>}}

## Utilizing the Diffuses attribute

This attribute is a special case, as it requires a table to go through them all, and each will apply to the glyphs corners.
Given this, it has a limit of 4 on the table, any other diffuse in the table past that will be ignored. If there are less than 4 on the table, the rest will be filled with `#ffffff`.

```lua
OnCommand = function(self)
	local myColors = {
		Color.Red,
		Color.Blue,
		Color.Blue,
		Color.Red,
	}

	-- Apply the diffuses to all characters in the text.
	self:AddAttribute( 0, { Diffuses = myColors, Length = -1 } )
end
```

{{<columns>}}
The result ends up being that each glyph has red on the top left and bottom right corner, while having blue on the top right and bottom left corners.
<--->
![](/theming/bitmap/colorDiffusesExample.png)
{{</columns>}}