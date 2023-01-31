---
title: ActorFrameTexture
weight: 0
geekdocCollapseSection: true
---

It’s like an [ActorFrame](../actorframe), but instead of displaying what’s inside onto the screen, it places the contents of the [ActorFrame](../actorframe) onto a Texture that a [Sprite](../sprite) (or any other actor that can load textures) can read from.

Popularized by its’ use in NotITG, although the behavior is different. NotITG’s version places the screen itself onto a texture instead of what’s inside the [ActorFrame](../actorframe) and requires basezoom to be used on sprites to make the image fit inside the game window.

## Usage Example

This example will create an ActorFrameTexture that uses a sample [BitmapText](../bitmaptext), and project it
to the center to the screen in half of the available size of the viewport window.

```lua
-- This ActorFrame will contain everything.
local t = Def.ActorFrame{}

-- First, create the ActorFrameTexture.
local AFT = Def.ActorFrameTexture{
	InitCommand = function(self)
		-- Start by adding a name to the texture. This is optional, but best to provide one,
		-- in case you need to work with several ActorFrameTextures in the same screen.
		self:SetTextureName( "MyAFT" )

		-- Now we need to give the ActorFrameTexture a resolution, which will be
		-- how much is available to render.
		-- As this example will be half the size of the available screen, we'll give the size
		-- half of the screen.
		self:SetWidth( SCREEN_WIDTH*.5 ):SetHeight( SCREEN_HEIGHT*.5 )

		-- By default this option is disabled, but you can enable it to allow transparency
		-- in your ActorFrameTexture.
		-- In this case, it will disabled to show the available render area (shown as black)
		self:EnableAlphaBuffer( false )

		-- We are done with the AFT, so now we have to create it.
		self:Create()
	end,

	-- After the initializer command, any actors included inside will be projected.
	-- The actors here act exactly the same as a ActorFrame, so they will start on the top-left
	-- corner of the available draw area given (in this case, half of the screen.)
	Def.BitmapText{
		Font = "Common Normal",
		Text = "Testing String!",
		BeginCommand = function(self)
			self:zoom(2):spin()
			-- In order to see the texture, let's center it.
			-- Calculations in actors inside of the AFT will need conversion as dimensions are
			-- different, so for example:

			-- Since we're doing half of the screen for dimensions, to center it, we need to half
			-- that size as well.

			-- 1280 / 2 = 640 (Screen Size)
			-- 640 / 2 = 320 (Actor Position)
			-- 0 - 640 = 0 .. 1 (Size Area, using Screen Size)
			-- (320/640) = 0.5 (Point of Actor Position using above calculation)

			self:xy( SCREEN_WIDTH*.25, SCREEN_HEIGHT*.25 )
		end
	}
}

t[#t+1] = AFT
```

Now that we've created the ActorFrameTexture, it will be sent into a global texture, that we can then grab into a [Sprite](../sprite), and it can be done in two ways. These will be shown inside the OnCommand in the [Sprite](../sprite).

```lua
-- Method 1: Load sprite directly into sprite.
t[#t+1] = Def.Sprite{
	-- Sprite name given inside the SetTextureName command in your AFT.
	Texture = "MyAFT",
	-- Let's center the projection so we can see it.
	OnCommand=function(self)
		self:xy( SCREEN_CENTER_X, SCREEN_CENTER_Y )
	end
}

-- Method 2: Load sprite on demand on runtime.
t[#t+1] = Def.Sprite{
	-- Let's center the projection so we can see it.
	OnCommand=function(self)
		self:xy( SCREEN_CENTER_X, SCREEN_CENTER_Y )

		-- Sprite name given inside the SetTextureName command in your AFT.
		self:Load( "MyAFT" )
	end
}

return t
```