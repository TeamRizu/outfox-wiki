---
title: Segments of a BitmapText
weight: 1
---

The [BitmapText](../) actor consists of 2 sets of glyphs, Inner and Stroke. Inner is the main use of a glyph, which is drawn character by default. Stroke is used to make bordered text without risking modification of the original glyph map, which allows for coloring on the fly.

# Setting a Text Glow Mode

When using the glow function, the [BitmapText](../) actor automatically applies the glow color to both layers by default. You can change this with the `textglowmode` function, which uses a TextGlowMode enumerator to determine which area to apply its glow, one or the other or both.

Here we have applied a stroke color of green, which will make the border color green, and then a glow blue with 50% opacity. However, because the glow mode has been set to `TextGlowMode_Inner`, that glow will only apply to the inner layer, leaving the border untouched.

{{<columns>}}
```lua
return Def.ActorFrame{
	Def.BitmapText{
		Font = "_ibm plex sans cond smbld/20px",
		OnCommand = function(self)
			self:xy( SCREEN_CENTER_X, 50 )
			:settext( "i am text" )
			:strokecolor(color("#ffffff00"))
		end
	}
}
```
<--->
![](/theming/bitmap/glowModeExample.png)
{{</columns>}}