---
title: Input Manipulation
weight: 1
---

[NoteField](../) has multiple functions that allow for faking and manipulating input & judgments. Every function mentioned has a snake case alias.

## DidTapNote / DidHoldNote

These two functions allow for forcing a noteflash on the columns.

Both functions take three parameters: Column (First column is 1), a TapNoteScore/HoldNoteScore and whether to use the "bright" variant. ("Bright" is what's normally used when the current combo is over a certain threshold.)

---

## SetPressed

Makes the [NoteField](../) act like the given column is pressed.

The function takes a column (First column is 1).

---

## Step

Makes the [NoteField](../) act like a step happened on a given column.

The function takes a column (First column is 1), and a TapNoteScore enum.

---

## Callbacks

A [NoteField](../) can have functions attatched to various actions.

The given callback function are allowed to return its' own values, which the [NoteField](../) will respect instead.

Pass `nil` into a set function to clear the callback function.

- SetDidTapNoteCallback / SetDidHoldNoteCallback
	- Runs when a tap note is hit or a hold note is judged.
	- The function is passed the column, score enum and the bright boolean.

- SetSetPressedCallback
	- Runs when a press happens.
	- The function is passed the column.

- SetStepCallback
	- Runs when a step happens.
	- The function is passed the column and a TapNoteScore enum.
