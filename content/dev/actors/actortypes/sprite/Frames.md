---
title: Managing Frames
weight: 1
---

The frames in a sprite are composed of an array containing arrays of two values, **Frame** and **Delay**. These describe what frame in a spritesheet the actor should focus on and for how long in seconds.

{{<hint type="important">}}
Sprites that use a video file do not apply for this guide, as the sprite only recognizes it as a single frame, given it's now using FFMpeg to handle playback of said video. For this, you'll need to obtain the Sprite's RageTexture and use the `position` function, which handles its value in seconds.

```lua
self:GetTexture():position( --[[Time in secs]] )
```
{{</hint>}}

As an example to demonstate each sprite table, we'll utilize the fox from the staff roll.

{{<toc>}}

## Standard format

{{<columns>}}
```lua
Frames = {
	{ Frame = 0, Delay = 0.1 },
	{ Frame = 1, Delay = 0.1 },
	{ Frame = 2, Delay = 0.1 },
	{ Frame = 3, Delay = 0.1 }
},
```
<--->
<div style="position: relative; top: 5%">
<center>

![](/theming/sprite/fox.gif)

</center>
</div>
{{</columns>}}

In this example, we're creating an animation of 4 frames (these are 0-indexed), that will last 0.4 seconds total, given the sum of each Delay.

## Utilizing Sprite.LinearFrames

This is a helper function inside the Sprite namespace that facilitates the creation of the Frames table, by automating the creation of the table with just 2 arguments, the ammount of frames to use, and how long in general the animation will be.

{{<columns>}}
```lua
Frames = Sprite.LinearFrames( 4, 2 )
-- Will return
--[[
{
	{ Frame = 0, Delay = 0.5 },
	{ Frame = 1, Delay = 0.5 },
	{ Frame = 2, Delay = 0.5 },
	{ Frame = 3, Delay = 0.5 },
},
]]
```
<--->
<div style="position: relative; top: 25%">
<center>

![](/theming/sprite/fox-4.gif)

</center>
</div>
{{</columns>}}

## Utilizing SetAllStateDelays on existing frames

This function can be utilized to update all delay ammounts of the current frames in the sprite on the fly.

In the example, I have a sprite that already loads a sprite that has 4 frames, and plays on 0.1 second delays, making the animation on the top of the page, but now we want to make it slightly slower.

{{<columns>}}
```lua
Frames = {
	{ Frame = 0, Delay = 0.1 },
	{ Frame = 1, Delay = 0.1 },
	{ Frame = 2, Delay = 0.1 },
	{ Frame = 3, Delay = 0.1 }
},
OnCommand=function(self)
	self:SetAllStateDelays(0.5)
end
```
<--->
<center>

before<br>
![](/theming/sprite/fox.gif)<br>
after<br>
![](/theming/sprite/fox-4.gif)

</center>
{{</columns>}}

## Utilizing SetStateProperties

The SetStateProperties function can be utilized to update frame information on a sprite on the fly, by updating the entire table.

In this example, let's assume that the current sprite has the table describe above, and now we want to update the sprite to only show two frames of animation instead of 4. In this case, we just need to return a table into the function that only has the two frames.

{{<columns>}}
```lua
self:SetStateProperties({
	{ Frame = 0, Delay = 0.5 },
	{ Frame = 1, Delay = 0.5 }
})
```
<--->
<center>

![](/theming/sprite/fox-2.gif)

</center>
{{</columns>}}