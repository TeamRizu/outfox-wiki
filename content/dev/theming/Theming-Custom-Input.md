---
title: "Custom Input"
weight: 5
---

OutFox allows custom input to be managed by the theme itself. This allows you full sandboxed control of the game for the purposes of the theme.

---

{{<toc>}}

# Implementing Input

There are a few ways to implement input, but the general action is to call `Screen:AddInputCallback( input function )` to the [ActorFrame](/dev/actors/actortypes/actorframe) responsible for the input. This can be either a function or a module that will deal with listening and sending instructions back to the engine, that actors can then pick up to provide feedback.

## Module method (OutFox Alpha 4 and onwards)
```lua
-- In the actorframe, we just call the module to handle the input.
return Def.ActorFrame{
	OnCommand = function(self)
		-- The module needs the actor handle itself to send commands back to it, so we give `self` as the
		-- argument.
		SCREENMAN:GetTopScreen():AddInputCallback( LoadModule("Lua.InputSystem.lua")(self) )
	end,
	-- With this, the actorframe is now responsible for handling input and sending it to others.
	StartCommand = function(self)
		SCREENMAN:SystemMessage("I have pressed START!")
	end
}
```

## More direct method (Works on legacy versions of SM5)
```lua
-- This actorframe will deal with a simple input set.
-- Let's make the input send a message when we press the player's assignated Start button.
-- event is sent over from InputCallback, and contains all the information needed to obtain input.
local function myCustomInput(event)
	-- First, let's verify that the input is being performed when pressing.
	-- There are three modes of input, which will be explain later in this chapter.
	if event.type == "InputEventType_FirstPress" then
		-- Ok, we have pressed the button once. Time to detect what button was pressed.
		if event.GameButton == "Start" then
			SCREENMAN:SystemMessage("I have pressed START!")
		end
	end
end

-- On this actorframe, we'll load the function.
return Def.ActorFrame{
	OnCommand = function(self)
		-- In this case, the function itself is now responsible of handling input and sending results to others.
		SCREENMAN:GetTopScreen():AddInputCallback( myCustomInput )
	end
}
```

# Anatomy of the event variable

When recieving input, you will be given a table by the name of `event`, which can be customized to whatever you want inside the function's arguments. It gives you a table, which contains all the information you need to determine what the user has performed to then report back to the theme.

Name | Returns | Description |
:------------ | :------ | :---------- |
controller | string | The GameController the event was mapped to, which will depend on what controller was the input mapped to. Will return nil if the button is not mapped to any controller.
button | string | The semi-raw button that was pressed. This is what the button was mapped to by the keymap settings, but without the conversions that occur when [OnlyDedicatedMenuButtons](/user-guide/config/preferences/#onlydedicatedmenubuttons) is true.  Will be empty if the button was not mapped.
type | string | The type of event. For more information, go to [Understanding Press Events](#understanding-press-events).
GameButton | string | The cooked button that was pressed. This is applied with mapping that occurs when [OnlyDedicatedMenuButtons](/user-guide/config/preferences/#onlydedicatedmenubuttons) is true applied. This is nil for unmapped buttons.
PlayerNumber | PlayerNumber | The player that the input is mapped to. Can be nil if its not on either player.
MultiPlayer | MultiPlayer | A MultiPlayer enumerator that is mapped to the input, can be used on MultiPlayer matches, can be nil if the input is not mapped to any MultiPlayer. Do not confuse this to PlayerNumber.

## The Device Input Table

Inside this table, is another table called `DeviceInput` (can be accessed from `event.DeviceInput`), which are the raw details on the InputEvent the player has performed, which give the device the event has been performed on, the button that was pressed, if its still pressed, how long ago was the button pressed, a Z level counter for mouse input devices, as well as checks for joystick and mouse.

Name | Returns | Description |
:------------ | :------ | :---------- |
device | string | Type of the device, which will start with `"Device_"`, and then followed with a InputDeviceNames entry.
button | string | The button that was pressed, which will start with `"DeviceButton_"`, and then followed with the key correspondant on the device.
level | float | A floating point value for analog input.
z | float | A floating point value for determining what level is the mousewheel at.
down | bool | Determines if the button is down. This is a combination of level with a threshold. and debouncing applied.
ago | float | How long ago this input occurred, in seconds.
is_joystick | bool | Checks if the device is a joystick.
is_mouse | bool | Checks if the device is a mouse.

## Understanding Press Events

When calling an input, you have `event.type`, which is the moment where the button has been pressed, and contains three states:

{{< mermaid class="text-center">}}
graph TB
    A["InputEventType_FirstPress<br>(When pressing the button for the first time)"]:::Transition --> 
	B["InputEventType_Repeat<br>(When holding the button)"]:::Transition -->
	C["InputEventType_Release<br>(When lifting the button from being pressed)"]:::Transition;
{{< /mermaid >}}

{{<hint info>}}
The repeat rate for `InputEventType_Repeat` is dependant on the current screen's `RepeatRate` metric, which determines how fast the input will be repeated every second.
{{</hint>}}

In order to filter what kind of input you want for specific actions, just include them in a if conditional check.
```lua
-- Let's say I want my start press to increase a variable and report it,
-- but also increase it while holding the button, but not when lifting it.

-- Initialize the variable to use as the counter.
local count = 0

local function myCustomInput(event)
	-- In this case, we'll check that the input is NOT Release, because that's the only InputEventType
	-- that we don't want verified on this check.
	if event.type ~= "InputEventType_Release" then
		-- Ok, we have pressed the button. time to count and report!
		if event.GameButton == "Start" then
			count = count + 1
			SCREENMAN:SystemMessage("The counter is now ".. count)
		end
	end
end

-- Now let's load the function to the actorframe.
return Def.ActorFrame{
	OnCommand = function(self)
		SCREENMAN:GetTopScreen():AddInputCallback( myCustomInput )
	end
}
```

# Mouse Input

Mouse input is supported on OutFox and earlier releases of SM5 via a MessageCommand system that determines which button was pressed to perform actions.

| Message Name | Segment of Mouse |
| :----------- | :--------------- |
MouseLeftClick | Left Mouse Click
MouseRightClick | Right Mouse Click
MouseMiddleClick | Middle Mouse Click
MouseThumb1 | Additional Mouse Click 1
MouseThumb2 | Additional Mouse Click 2
MouseWheelUp | Mouse Wheel Up
MouseWheelDown | Mouse Wheel Down

```lua
-- Example script to show a message when the left click of the mouse is pressed.
MouseLeftClickMessageCommand = function(self)
	SCREENMAN:SystemMessage("This is the left mouse click!")
end
```

{{<hint info>}}
Starting on OutFox Alpha 4.9.7GG, these MessageCommands now contain an argument to determine if the mouse click was lifted or not.
{{</hint>}}
```lua
-- Example script to show a message when the left click of the mouse is pressed.
MouseLeftClickMessageCommand = function(self,param)
	if param.IsPressed then
		SCREENMAN:SystemMessage("This is the left mouse click being pressed!")
	else
		SCREENMAN:SystemMessage("This is the left mouse click being lifted!")
	end
end
```

# General Recommendations

## Remove the callback when leaving the screen

Upon adding the callback into the screen, it will be stored in memory for input to be processed, but won't be cleared when leaving, which can cause input problems on the long run in the session.

```lua
-- Using the manual function method
OffCommand = function(self)
	-- To remove it, just call the same function that was used to control the screen.
	SCREENMAN:GetTopScreen():RemoveInputCallback( myCustomInput )
end
```

```lua
-- Using the InputSystem module
-- Before anything, set the function inside the actor itself.
OnCommand = function(self)
	self.callback = LoadModule("Lua.InputSystem.lua")(self)
	SCREENMAN:GetTopScreen():AddInputCallback( self.callback )
end,
-- And now, when leaving, it will have the right actor to remove.
OffCommmand = function(self)
	SCREENMAN:GetTopScreen():RemoveInputCallback( self.callback )
end
```