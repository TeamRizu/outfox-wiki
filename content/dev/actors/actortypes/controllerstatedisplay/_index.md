---
title: ControllerStateDisplay
---

Creates an [ActorFrame](../actorframe) that contains button sprites for a specific game mode to indicate their pressed state. A more visual version of Test Input.

{{<hint>}}
The class only detects input from MultiPlayer players. These are a different kind of player that are exclusively on controllers.
{{</hint>}}

{{<hint type="important">}}
The ControllerStateDisplay only detects pump buttons. [It has been like this since July, 2007](https://github.com/stepmania/stepmania/commit/42c69f8bc8ae85df56591b274eebd969600c34b9).
{{</hint>}}

```lua
Def.ControllerStateDisplay{
}
```

## Attributes

There are no special attributes to this actor class. It inherits from [ActorFrame](../actorframe).

## Loaded Graphics

When running either [`LoadMultiPlayer`](#loadmultiplayer) or [`LoadGameController`](#loadgamecontroller), the following textures are loaded.

`sType` in this context is the Type provided as the first argument on both functions.

- `[sType] frame`: The background frame for the buttons
- `[sType] [ControllerState]`: A [Sprite] that represents the button.

## Functions

### `LoadGameController`
`(string type, GameController gc)`

Loads a GameController to be used on the ControllerStateDisplay. It is automatically given a MultiPlayer of `MultiPlayer_Invalid`.

{{<hint>}}
You can theoretically use this function to have functionality on a regular controller / player, given those also use GameController.
{{</hint>}}

### `LoadMultiPlayer`
`(string type, MultiPlayer mp)`

Loads a MultiPlayer `mp` to detect its input. Calling this function will make the ControllerStateDisplay use a controller of `GameController_1`.
