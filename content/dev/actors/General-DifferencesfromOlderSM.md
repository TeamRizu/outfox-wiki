---
title: Behavioral differences from SM 3.95/ITG
weight: 2
---

<!-- TODO: This is likely far from done. Add anything that's found that could be useful here if you'd like. -->

OpenITG, NotITG and SM 3.95 are popular engines based on older versions of StepMania that have communities that continue to support by making new content.

OutFox contains a similar feature set as the previous revisions of the game, but with some notable differences. This document aims to provide help with porting content to and from the different versions of the game.

## "Command" format vs "Function" format

Converting commands to the newer function format is generally recommended when porting content to SM5. The following sections detail what these processes.

### "Command" format

In SM3.95 & related engines, commands can be defined inside xml nodes like this:
```xml
OnCommand="x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoom,2;rotationz,180;linear,50;rotationy,-5000;rotationx,750;rotationz,750;sleep,100"
```
(Taken from WinDEU's "Golden Slaughterer" file from "WinDEU Hates You 5EVR".)

This is what can be considered "Command" format, which allowed for easy chaining of actor functions tweens.

For a quick translation into SM5, this can be wrapped with `cmd()`, but this is considered bad practice and inefficient (And it's still counted as "Command" format). However, it's used a lot in the past, so it's still here for backwards compatibility.

Another thing to note is that the functions inside this format (eg: x, rotationz, zoom, etc.) appear to be case-insensitive, all being converted to lowercase in the end. (Although in SM5, this appears to not be the case.)

### "Function" format

In SM5, commands can be defined inside lua tables like this:
```lua
OnCommand= function(self)
	self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y):zoom(2):rotationz(180):linear(50):rotationy(-5000):rotationx(750):rotationz(750):sleep(100)
end
```
(The function format version of the earlier command)

This is what can be considered "Function" format.

This is not exclusive to SM5, however. SM3.95 & friends can use lua functions inside xml nodes. But there is a caveat: Actor function chaining as seen in the example is not possible in SM3.95/OpenITG/NotITG. Instead, a separate `self:` would be needed for each function call.

Everything is case-sensitive in this format, so take care to ensure the casing is corrent.

## Actor Differences

Because the internals of the engines are different, actors may work differently with the same lines of code.

### Zoom and rotation order

- SM3.95 (and as a result, OpenITG & NotITG) apply the rotation, then apply the zoom.

SM5 applies the zoom and then applies the rotation.

In Project OutFox, this can be worked around by setting the `rotafterzoom` attribute to false, returning the SM3.95 behavior.

The notes & receptors already have this active to help with easilly replicating modifier effects from the other engines.

In SM5.2 and earlier, this has to be done with wrapper states or actorframes. This is done by having the wrapper do the positioning and zooming, while the main actor gets everything else. (This is still doable in Project OutFox if you're aiming to write content for multiple SM5s)

### Zoom's effect on the axis

SM3.95's zoom function only affected the x & y axis, while zoom affects all three axis in SM5.

It's fine for actors like Sprites or BitmapTexts, but it stops being 'normal' when actors like Models come into play.

This not only affects actors, but also affects modifiers that play with zoom (eg: Mini, Tiny).

A workaround is to either use only the x & y zooms or undo any scaling done to the z axis when performing a normal zoom.

### ActorFrameTexture's capture method.

In NotITG, an ActorFrameTexture (AFT), captures everything that was rendered before it and places it into a texture.

SM5's AFT captures everything inside of it (Hence, *ActorFrame*Texture), and places that into a texture.

This difference makes for a nontrivial challenge to port content across if AFTs are in use.

Due to how AFTs work in nITG, lumikey or chromakey shaders are needed if transparent textures of an actor are needed.

### Attribute renames

A few of the attributes got renamed, so when porting content, take care to ensure these are dealt with:

- `effectdelay` (SM3.95) becomes `effect_hold_at_full` (SM5)

- `hidden(0)` and `hidden(1)` (SM3.95) becomes `visible(false)` and `visible(true)` (SM5)

## Scaling across multiple themes

Most themes made for the SM3.95 era are considered "480p" because it's internal height was always 480 pixels.

SM5 changes this, with SM5.1's default theme shifting towards a hight of 720 pixels, which can be considered an "HD" Theme.

Several things have to be scaled in accordance to this, such as:
- Zoom (All axis are involved)
- Positioning (All axis are involved)
- Effects (Not all need to be scaled.) <!--TODO: Which ones need it and in what way?-->

A Common ratio would be this: `SCREEN_HEIGHT/intended_height` (for SM3.95-style content, `intended_height` is 480)

However, this does not apply to every actor. If an actor is *inside* something that's already scaled (eg: the NoteField inside the scaled Player), it does not require the above scaling.

## Modifier Differences

Some modifiers have completely different behavior, which can make porting modifier-related content less trivial.

### Tiny

- In SM5, positive tiny brings the columns together similar to what Mini visually does.

NotITG instead only zooms the notes.

The only options are to combine column movement modifiers to counteract the movement, use the column-specific variants instead, or use tinyx & tinyy (which is technically closer to what nITG's Tiny actually does).

This only affects the original Tiny modifier, and not its' variants.

- The zoom equation is different. SM5 uses this equation: `0.5^strength`, while NotITG uses this one: `1 - 0.5*strength`. (100% == 1.0 for the strength)

It just so happens that NotITG's equation is the exact same one Mini uses for notefield zoom.

In OutFox, this can be altered with the `TinyUsesMiniCalc` sub-modifier. When active, it switches to NotITG's equation, which allows for a wider range of zooms.

In SM5.2 and earlier, this can be somewhat replicated by taking the two equations and solving for the equivalent strength. (Doesn't work for negative strengths in NotITG, through)

This affects every variant of Tiny.

# Differences from older SM5 builds

Project OutFox changes the default behavior from the older SM5 builds. This section documents those changes.

## Column-specific function changes

Instead of typing \<mod name\><\column number\> (As in SM5.1), you now type \<Mod Name\>Col, and the first parameter is the column number. It also allows for mass applications by passing `nil` as the column number.

## Player vanish point

In SM5.2 and earlier (due to a math error), the player's vanish point at the x axis is skewed towards their side of the screen instead of being directly at the center of the notefield. This is not an issue in SM5.0.7 and earlier or in OutFox and later.

For example: P1 is at the left half of the screen, so its' vanish point is slightly skewed towards the left edge of the screen.

## vibrate() now takes the current zoom into account

This is similar to how it behaves in SM3.95/ITG.

SM5.1 and earlier <!-- Unknown if 5.2 has this issue --> take the endpoint zoom and use that for vibrate.

For example:
```lua
actor:vibrate():zoom(20):linear(2):zoom(0)
```
Would result in no visible vibration because the end point is 0, while in OutFox and SM3.95, one would see the vibration start at 20 and go down as the zoom reaches 0.

## Lua is more strict with escape sequences.

In older builds of SM, an invalid escape sequence is ignored, with the offending \\ removed. In Lua 5.3 (and consequentally, Project OutFox), this now causes a lua error, which may result in themes or effect files not running correctly or at all.
<!-- Is there any way we can stop this in the lua parser itself? And if there is, should we do it or do we enforce rules? -->
