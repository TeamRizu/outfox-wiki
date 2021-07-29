---
title: "Sounds"
weight: 5
---

Your theme can contain sounds, which are either sound effects or music that will play across screens or actions. You can find the difference between these items by looking at their file names. The structure goes as follows:

```
[The name of the screen] [engine defined action / music / custom set controlled by lua]
```

There are specific elements that are loaded by the engine to perform sound playback, for example, when moving up or down on a options menu, it will grab `ScreenOptions prev/next` for its sound effects. The hierarchy of screens applies here as well, so for example, if you have an options screen that wants to use custom sounds rather than the global sounds that other option menus will use on the same theme, just apply the name of the screen that will use those new sounds.

## Conditional Music

Originally introduced on SM-SSC, this feature allows for music to be defined by lua rather than a fixed audio file. This can be particuraly useful on situations where you want a screen to play different music files based on performance.

```lua
-- Lets say that my fallback sound (the one that will play if anything fails) will be Sound1.
local mySound = "Sound1"

-- Now, let's check for a condition that will update that variable if true.
if GAMESTATE:IsEventMode() then
	-- If my current session is in event mode (no stage limit), then it will swap the value
	-- to Sound2, a different sound file.
	mySound = "Sound2"
end

-- And now, let's return the result of the variable back to the engine.
return THEME:GetPathS("",mySound)
```

{{< hint warning >}}
The value requested by this file is an **absolute path**, which is why `THEME:GetPathS` has been included, as it fills the path directory to the current theme's Sounds folder.
{{</hint>}}