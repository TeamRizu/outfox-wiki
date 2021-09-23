---
title: Controlling Sound
weight: 1
---

The Def.Sound actor is part of RageSound, another component in the engine that deal with audio, and they both work
together to provide playback of said sounds. That said, in order to control specific elements from them, you must
understand how to access them.

Only using commands directly inside Def.Sound will provide commands related to the sound actor; to use commands
related to its RageSound component, you must `get()` the component.

```lua
-- To control actions like volume, you need to access the ActorSound's RageSound, by using the get function.
local MyRageSound = self:get()
```

With this object obtained, you can control elements like the sound's position, volume, pitch and speed.
Note that some components need some flags to be enabled which have been pointed out as commments alongside them.
```lua
-- This function will return the value for the Def.Sound's RageSound component, which allows for expanded
-- controls.
local MyRageSound = self:get()

MyRageSound:volume( 0.5 ) -- Changes volume (0 to 1).
MyRageSound:pitch( 1.2 ) -- Requires SupportRateChanging to work.
MyRageSound:speed( 1.4 ) -- Requires SupportRateChanging to work.
```

## Adjusting Properties

With RageSound, you have access to different kinds of sound properties to determine how you want your sound to be played.

```lua
MyRageSound:SetParam( "Property Name", Value )
```

The available properties to change are detailed on the table below.

| Name of Property | Description |
| :--------------- | :---------- | 
Speed | Determines how fast the speed will play.
Pitch | Determines the notation for the sound's tune.
StartSecond | Sets the initial time of the sound to play.
LengthSeconds | Sets the length of the sound.
FadeInSeconds | How long the audio transition to full volume at the start.
FadeSeconds / FadeOutSeconds | How long the audio transition to silence at the end.
Volume | How loud will the sound be (0 to 1 value).
<!--Pan | (Requires the SupportRateChanging flag), sets the direction of the audio to go through, like the left or right channel.-->