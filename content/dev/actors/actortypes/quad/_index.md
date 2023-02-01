---
title: Quad
weight: 0
geekdocCollapseSection: true
---

An arbitrary rectangle. Acts like a [Sprite](../sprite/) with a blank texture.

```lua
-- Generate a 64 x 64 rectangle on the center of the screen, and color it Yellow.
Def.Quad{
	OnCommand=function(self)
		self:zoomto( 64,64 ):diffuse( Color.Yellow )
		:xy( SCREEN_CENTER_X, SCREEN_CENTER_Y )
	end
}
```

This actor does not contain any attributes, and uses all the functions available for [Actor](../actor/).