---
title: HelpDisplay
weight: 3
geekdocCollapseSection: true
---

The HelpDisplay is an actor which relies on [BitmapText](../bitmaptext) to draw text meant to guide the player in interacting with the interface with
helpful text that flips to segments in a given ammount of time.

By default it uses the `[HelpDisplay]` metrics group to get information about the [OnCommand](../../ActorsLua-CommandList/#commands), time to how the tip (`TipShowTime`) and how often it needs to switch the help block (`TipSwitchTime`).

```lua
Def.HelpDisplay {
	Font = "Common Normal", -- Alias of the default font
	OnCommand = function(self)
            local helpText = "I can provide helpful text::Like moving left and right to change songs!::Or pressing Esc to go back!"
            self:SetTipsColonSeparated( helpText )
	end
}
```

Please check the [BitmapText](../bitmaptext) page for the list of attributes.

{{<toc>}}

## Formatting Help Text (SetTipsColonSeparated)

Help text in HelpDisplay can be just regular text, but the actor allows for this text to be in "pages", which splits the text into multiple segments that will be shown in a determined ammount of time. These are separated using the `::` (two [Colon](https://en.wikipedia.org/wiki/Colon_(punctuation)) characters) sequence.

For example, if my HelpDisplay has a interval time of 5 seconds and a help text of `"I am::Help Text"`, the following will happen:

- `I am` will be shown flashing for the first five seconds.
- After 5 seconds, `Help Text` will be shown for the next five.
- Once those 5 seconds pases, it will return back to `I am` and the process restarts.

## Functions

### SetTipsColonSeparated
`( string text )`

Alias of [settips](#settips). Splits the text using the `::` flag. Check [Formatting Help Text for SetTipsColonSeparated](#formatting-help-text-settipscolonseparated) for info on how to format it.

### settips
`( table<string> text, table<string> textAlt )`

Using a table of strings, it formats the text to contain the help information.
```
-- Using the example from above, 'I am <split> Help Text`.
local myHelpText = {
    "I am",
    "Help Text"
}
self:settips(myHelpText)
```

`textAlt` is an optional table to have text in case there are missing glyphs on the current font. Check [Ensuring string compatiblity](../bitmaptext/Bitmap-EnsuringStringComp) for more information.

### gettips()
Returns two tables which contain the help text currently being displayed on the HelpDisplay.
```
local helpText, helpTextAit = self:gettips()
-- Now you can obtain the help text.
for data in ivalues(helpText) do
    Trace(data)
end
```

### SetSecsBetweenSwitches
`( float seconds )`

Tells the help display how long it has to wait before switching to the next help block.
