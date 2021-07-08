---
title: "Color modifiers"
weight: 1
---
Color modifiers affect the color of notes in some way. A lot of these follow similar behaviors to the Visibility modifiers, alongside with some extra functionalities.

`<color>` can be `'ColorType_Red'`, `'ColorType_Blue'` or `'ColorType_Green'`, and is how one chooses the color channel to affect.

These modifiers generally share usable values between 0 to 100%.

## StealthColor
Desc: Bring a color channel of the notes down to zero (This does not affect the actual glow color). Unlike normal Stealth, this doesn't have column-specific variants.

Quirks: N/A

Available variants (modstring): stealthred, stealthr (NotITG alias), stealthblue, stealthb (NotITG alias), stealthgreen, stealthg (NotITG alias), diffuse|\<r\>|\<g\>|\<b\> (NotITG alias)

PlayerOptions format: StealthColor(\<color\>, \<magnitude\>, \<approach rate\>)

Example: `StealthColor('ColorType_Red',1,1)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*1 100% stealthred`

<video src="/mods/vid/stealthcolor.webm" controls="">StealthColor video example</video>

## SuddenColor
Desc: The color channel starts turned off, and turns on at the middle of the field.

Quirks: N/A

Available variants (modstring): suddenred, suddenr (NotITG alias), suddenblue, suddenb (NotITG name), suddengreen, suddeng (NotITG alias)

PlayerOptions format: SuddenColor(\<color\>, \<magnitude\>, \<approach rate\>)

Example: `SuddenColor('ColorType_Green',1,1)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*1 100% suddengreen`

<video src="/mods/vid/suddencolor.webm" controls="">SuddenColor video example</video>

### Available sub modifiers:
## SuddenOffsetColor
Desc: Offsets the point where the color channel turns on.

Available variants (modstring): suddenoffsetred, suddenredoffset (NotITG name), suddenro (NotITG alias), suddenoffsetblue, suddenblueoffset (NotITG name), suddenbo (NotITG alias), suddenoffsetgreen, suddengreenoffset (NotITG name), suddengo (NotITG alias)


PlayerOptions format: SuddenOffsetColor(\<color\>, \<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>


## HiddenColor
Desc: The color channel starts turned on, and turns off at the middle of the field.

Quirks: N/A

Available variants (modstring): hiddenred, hiddenr (NotITG alias), hiddenblue, hiddenb (NotITG name), hiddengreen, hiddeng (NotITG alias)

PlayerOptions format: HiddenColor(\<color\>, \<magnitude\>, \<approach rate\>)
Example: `HiddenColor('ColorType_Blue',1,1)`
Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>
Example: `*1 100% hiddenblue`

<video src="/mods/vid/hiddencolor.webm" controls="">HiddenColor video example</video>

### Available sub modifiers:
## HiddenOffsetColor
Desc: Offsets the point where the color channel turns on.

Available variants (modstring): hiddenoffsetred, hiddenredoffset (NotITG name), hiddenro (NotITG alias), hiddenoffsetblue, hiddenblueoffset (NotITG name), hiddenbo (NotITG alias), hiddenoffsetgreen, hiddengreenoffset (NotITG name), hiddengo (NotITG alias)

PlayerOptions format: HiddenOffsetColor(\<color\>, \<magnitude\>, \<approach rate\>)

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>


## BlinkColor
Desc: The color channel blinks on and off. Still considered as bad of a mod as normal Blink.

Quirks: Same as Blink.

Available variants (modstring): blinkred, blinkr (NotITG alias), blinkblue, blinkb (NotITG alias), blinkgreen, blinkg (NotITG alias)

PlayerOptions format: BlinkColor(\<color\>, \<magnitude\>, \<approach rate\>)

Example: `BlinkColor('ColorType_Red',1, 1)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*1 100% blinkred`

<video src="/mods/vid/blinkcolor.webm" controls="">BlinkColor video example</video>

## StealthGlowColor
Desc: Allows one to modify the color used for the glow effect of the Visibility mods.

Quirks: Unlike most modifiers (including NotITG's implementation of this modifier), this starts at 100%, mimicking how glow's red, green, and blue values start at 1.

Available variants (modstring): stealthglowred, stealthgr (NotITG alias), stealthglowred\<column\>, stealthglowblue, stealthgb (NotITG alias), stealthglowblue\<column\>, stealthglowgreen, stealthgg (NotITG alias), stealthglowgreen\<column\>, stealthglow|\<r\>|\<g\>|\<b\> (NotITG alias), stealthglow\<column\>|\<r\>|\<g\>|\<b\> (NotITG alias)

PlayerOptions format: StealthGlowColor(\<color\>, \<magnitude\>, \<approach rate\>)

Example: `StealthGlowColor('ColorType_Red',0, 1, true):StealthGlowColor('ColorType_Green',0, 1, true):Stealth(0.25, 1)`

Column-specific format: StealthGlowColorCol(\<color\>, \<column\>, \<magnitude\>, \<approach rate\>)

Example: `StealthGlowColorCol('ColorType_Green',1,0,1,true):StealthGlowColorCol('ColorType_Blue',1,0,1,true):StealthGlowColorCol('ColorType_Red',2,0,1,true):StealthGlowColorCol('ColorType_Blue',2,0,1,true):StealthGlowColorCol('ColorType_Red',3,0,1,true):StealthGlowColorCol('ColorType_Green',3,0,1,true):StealthGlowColorCol('ColorType_Blue',4,0,1,true):Stealth(0.25)`

Modstring format: *\<approach rate\> \<magnitude\> \<modstring variant\>

Example: `*1 0% stealthglowred, *1 0% stealthglowgreen, *1 25% stealth` `*1 0% stealthglowgreen1, *1 0% stealthglowblue1, *1 0% stealthglowred2, *1 0% stealthglowblue2, *1 0% stealthglowred3, *1 0% stealthglowgreen3, *1 0% stealthglowblue4, 25% stealth`

<video src="/mods/vid/stealthglowcolor.webm" controls="">StealthGlowColor video example</video>

# Gradient Modifiers
Gradient modifiers allow for arbitrary color pathing, and are not compatible with the color modifiers.

Activating these will turn off the color modifiers above in terms of rendering.

In SM5, these are accessed through PlayerOptions like most modifiers (And have the same chaining mechanics as the other functions). In NotITG, this is accessed through the Player instead.

There are three types available (It'll be denoted as `<type>` in the function listing below):
- "Diffuse" (Affects the diffuse of the notes & holds), known as "Arrow" in NotITG.
- "NotePath" (Affects the color of the NotePath), known as "Path" in NotITG.
- "StealthGlow" (Affects the color used for Stealth and other Visibility modifiers), known as "Stealth" in NotITG. Will not visibly work on noteskin elements that are wrapped in ActorFrames.

## \<type\>NumGradientPoints
Desc: Sets how many points the gradient has for the column. Resets the path to all white at the start.
- 0 points means the gradient is turned off (color = white)
- 1 point means the whole path is given a single color
- 2 or more points allows for more arbitrary path coloring.

PlayerOptions format: \<type\>NumGradientPoints(\<column\>, \<point count\>)

NotITG format: SetNum\<type\>GradientPoints(\<column\>, \<point count\>)

## \<type\>GradientPoint
Desc: Set the position for a given point in the column's gradient. The magnitude given translates into multiples of ARROW_SIZE (commonly 64 pixels).

PlayerOptions format: \<type\>GradientPoint(\<column\>, \<point\>, \<position\>)

NotITG format: Set\<type\>GradientPoint(\<point\>, \<column\>, \<position\>)

## \<type\>GradientColor
Desc: Set the color for a given point in the column's gradient.

PlayerOptions format: \<type\>GradientColor(\<column\>, \<point\>, \<red\>, \<green\>, \<blue\>, \<alpha\>)

NotITG format: Set\<type\>GradientColor(\<point\>, \<column\>, \<red\>, \<green\>, \<blue\>, \<alpha\>)

Example code (SM5):
```lua
local color = {
	--      c1,        c2,        c3,        c4,        p2
	{{1,0,0,1}, {1,1,1,1}, {0,0,1,1}, {0,1,0,1}, {0,1,1,1}, {0,0,0,1}, {1,1,0,1}, {1,0,1,1}},--point1
	{{0,1,0,1}, {1,0,0,1}, {1,1,1,1}, {0,0,1,1}, {1,0,1,1}, {0,1,1,1}, {0,0,0,1}, {1,1,0,1}},--point2
	{{0,0,1,1}, {0,1,0,1}, {1,0,0,1}, {1,1,1,1}, {1,1,0,1}, {1,0,1,1}, {0,1,1,1}, {0,0,0,1}},--point3
	{{1,1,1,0}, {0,0,1,0}, {0,1,0,0}, {1,0,0,0}, {0,0,0,1}, {1,1,0,1}, {1,0,1,1}, {0,1,1,1}},--point4
}
for pn = 1,2 do -- Do this for both players
	local a = po[pn]
	if a then
		for col = 1,4 do-- Do this for four columns.
			a:StealthGlowNumGradientPoints(col,4) -- Each column will have 4 points.

			-- Each point is 1 ARROW_SIZE below the previous point.
			a:StealthGlowGradientPoint(col,1,1)
			a:StealthGlowGradientPoint(col,2,2)
			a:StealthGlowGradientPoint(col,3,3)
			a:StealthGlowGradientPoint(col,4,4)

			-- Each column will have their own color pattern, as defined in the color table.
			local pla = pn == 2 and col+4 or col
			a:StealthGlowGradientColor(col,1,color[1][pla][1],color[1][pla][2],color[1][pla][3],color[1][pla][4])
			a:StealthGlowGradientColor(col,2,color[2][pla][1],color[2][pla][2],color[2][pla][3],color[2][pla][4])
			a:StealthGlowGradientColor(col,3,color[3][pla][1],color[3][pla][2],color[3][pla][3],color[3][pla][4])
			a:StealthGlowGradientColor(col,4,color[4][pla][1],color[4][pla][2],color[4][pla][3],color[4][pla][4])
		end
		a:Stealth(0.25) -- 25% Stealth, use currently set approach rate (default = 1)
	end
end
```

Example code (NotITG):
```lua
local color = {
	--      c1,        c2,        c3,        c4,        p2
	{{1,0,0,1}, {1,1,1,1}, {0,0,1,1}, {0,1,0,1}, {0,1,1,1}, {0,0,0,1}, {1,1,0,1}, {1,0,1,1}},--point1
	{{0,1,0,1}, {1,0,0,1}, {1,1,1,1}, {0,0,1,1}, {1,0,1,1}, {0,1,1,1}, {0,0,0,1}, {1,1,0,1}},--point2
	{{0,0,1,1}, {0,1,0,1}, {1,0,0,1}, {1,1,1,1}, {1,1,0,1}, {1,0,1,1}, {0,1,1,1}, {0,0,0,1}},--point3
	{{1,1,1,0}, {0,0,1,0}, {0,1,0,0}, {1,0,0,0}, {0,0,0,1}, {1,1,0,1}, {1,0,1,1}, {0,1,1,1}},--point4
}
for pn = 1,2 do -- Do this for both players
	local a = SCREENMAN:GetTopScreen():GetChild('PlayerP'..pn)
	if a then
		for col = 0,3 do-- Do this for four columns.
			a:SetNumStealthGradientPoints(col,4) -- Each column will have 4 points.

			-- Each point is 1 ARROW_SIZE below the previous point.
			a:SetStealthGradientPoint(0,col,1)
			a:SetStealthGradientPoint(1,col,2)
			a:SetStealthGradientPoint(2,col,3)
			a:SetStealthGradientPoint(3,col,4)

			-- Each column will have their own color pattern, as defined in the color table.
			local pla = pn == 2 and col+5 or col+1
			a:SetStealthGradientColor(0,col,color[1][pla][1],color[1][pla][2],color[1][pla][3],color[1][pla][4])
			a:SetStealthGradientColor(1,col,color[2][pla][1],color[2][pla][2],color[2][pla][3],color[2][pla][4])
			a:SetStealthGradientColor(2,col,color[3][pla][1],color[3][pla][2],color[3][pla][3],color[3][pla][4])
			a:SetStealthGradientColor(3,col,color[4][pla][1],color[4][pla][2],color[4][pla][3],color[4][pla][4])
		end
		GAMESTATE:ApplyModifiers('25% Stealth',pn) -- 25% Stealth, use default approach rate (default = 1)
	end
end
```

Video Example (Shows colors set for Player 2):

<video src="/mods/vid/gradient.webm" controls="">Gradient video example</video>
