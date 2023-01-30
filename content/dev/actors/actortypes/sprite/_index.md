---
title: Sprite
weight: 0
geekdocCollapseSection: true
---

Allows one to display images on screen. These images can be a png, jpeg, gif or even a video file.

```lua
Def.Sprite{
	Texture="MyTexture.png", -- The Texture is optional, you can start a sprite without a texture.
	-- You can manipulate the amount of frames that a sprite can use using the Sprite argument.
	Frames={
		-- The structure for the Frame is as follows:
		--{ Frame = int, Delay = float , {float,float}, {float,float} }
		-- The two tables are optional upper left and lower right corners of the fraction of the
		-- frame to use.

		-- This will make a 4 frame sprite toggle between its frames for 0.5 seconds,
		-- making a 2 second animation.
		{ Frame = 0, Delay = 0.5 },
		{ Frame = 1, Delay = 0.5 },
		{ Frame = 2, Delay = 0.5 },
		{ Frame = 3, Delay = 0.5 },
	},
	OnCommand=function(self)
		-- You can also load new textures after assigning one beforehand.
		-- The path in Load is absolute, so you must put the entire path to the new image.
		self:Load( --[[ [Path to another texture] ]] )

		-- You can pause or jump to other sprites with the following commands.
		self:animate(0) -- 0 pauses the animation, 1 resumes it (Can be used as well for Models).
		self:pause() -- An alias for animate(0) (Can be used as well for Models).
		self:play() -- An alias for animate(1) (Can be used as well for Models).

		-- setstate jumps to a frame of the animation assigned. Animation states are 0-indexed.
		self:setstate( 2 ) -- Jumps to the third frame of the animation.
		-- If an out-of-range value is assigned ( < 0 or > #Frames ), an error is displayed
		-- displaying the total amount of frames available on the current sprite.

		-- The Frames set can also be manipulated during runtime, by using the SetStateProperties
		-- function. This example now inverts the animation.
		self:SetStateProperties(
			{
				{ Frame = 3, Delay = 0.5 },
				{ Frame = 2, Delay = 0.5 },
				{ Frame = 1, Delay = 0.5 },
				{ Frame = 0, Delay = 0.5 },
			}
		)
	end
}
```

## Table of Contents

{{<toc-tree>}}

## Attributes

| Name | Type | Action |
| :--- | :--- | :----- |
Texture | string | Path to the texture to use for this sprite actor.
Frames | table | The table containing the frame per frame information to be interpreted by the actor. For more information, see [Managing Frames](Frames).
Frame[NNNN] | number | Alternative method for Frames's version of { Frame = `number` }, used for backwards compatibility with older actors.
Delay[NNNN] | number | Alternative method for Frames's version of { Delay = `number` }, used for backwards compatibility with older actors.