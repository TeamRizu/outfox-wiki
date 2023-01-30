---
title: Theming tips and tricks
weight: 3
geekdocCollapseSection: true
---

This section is meant to showcase methods to create certain kinds of actors and recommended practices that are commonly found in themes.

## Verifying Command availability
<!-- [Verifying Commmand availability](cmdavailable.md) -->
While developing a theme, you may come across commands and functions that are available for current or future versions of OutFox,
however it is recommended to make sure that your theme is still compatible for users that run older versions of OutFox or StepMania,
and this can be done via a check for its existance.

Let's say for example that you want to use the `GetTotalScoresWithGrade` Profile function that is available in OutFox Alpha 4.15.
That command is not available on previous versions nor in StepMania, so you can use an if check to verify that it exists.

```lua
-- Since the GetTotalScoresWithGrade command is part of the Profile namespace, we need to verify it after we have
-- obtained our profile from the ProfileManager namespace.
local myProfile = PROFILEMAN:GetProfile( GAMESTATE:GetMasterPlayerNumber() )

-- Now let's verify that the command is available.
-- Note we're using myProfile to verify this operation rather than PROFILE,
-- and this is because the object PROFILE:GetProfile returns is the PROFILE object itself.
if myProfile.GetTotalScoresWithGrade then
	SCREENMAN:SystemMessage("Command Available!")
end 
```

When running OutFox Alpha 4.15 or higher, you'll recieve the message "Command Available!" when executed; while any other 
build will not report the message given it's not available on the Profile namespace.

You can also use this search when assigning values to provide a failsafe value in the case the function is not available via a ternary operator.
```lua
-- If the operator passes, it will return the amount of scores from the Tier01 grade, otherwise it'll return 0.
local GradedScores = myProfile.GetTotalScoresWithGrade and myProfile:GetTotalScoresWithGrade("Grade_Tier01") or 0
```

## Make sure to cover edge cases for commands
This is a specially common case on the Music Wheel. A fundamental change was done around the 5.0.11 era that remove the wheel verification
for items, making the themes responsible of dealing with such task. So in the case arrives where items need to be fetched, make sure to verify
that the Index/Song/Course you're obtaining for the SongWheelItem is not null; otherwise you'll start recieving a lot of error messages.

```lua
-- Let's say you have a text actor that will display the name of the song of the current item on the wheel.
return Def.BitmapText{
	Font = "Common Normal",
	SetMessageCommand = function(self,params)
		-- Setting the value like this will work and display the song name, but a moment will arrive when the wheel
		-- will start generating folders, or special items like random, roulette or portal, making the variable invalid while regenerating, which will throw errors.
		self:settext(params.Song:GetDisplayFullTitle())

		-- So a better method to perform this is verifying that params exists and also params.Song exists.
		-- For this wheel example, params is available available, but params.Song can become null on groups.
		if params.Song then
			self:settext(params.Song:GetDisplayFullTitle())
		else
			-- If it's not available, then let's clear the text so it doesn't show up
			-- on any item that isn't a song.
			self:settext("")
		end
	end
}
```
