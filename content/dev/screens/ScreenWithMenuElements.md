---
title: "ScreenWithMenuElements"
---

Parent of: [Screen](../Screen) 

---

The screen for almost all defined screens in the game.

As a recommendation when [making custom screens](/dev/theming/Theming-2-Screen-Creation/), it is advised to use this screen for its simple base.

# Available Metrics

| Title | Default Value | Description |
| --- | --- | --- |
| PlayMusic | false | Plays music assigned for the screen when its loaded. If you wish to retain music from the previous screen, set this to off.
| MusicAlignBeat | false | Tells the screen to use the song's beat so actors can go along to the rhythm. For this to work, you must supply a stepchart that contains the BPM information in your Sounds folder. More info here.
| DelayMusicSeconds | 0 | Specify how many seconds the screen should wait before playing the background music.
| TimerSeconds | -1 | Specify how many seconds this screen will allow if the timer is enabled.
| TimerMetricsGroup | "MenuTimer" | Sets a Metrics group for the type of timer to be shown.
| TimerStealth | false | If enabled, it will make the menu timer invisible, including the sound. Can be useful to make time-forced screens.
| MemoryCardIcons | true | Shows the memory card icons on the screen.
| StopMusicOnBack | true | Determine if music should stop when the player hits cancel or presses back on this screen.
| WaitForChildrenBeforeTweeningOut | false | Tells the screen to wait for all actor animations included on the screen to finish before transitioning.

The following functions are requested by the engine, but aren't used.
| Title | Default Value | Description |
| --- | --- | --- |
| ShowStageDisplay | false | Tells the game to show a StageDisplay on the screen. A remnant from the 3.9 days. |

# Announcer functionality

Upon entering this screen, the following sound clip is requested to play: `[ScreenName] intro`.

# Functions

### `Cancel()`

Tells the screen to go to the previous screen. This is the equivalent of doing `SCREENMAN:GetTopScreen():StartTransitioningScreen("SM_GoToPrevScreen")`.


```lua
SCREENMAN:GetTopScreen():Cancel()
```

### `IsTransitioning()`

Returns `true` if the screen is currently transitioning.

Factors for the transition include:
- Entering the screen, where the "In" layer is playing
- Exiting the screen, where the "Out" layer is playing.

For information about these screen layers, check out [Anatomy of a Screen](/dev/theming/Theming-3-Anatomy-Screen/).

```lua
if SCREENMAN:GetTopScreen():IsTransitioning() then
    SCREENMAN:SystemMessage("There is animation playing!")
end
```

### `StartTransitioningScreen`
`(string sScreenMsg)`

Tells the screen to go to play its Out transition, and then posts the ScreenMessage `sScreenMsg`. To go to the next screen, use `"SM_GoToNextScreen"` as the argument.

```lua
SCREENMAN:GetTopScreen():StartTransitioningScreen("SM_GoToNextScreen")
```

### `SetAllowLateJoin`
`(bool bState)`

Sets whether the screen allows late joining. This allows an extra player to join in the game without being on the title screen.

```lua
-- Now players can join in at any time when they're in the current screen.
SCREENMAN:GetTopScreen():SetAllowLateJoin(true)
```

{{<hint type="important">}}
This only works for screens that are just ScreenWithMenuElements, as most derived screens have their own hard coded function for whether late joining is allowed.
{{</hint>}}
