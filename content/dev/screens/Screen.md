---
title: "Screen"
---

The base screen.

{{<toc>}}

# Available Metrics

| Name | Default Value | Description |
| --- | --- | --- |
| NextScreen | "" | Determines what the next screen will be when leaving this screen.
| PrevScreen | "" | Determines what the previous screen will be when canceling or backing out of this screen.
| PrepareScreens | "" | Tells the game to preload the indicated screens. This can save loading times, but keep in mind that it can cause a lag spike on the current screen, depending on how heavy the screen is.
| PersistScreens | "" | Tells the game which screens to keep in memory. This can be useful for screens that don't need that many updates. Examples of this can be found in [Preparing screens](#preparing-screens).
| AllowOperatorMenuButton | true | Allows the current screen to press the operator button to jump to the operator menu.
| HandleBackButton | true | Toggles control of the back button on this screen. Disable it to prevent players from going back.
| RepeatRate | -1 | The rate for how a button will be repeated while being held every second.
| RepeatDelay | -1 | How long should the screen wait before repeating the button after being held?
| LighsMode | "LightsMode_MenuStartAndDirections" | Sets the lights mode for this screen.

# Preparing screens

This screen class contains the `PrepareScreens`, `PersistScreens` and `GroupedScreens` metrics, which apply to all screens that take this one as a base (a.k.a [ScreenWithMenuElements](../ScreenWithMenuElements), [ScreenTitleMenu](../ScreenTitleMenu), etc.)

The game loads screens into a pool of "Prepared" screens, which are screen previously loaded to be available on demand.
When a screen pops off the stack, it goes to the prepared list.
Preloading the lightweight screens can improve responsiveness, but preloading the expensive screens may use too much memory
and take too long to load all at once.

Some example cases for the usage of these screens would be the following:

## Case 1: Loading option screens.

Here we'll use two screens: `ScreenOptions1` and `ScreenOptions2`.

```ini
[ScreenOptions1]
PreloadScreens="ScreenOptions2"
PersistScreens="ScreenOptions1,ScreenOptions2"
```

- `ScreenOptions1` preloads `ScreenOptions2`, and persists both.
- Moving from `ScreenOptions1` and `ScreenOptions2` and back is instant and reuses both.

## Case 2: ScreenMenu grouping.

Let's take for example using a `ScreenMenu` that calls a Submenu called `ScreenSubMenu`.

```ini
[ScreenMenu]
PersistScreens="ScreenMenu,ScreenSubMenu"
GroupedScreens="ScreenMenu,ScreenSubMenu"
```

- `ScreenMenu` groups and persists itself and `ScreenSubMenu`.
- `ScreenSubMenu` is not preloaded, so it will be loaded on demand the first time it's used, but will remain loaded
**if it returns** to ScreenMenu.

## Case 3: Entering ungrouped screens.

If a screen is added to the screen stack that isn't in the current screen **Group** (which is done by using `GroupedScreens`),
the screen group is reset. All prepared screens are unloaded and the persistance list is erased.

An example:

```ini
[ScreenOptions1]
GroupedScreens="ScreenOptions1,ScreenMenu"
```

- `ScreenOptions1` groups itself and `ScreenMenu`.
- Entering `ScreenMenu` through `ScreenOptions1` will cause a load on-demand, as it is not a preloaded screen.
- Returning to `ScreenOptions1` from `ScreenMenu` will be instant, as the screen is still in memory, being part of the existing
group.
- Upon entering another screen that isn't part of the group, a.k.a `ScreenTitleMenu`, will cause this group to be reset, and all prepared screens will be unloaded.
- Entering back to `ScreenOptions1` will now require a full load to generate a new screen group and prepare the screens again.

# Functions

### `GetNextScreenName()`

Returns the name of the next screen.

```lua
local name = SCREENMAN:GetTopScreen():GetNextScreenName()
SCREENMAN:SystemMessage(name)
```

### `SetNextScreenName()`
`(string sScreenName)`

Sets the name of the next screen.

```lua
-- This will set the next screen to be the operator menu.
SCREENMAN:GetTopScreen():SetNextScreenName("ScreenOptionsService")
```

### `GetPrevScreenName()`

Returns the name of the prev screen.

```lua
local name = SCREENMAN:GetTopScreen():GetPrevScreenName()
SCREENMAN:SystemMessage(name)
```

### `SetPrevScreenName()`
`(string sScreenName)`

Sets the name of the prev screen.

```lua
-- This will set the prev screen to be the operator menu.
SCREENMAN:GetTopScreen():SetPrevScreenName("ScreenOptionsService")
```

### `PostScreenMessage()`
`(string sMessage, number fTime)`

Sends a ScreenMessage to the current screen after `fTime` seconds. Depending on what screen you have, you can use this to call up specific functions or updates.

```
SCREENMAN:GetTopScreen():PostScreenMessage("SM_GainFocus",2)
```

### `lockinput()`
`(PlayerNumber pn)`

Locks the input for a specific player. Once this is off, the player cannot move anything that is controlled by the engine. They can *still* control
areas where Lua input is involved instead. In fact, this function is recommended if you want to contain custom Lua elements that can be controlled
on top of an engine-generated screen.


```lua
-- Now Player 1 cannot control the game.
SCREENMAN:GetTopScreen():lockinput("PlayerNumber_P1")
```

### `GetScreenType()`

Obtains the kind of screen defined. These can vary from the 4 types available:

- Attract
- GameMenu
- Gameplay
- SystemMenu

Each screen has one of these defined, and you can use this to determine if certain features or elements should only be shown in the preferred kind of
screen.

```lua
local tp = SCREENMAN:GetTopScreen():GetScreenType()
SCREENMAN:SystemMessage(tp)
```

### `AddInputCallback()`
`(function func)`

Adds a custom input callback for the current screen. This is the backbone for creating custom Lua input.

For more information about how to use this function and how Lua input works, check out: [Custom Input](/dev/theming/Theming-Custom-Input).

### `RemoveInputCallback()`
`(function func)`

Removes the input callback defined from the input stack. Use this to cleanup any custom input functions that you don't need anymore.

For more information about how to use this function and how Lua input works, check out: [Custom Input](/dev/theming/Theming-Custom-Input).
