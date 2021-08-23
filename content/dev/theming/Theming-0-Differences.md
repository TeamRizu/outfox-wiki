---
title: "Theming differences between older versions"
weight: 0
---

It is important to note the following aspects when starting to make your theme, depending on how much you've experimented on existing themes, and compare the practices of such actions compared to now.


## There are no things such as "header", "help" and "footer" by default

> Date of change: starting on _SM-SSC_

You may have noticed themes even in _SM5_ and later that include header and footer, while technically they exist on those theme's scopes, they are not created by the engine. It is usually created on ScreenWithMenuElements decorations in a conditional function called `StandardDecorationFromFileOptional`, which looks for a metric on the current screen (or `ScreenWithMenuElements` as a fallback), to determine if it should be created or not.

Here's an implementation of such thing in Soundwaves.
```lua
-- Loads up a slew of objects to load into the screen, like how 3.9 does.
-- I prefer to keep these optional, incase another screen wants to hide 
-- these elements.
return Def.ActorFrame {
	StandardDecorationFromFileOptional("Header","Header"),
	StandardDecorationFromFileOptional("Footer","Footer"),
	StandardDecorationFromFileOptional( "Help", "Help" )	
}
```

And its application on a screen that, for example, does not want both header and footer.
```ini
[ScreenInit]
ShowHeader=false
ShowFooter=false
```
## Numbers folder does not exist

> Date of change: starting on _SM-SSC_

Starting in _SM-SSC_, fonts that were only number implemented now reside alongside the standard font glyphs in the Fonts folder (and are indicated with the `[numbers]` tag on their filename).

## XML loading of files is not applicable

> Date of change: _SM4 Beta 5_

Lua is the scripting language for modern _StepMania_ builds. If any kind of XML loading is needed, you will need to instruct the user to enable ["Quirks Mode"](../../../user-guide/config/preferences/#quirksmode), an option on the Preferences.ini file that allows loading of XML files in a compatibility layer.

## CMD is deprecated

> Date of change: _OutFox Alpha 3_

`cmd()` is a string-like command that allows application of commands without performing the entire syntax in plain Lua. However, it is not recommended to use this for commands, as it can bring bugs which will be mentioned below, but also introduces loading overhead as it has to convert the string back into actual Lua.

{{< columns >}}
```lua
-- cmd example
OnCommand=cmd(Center;rainbow;zoom,0.5);
```
<--->
```lua
-- Lua example
OnCommand=function(self)
	self:Center():rainbow():zoom(0.5)
end
```
{{< /columns >}}

### Some bugs to point out from CMD

- `self` cannot be utilized to obtain itself as `self` is a non-existant object in its scope.

```lua
-- This will fail because the engine doesn't know what self is in this scope.
OnCommand=cmd(zoomx,self:GetZoomedWidth()*.5);
```

