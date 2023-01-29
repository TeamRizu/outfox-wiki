---
title: Loading Additional Bones
weight: 1
---

Starting on [Project OutFox Alpha 4.1](/releases/A4.1), Models can now load more than one bone at a time to playback different animations on demand. For this, it is suggested to separate the bone animation data to a separate text file, to
not have repeat model data on each animation file, the parser already deals with the job of only loading bone data.

To add a new animation to the model, use the `LoadBones` command. It requires a name for the animation, and a relative path to the animation file.
```lua
-- This will load a animation called "WarmUp" to the model.
self:LoadBones( "WarmUp", "Warm1.txt" )
```

When the need for using the new animation arrives, use the `playanimation` command to start it.
```lua
-- Since the previous animation loaded that was recently added was called "Warmup", we'll use that
-- as the argument to use. The second value determines the speed scale of the animation.
self:playanimation( "Warmup", 1 )
```

In some cases, you may want to use existing dancing data that you might have on a particular [character]().
Given this, you can load directly from it, by loading your character model from the [CHARACTER]()'s GetModelPath()
and render it to the scene.

Then when the need comes to add animation data, use the LoadBones command to load additional bones, in which you can still use the Character's functions to get specific animation files like a Break, Warmup or Dance animation.

```lua
-- Store a random character that will be used on the model object below.
-- This will look for any available characters on the 'Characters' folder
-- on the root directory of the game.
-- If none are found, it will report back as null, so remember to check for its validity.
local randomCharacter = CHARACTER:GetRandomCharacter()

return Def.Model{
	-- In this example, we'll load the animation data on demand, so
	-- it won't be added during construction, but in the OnCommand.
	Meshes=randomCharacter:GetModelPath(),
	Materials=randomCharacter:GetModelPath(),
	Bones=randomCharacter:GetModelPath(),
	OnCommand=function(self)
		self:Center()

		-- When a model begins its animation, it will loop indefinitely. To stop that, use the loop command to
		-- set the flag to false.
		self:loop(false)

		-- Now let's load a bone animation from the character to the model. We'll use a dancing animation.
		-- There are functions available to obtain the path for each area for the animation types,
		-- so in order to choose one at random, we need to convert this into a table that contains the available
		-- animations.
		local danceAnims = FILEMAN:GetDirListing( randomCharacter:GetDanceAnimationPath() )
		
		-- Load the random input from the table to the model.
		self:LoadBones( danceAnims[ math.random(1,#danceAnims) ], "dance" )

		-- now play the animation.
		self:playanimation("dance",1)
	end
}
```