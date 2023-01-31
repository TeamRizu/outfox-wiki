---
title: ScoreDisplayAliveTime
weight: 0
---

A [BitmapText](../bitmaptext/) that provides the amount of time the player has survived throughout the current session.

```lua
Def.ScoreDisplayAliveTime{
	PlayerNumber = PLAYER_1,
	MultiPlayer = "MultiPlayer_P1"
}
```

## Attributes

{{<hint>}}
Only one of the attributes is needed to make the actor function.
{{</hint>}}

| Name | Type | Action |
| :--- | :--- | :----- |
PlayerNumber | PlayerNumber | The player to obtain its alive time during the session.
MultiPlayer | Multiplayer | The multiplayer to obtain its alive time during the session.

This actor inherits the attributes from [BitmapText](../bitmaptext/#attributes).