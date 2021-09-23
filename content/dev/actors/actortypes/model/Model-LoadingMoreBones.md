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