---
title: Ensuring string compatiblity
weight: 1
---

When applying text on a [BitmapText](../) actor, depending on the font, some glyphs might not present themselves properly and will show two possible cases, depending on the situation. Let's take the following example, which attempts to load a text with the value `H̶e̵a̶d̸g̷r̴i̸n̶d̴e̴r̶`, which is `Headgrinder` with some special unicode to add non-spacing strikes in the text.

{{<columns>}}
![](/theming/bitmap/textBrokenGlyph.png)
In this example, the glyphs representing the special unicode symbols are not found in this custom font, so they show `?` symbols instead (from the `Common default` glyph image list), to indicate the missing element.
<--->
![](/theming/bitmap/textProperGlyph.png)
All glyphs are available on this font, so the text is properly shown.
{{</columns>}}

If the need comes to use a font but glyphs are not possible to be retrieved, then you can use the AltText variable from within `settext`, which can be used as a failsafe if the current string includes an unavailable glyph.

```lua
-- First argument is the original text, while the second is the alternative variant for compatibility.
self:settext( "H̶e̵a̶d̸g̷r̴i̸n̶d̴e̴r̶", "Headgrinder" )
```

With the code above, the case will be that the first image on the left will default to the second variable, given the missing glyphs from its sheet.

<center>

![](/theming/bitmap/textAltText.png)
</center>