---
title: Sound
weight: 3
geekdocCollapseSection: true
---

Used to play sound files outside of the common theme sound effects and the simfile's song itself.

Removes the need to use `SOUND:PlayOnce()`, as it allows for pre-loading the sound file at the start instead of loading (possibly many times) and playing the sound mid-screen.

```lua
Def.Sound{
	-- Load the audio called MySound, which is a ogg file in this example.
	File="MySound.ogg",
	-- Lets the audio pane from side to side. Useful for audios that need to play on a specific player side.
	SupportPan=true,
	-- Allows the audio to change rate and pitch.
	SupportRateChanging=false,
	-- this assigns the audio to be an Action, which is a flag for sounds that allows it to be muted by the player,
	-- with the use of the Mute Actions key (Default to "Pause").
	IsAction=true,
	OnCommand=function(self)
		-- When creating the actor, sound will not play automatically, so you need to use the play command
		-- to perform such action.
		self:play()

		-- If the audio has the "(loop)" flag set on its filename, it will loop infinetly. So to top it, use the
		-- appropiate command.
		self:stop()

		-- If the sound needs to be paused on a particular frame, and not to reset, use the pause command.
		self:pause( true ) -- Use false to resume it.
	end
}
```

## Table of Contents

{{<toc-tree>}}

## Attributes

| Name | Type | Action |
| :--- | :--- | :----- |
File | string | The audio file to be utilized for this Sound.
SupportPan | bool | Lets the audio pane from side to side. Useful for audios that need to play on a specific player side.
SupportsRateChanging | bool | Allows the audio to change rate and pitch.
IsAction | bool | Assigns the audio to become a Sound Effect, which allows it to be muted by the player if they so choose from the Effect Volume [Introduced in Project OutFox 4.9.9](/releases/A4.9.9) or by the [MuteActions](/user-guide/config/preferences/#muteactions) preference.
Precache | bool | Tells the engine to store this sound on memory for later use.