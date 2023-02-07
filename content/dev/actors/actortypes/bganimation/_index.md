---
title: BGAnimation
---

A compatibility actor class that allows you to run older .ini files for background animations. Requires [Quirks Mode](/user-guide/config/preferences/#quirksmode) to be enabled to function.

```lua
Def.BGAnimation{
    AniDir="MyAnimationFolder",
    LengthSeconds=10
}
```

## Attributes

| Name | Type | Description |
| ---- | ---- | :---------- |
AniDir | string | The directory to find the animation data from.
LengthSeconds | number | Backwards-Compatibility: If this is given, it will create a dummy actor that sleeps for the given amount of time.

It inherits attributes from [ActorFrame](../actorframe/#attributes).

## Loading process

If a `BGAnimation.ini` file is present on the folder to look up for, it is assumed to run a 3.9-type BGAnimation, which then it will run the process as a regular ini file.

If it's not present, it assumes it's a 3.0-type BGAnimation, which only contains video files. It will skip any files that start with an underscore.
