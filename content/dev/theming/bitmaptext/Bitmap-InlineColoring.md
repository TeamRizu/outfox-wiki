---
title: Inline-Text manipulation
weight: 1
---

Starting from SM5 Beta 4, BitmapText actors can include special instructions to manipulate separate glyphs with things like color. Operations from this use the `AddAttribute` function to insert these instructions.

```lua
-- This adds an attribute to the BitmapText. These are stacked.
self:AddAttribute( [starting point], [attribute to add] )

-- This removes all attributes applied on the BitmapText.
self:ClearAttributes()
```

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

```lua
local function ConvertText( child )
	local str = child:GetText()
	local start,length = 0,0

	-- This will contain all possible changes to change the color method.
	local charindex = 0
	-- Here we'll store the  all the possible matches to color.
	local ColoringProcess = {}
	-- First we'll look into all instanes where there are words.
	for k in string.gmatch( str, "(%g+)" ) do
		-- Now look for matches where they're enclosed in square brackets.
		for m in string.gmatch( k,"%[(.-)%]" ) do
			-- If it does, insert the entry into the ColoringProcess table, which includes the following:
			-- 1 - The number index of where this match occurs
			-- 2 - The attributes to apply.
			-- 2.1 -- Diffuse, how to color this section.
			-- 2.2 -- Length, how long is this section.
			ColoringProcess[#ColoringProcess+1] = {
				Start = charindex > 1 and charindex+1 or 0,
				Attr = {
					Diffuse = Color.Red,
					Length = m:len()
				}
			}
		end
		-- Now that we're done with that loop, regardless if we got a match or now, increase the starting index
		-- to prevent duplicates.
		charindex = charindex + k:len()
	end
	
	-- We're done, get rid of the brackets themselves.
	child:settext( str:gsub( "%[","" ):gsub("%]","") )
	for k,v in pairs( ColoringProcess ) do
		-- Apply the resulting table's atributes to the text.
		child:AddAttribute( v.Start, v.Attr )
	end
end

return Def.BitmapText{
	Font = "Common Normal",
	Text = "I'm [Text]",
	OnCommand = function(self)
		self:Center() -- Center the BitmapText so it's visible
		-- Call the function above.
		ConvertText(self)
	end
}
```

The result of this example, makes the `Text` segment of the BitmapText's Text attribute red.

![](/theming/bitmap/colorAttrExample.png)

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

The result ends up being that each glyph has red on the top left and bottom right corner, while having blue on the top right and bottom left corners.

![](/theming/bitmap/colorDiffusesExample.png)