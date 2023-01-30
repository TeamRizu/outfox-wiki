---
title: Doing Mods with Def.NoteField
weight: 1
---

Usually, a Player controls a [NoteField](../notefield/), which includes positioning, zooming, rotation and vanish point manipulation. The game itself would also handle approach rates for modifiers used on a Player.

With [Def.NoteField](../notefield/), this is now done manually, since there is no "Player" to handle everything.

## Applying modifiers

Applying modifiers is instant, unlike the approach rate behavior usually seen.

This can be done through multiple ways:

### 1. Using the ModsFromString function in the NoteField.
- Allows one to easilly set the modifiers on the [NoteField](../notefield/) through modstrings.
- Some modifiers will not be usable through modstrings.

```lua
Def.NoteField{
	OnCommand= function()
		self:ModsFromString('drunk')
	end,
}
```

### 2. Grabbing the PlayerOptions of the NoteField
- For now, `"ModsLevel_Current"` has to be used, since the game will no longer handle approaching from `"ModsLevel_Song"`.
- Allows for the use of all modifiers a Player can access.
- Requires knowning how to use the PlayerOptions functions.

```lua
Def.NoteField{
	OnCommand= function()
		self:GetPlayerOptions('ModsLevel_Current'):Drunk(1)
	end,
}
```

## NoteData

A [NoteField](../notefield/) starts with the chart the specified player used. However, SetNoteDataFromLua is usable on a Def.NoteField, allowing one to change the chart used. Unlike player, there is no SetNoteData function (for now), so the table format from GetNoteData has to be followed.

## Replicating Mini and Perspective
Refer to the section [How a Player Manipulates its' NoteField](../NoteField-PlayerManipulation).
