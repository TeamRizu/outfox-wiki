---
title: PercentageDisplay
weight: 3
geekdocCollapseSection: true
---

The PercentageDisplay is an actor which relies on [BitmapText](../bitmaptext) to draw a player's current score in a percentage (%).

While using this actor, any kind of text string manipulation won't work if **AutoRefresh** is enabled, as it constantly updates the [BitmapText](../bitmaptext) for **Percent** and **PercentRemainder** (if defined) with the current percent data.

{{<hint info>}}
If **Percentage Scoring** is disabled, this actor will show the score in Dance Points instead (`000000000`).

Note that this won't add commas to the score, so it will need to be declared using the `commify` function on the `FormatPercentScore` Attribute.
{{</hint>}}

```lua
Def.PercentageDisplay{
	DancePointsDigits = 2,
	AutoRefresh = true,
	FormatPercentScore =
	Percent = Def.BitmapText{
            Font = "Common Normal" -- Alias of the default font.
	}
	PercentRemainder = Def.BitmapText{
            Font = "Common Normal" -- Alias of the default font.
	}
}
```

## Table of Contents

{{<toc-tree>}}

## Attributes

| Name | Type | Action |
| :--- | :--- | :----- |
DancePointsDigits | int | Defines how many digits should be shown when the score needs to be presented as dance points. Applicable if **Percentage Scoring** is **disabled**.
AutoRefresh | bool | Tells the actor to automatically update if there's any update to the player's score.
FormatPercentScore | function | Tells the actor how to present this percentage score for the Percent and PercentRemainder actors. Applicable if **Percentage Scoring** is **enabled**.
Percent | [BitmapText](../bitmaptext) | The text that will draw the main percentage. Can also draw the entire percentage (including decimals) if **PercentRemainder** is not defined.
PercentRemainder | [BitmapText](../bitmaptext) | The text that will draw the decimals for the percentage score.

## Functions

### LoadFromStats
`( PlayerState state, PlayerStageStats stats )`

Loads the player information so the PercentageDisplay can update based on the player data.

{{<hint warning>}}
If **AutoRefresh** is off, this data won't be updated automatically and the function will need to be called again manually to perform the same thing.
{{</hint>}}
