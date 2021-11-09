---
title: Hidden Regions & NoteType Multipliers
weight: 1
---

Hidden Regions & NoteType Mult are two sets of functions that allow for manipulating notes.

## Hidden Regions

Hidden Regions specify parts of the chart to not draw. If a hold head is in the segment, the entire hold will not draw.

Can be cleared with `clear_hidden_regions` or `ClearHiddenRegions` and also takes an optional parameter for column.

### Input format
The input is a table of tables. Each inner table follows the same format. At least one inner table is required.
Note that `col` is optional and 1-indexed, and affects all columns if not provided.
```
{
	{start_beat, end_beat, [col]},
	{start_beat, end_beat, [col]},
	...
}
```

### Example
```lua
local P1 = SCREENMAN:GetTopScreen():GetChild('PlayerP1')
local P2 = SCREENMAN:GetTopScreen():GetChild('PlayerP2')
if P1 then
	P1:GetChild('NoteField'):add_hidden_regions{
		{12, 24},
		{32, 64, 1}, -- Hide the notes in the 1st and 3rd column
		{32, 64, 3},
	}
end
if P2 then
	P2:GetChild('NoteField'):AddHiddenRegions{ -- Also has CamelCase function name
		{0, 12},
		{24, 32},
		{32, 64, 2},
		{32, 64, 4},
	}
end
```

---

## NoteType Multipliers

NoteType Multipliers allow one to affect the note quantization throughout a chart.

Can be cleared with `clear_note_type_mults` or `ClearNoteTypeMults`.

### Input format

Like Hidden Regions, this also uses a table of tables as its' input. At least one table with an entry for beat 0 is required for the first call to `add_note_type_mults`/`AddNoteTypeMults`. This affects all columns in the NoteField. Negative beats are not allowed for input.
```
{
	{start_beat, multiplier},
	{start_beat, multiplier},
	...
}
```

### Example
```lua
local P1 = SCREENMAN:GetTopScreen():GetChild('PlayerP1')
if P1 then
	P1:GetChild('NoteField'):add_note_type_mults{
		{0, 0.5}, -- beat 0 to 33 will look like a chart at half the BPM
		{33, 0}, -- beat 33 to 64.5 will look like they're all at beat 16.5
		{64.5, 1}, -- Everything onwards will now flow normally as if they're from beat 16.5 onwards.
	}
end
```
