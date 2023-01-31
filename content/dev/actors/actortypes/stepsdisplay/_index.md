---
title: StepsDisplay
weight: 0
geekdocCollapseSection: true
---

```lua
Def.StepsDisplay{}
```

## Attributes

There are no special atributes for this actor class. It inherits the atributes from [ActorFrame](../actorframe/). All special actions are performed with its [functions](#functions).

## Metrics Loading

When using the `Load` command, the following metrics are read to generate the StepsDisplay.

| Name | Type | Action |
| :--- | :--- | :----- |
NumTicks | number | Amount of ticks to show all the time.
MaxTicks | number | The max ammount of ticks to draw.
ShowTicks | bool | Enables the ticks. These are graphics that indicate the number of difficulty in individual blocks.
ShowMeter | bool | Enables the meter number.
ShowDescription | bool | Enables the chart description (if available).
ShowCredit | bool | Enables the chart credit for the steps (if available).
ShowAutogen | bool | Enables an icon to indicate this chart has been auto-generated.
ShowStepsType | bool | Enables the Steps type to the StepsDisplay.
ZeroMeterString | string | The string to show when the value is 0.
MeterFormatString | string | The string to format the value for the difficulty meter.

{{<hint>}}
The display frame, `Autogen` and `StepsType` are [AutoActors](../_index.md); while `Ticks`, `Meter`, Description and Credit are [BitmapText](../bitmaptext/).
All of these actors contain their own `On`, `Load` and `Set` commands.
{{</hint>}}

{{<expand "Default values">}}
```ini
[StepsDisplay]
FrameX=0
FrameY=0
FrameOnCommand=
FrameLoadCommand=%function(self,param) local bFlip = param.PlayerState and param.PlayerState:GetPlayerNumber() ~= PLAYER_1; self:zoomx(bFlip and -1 or 1); end
FrameSetCommand=%function(self,param) if param.CustomDifficulty and param.CustomDifficulty ~= "" then self:diffuse(CustomDifficultyToColor(param.CustomDifficulty)) end end
NumTicks=10
MaxTicks=14
TicksX=0
TicksY=0
TicksOnCommand=shadowlength,0;
TicksSetCommand=%function(self,param) if param.CustomDifficulty and param.CustomDifficulty ~= "" then  self:diffuse(CustomDifficultyToColor(param.CustomDifficulty)) if param.Meter > 9 then self:glowshift() else self:stopeffect() end end end
ShowTicks=false
ShowMeter=true
MeterFormatString="%i"
ZeroMeterString="?"
MeterX=30
MeterY=0
MeterOnCommand=shadowlength,0
MeterSetCommand=%function(self,param) if param.CustomDifficulty and param.CustomDifficulty ~= "" then self:diffuse(CustomDifficultyToLightColor(param.CustomDifficulty)); self:strokecolor(CustomDifficultyToDarkColor(param.CustomDifficulty)); end end
ShowDescription=true
DescriptionX=-10
DescriptionY=0
DescriptionOnCommand=shadowlength,0;uppercase,true;
DescriptionSetCommand=%function(self,param) if param.CustomDifficulty and param.CustomDifficulty ~= "" then self:diffuse(CustomDifficultyToLightColor(param.CustomDifficulty)); self:strokecolor(CustomDifficultyToDarkColor(param.CustomDifficulty)); end end
ShowCredit=false
CreditX=0
CreditY=0
CreditOnCommand=
CreditSetCommand=
ShowAutogen=true
AutogenX=40
AutogenY=0
AutogenOnCommand=
AutogenSetCommand=
ShowStepsType=false
StepsTypeX=0
StepsTypeY=0
StepsTypeOnCommand=
```
{{</expand>}}

## Updating information

When an update occurs to the StepsDisplay, the `Set` command is triggered, which contains a parameters table with the following information:

| Name | Type | Description |
| ---- | ---- | :---------- |
CustomDifficulty | string | The difficulty for this item. The reason why it's called `CustomDifficulty` is due to it using the CustomDifficulty metrics table, which allows you to customize the name of the difficulties in the theme to your liking.
Meter | number | The chart meter for this item.
DisplayDescription | string | The description for the chart. Can be empty.
Steps | Steps | The whole steps object. This object contains the information for Meter. Not available in Course Mode.
Trail | Trail | The whole trail object. Not available in Regular Mode.
StepsType | StepsType | The steps type that corresponds to this item.

## Functions

### `Load`
`(string sMetricsGroup)`

Loads the settings from the `sMetricsGroup` in the theme's `metrics.ini`.

### `SetFromSteps`
`(Steps steps)`

Load the data for the StepsDisplay with the `steps` provided.

### `SetFromTrail`
`(Trail trail)`

Load the data for the StepsDisplay with the `trail` provided.

### `SetFromGameState`

Loads the data for the StepsDisplay with the currently available data from GameState.
