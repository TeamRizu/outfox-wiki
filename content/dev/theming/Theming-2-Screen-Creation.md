---
title: "Creating a custom screen"
weight: 2
---

OutFox allows for creations of screens outside of the engine scope. This can be useful for elements that want to, for example, have no involvement with the engine at all, and want to process information with your own custom code.

## Creation of screen definitions

For this, you will need to add the following to the [metrics.ini](yes.md) file, mentioned on a previous chapter.
```ini
# This will be the name for the screen, which we can access in a moment using a metric command or lua.
[MyCustomScreen]
# This will determine what elements will take for loading as a failsafe once it begins.
# For this example, we'll use ScreenWithMenuElements.
Fallback="ScreenWithMenuElements"
```

As you notice, we're using the `Fallback` item. This is to have an existing screen as a fail-safe which makes the engine call existing elements that this new screen does not have at the moment, such as its screen overlays, sounds, graphics, etc. By using this, it also fetches its class.
{{< hint danger >}}
Every single screen created **must** contain some kind of class, otherwise the engine will not know how to respond to it and crash or send out an error. If you are unsure which class to use, you can rely on **ScreenWithMenuElements**, as it is the most basic screen class type, and the skeleton for every other class.
{{< /hint >}}

## Acessing the screen

Now with the metric information added, we have to have a way to enter the screen. There are mainly 3 ways to send the user to the screen.

### Method 1: Using InitialScreen

This method will make the screen be the first one loaded as soon as the engine is loaded, which is useful for testing elements that may require a full restart or need quick access to such screen when performing extensive development.

For this, the following needs to be added to the [metrics.ini](yes.md) file.
```ini
[Common]
# Replace the string with the name of your new screen.
InitialScreen="YourScreenName"
```

### Method 2: Using metrics

This makes use of an existing ScreenSelectMaster object to use one of its Choice option commands to include the new screen. For this example, we'll use a ScreenTitleMenu metric set, which only contains the minimum to modify what the choices will perform.

```ini
[ScreenTitleMenu]
# ChoiceNames will deal with what are options to create on the scroller.
# Notice that some of the options here are not present below, and that's because
# _fallback will take care of filling that information in as a fail-safe.
ChoiceNames="GameStart,Options,Edit,Jukebox,GameSelect,Exit"

# The actual choices. Notice the applydefaultoptions segment in the string.
# This is used to reset the player's options back to default given some arcade settings.
ChoiceGameStart="applydefaultoptions;text,Game Start;screen,"..Branch.AfterTitleMenu()
ChoiceOptions="screen,ScreenOptionsService;text,Options"
ChoiceEdit="text,Edit/Share;screen,"..Branch.OptionsEdit()
ChoiceExit="screen,ScreenExit;text,Exit"
```

To change what screen to move into, just change the value of any of the `screen` segments on that example, and then reload your metrics with Shift + F2. Let's use `ChoiceOptions` as an example.

```ini
ChoiceOptions="screen,YourScreenName;text,Options"
```

### Method 3: Using Lua to redirect

In an existing Lua file, you can call ScreenManager to set a new screen, using `SetNewScreen`. As soon as this command is called, the new screen is created.

```lua
SCREENMAN:SetNewScreen( "YourScreenName" )
```

Another method to set a new screen within Lua, is to change the name of the NextScreen to the new screen that has been created.

```lua
-- Set the next screen to our new one.
-- With this, you would be done for most screens that only need a start press to go to the next screen.
SCREENMAN:GetTopScreen():SetNextScreenName( "YourScreenName" )

-- However, if your screen needs to loaded now but you want transitions to be played, use
-- the PostScreenMessage command to call the out animation.
SCREENMAN:GetTopScreen():PostScreenMessage( "SM_GoToNextScreen", 0 )
```

{{<hint info>}}
Both of these commands can be chained to avoid fetching all screen data multiple times.
```lua
SCREENMAN:GetTopScreen():SetNextScreenName( "YourScreenName" ):PostScreenMessage( "SM_GoToNextScreen", 0 )
```
{{</hint>}}