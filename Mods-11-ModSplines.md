# ModSplines
ModSplines is a system that allows for arbitrary note pathing through modifiers. This system is based off the spline system used in NotITG, which means it is usable alongside the pre-existing SM5 spline system and other modifiers, too.

Points are positioned like they are for Gradient modifiers, meaning in multiples of ARROW_SIZE away from the receptor.

In SM5, this is only accessible through the PlayerOptions functions, while NotITG has functions available in Player and also has modstring versions available (Though, it's recommended to use the lua functions instead.)

Point and column numbering start at 1 in SM5, while it starts at 0 in NotITG.

To stop the current chain of spline points, a 'null point' (Where both position and magnitude are at zero) can be used as a 'null terminator' or sorts. This is only applicable for points after the first.

The following types are avaiable for modsplines (designated as `<axis>`):
- X (Positioning on the x axis, affects receptors & notes. Works in multiples of ARROW_SIZE)
- Y (Positioning on the y axis, affects receptors & notes. Works in multiples of ARROW_SIZE. The quirks of SpiralY apply here if holds or rolls are involved.)
- Z (Positioning on the z axis, affects receptors & notes. Works in multiples of ARROW_SIZE)
- RotX (Rotation on the x axis, affects notes only. Works in radians. Known as "RotationX" in NotITG, but uses RotX for functions. Also affects hold heads in SM5 without extra mods needed.)
- RotY (Rotation on the y axis, affects notes only. Works in radians. Known as "RotationY" in NotITG, but uses RotY for functions. Also affects hold heads in SM5 without extra mods needed.)
- RotZ (Rotation on the z axis, affects notes only. Works in radians. Known as "RotationZ" in NotITG, but uses RotZ for functions. Also affects hold heads in SM5 without extra mods needed.)
- Zoom (Zoom all three axis with the Mini calculations, affects receptors & notes. Known as "Size", "Tiny" (Modstring only) or "Zoom" (Modstring only) in NotITG)
- SkewX (Aribtrary amounts of skewx, affects receptors & notes. Works like NoteSkewX. Known as "Skew" in NotITG)
- SkewY (Arbitrary amounts of skewy, affects receptors & notes. Works like NoteSkewY. Not available in NotITG v4.0)
- Stealth (Arbitrary amounts of stealth.)

The limit is 40 points per axis per column.

## ModSplineEnable
Desc: This function turns on/off splines for the designated axis, allowing for saving performance when modsplines are not needed. In NotITG, this does not exist, as modsplines are always 'on'.

Quirks: This does not clear the modsplines themselves.

PlayerOptions format: ModSpline('ModSplineAxis_\<axis\>', \<enable\>)

## ModSpline
Desc: This function sets the spline point to have a given position and magnitude.

Quirks: The position is not tweenable. Giving only three first three parameters returns the current value, position and rate for the point. Using this will not enable modsplines for the given axis. NotITG expects magnitudes and positions in multiples of 100, similar to what a modstring would parse.

PlayerOptions format: ModSpline('ModSplineAxis_\<axis\>', \<column\> (nil sets all columns), \<point\>, \<magnitude\>, \<position\>, \<approach rate\>)

NotITG Player format: Set\<axis\>Spline(\<point\>, \<column\> (-1 sets all columns), \<magnitude\>, \<position\>, \<approach rate\>)

NotITG modstring format: spline\<column\>\<axis\>\<point\> for magnitude (omitting column hits all columns) & spline\<column\>\<axis\>offset\<point\> for position (omitting column hits all columns).

## ModSplineTypeSetting
Desc: This function sets what interpolation type the modsplines for a given axis will use.

The following types are available (denoted as `<type>`):
- 'SplineType_Linear' (Linear interpolation, the default in both SM5 and NotITG)
- 'SplineType_Cosine' (Cosine interpolation, magnitude must be between 0 and 100% in NotITG)
- 'SplineType_Cubic' (Cubic bezier interpolation, magnitude must be over 100% in NotITG)

Quirks: NotITG only has this available through modstrings, and affects all columns in both SM5 and NotITG.

PlayerOptions format: ModSplineTypeSetting('ModSplineAxis_\<axis\>', \<type\>)
NotITG modstring format: *\<approach rate\> \<magnitude\> spline\<axis\>type

## ModSplineReset
Desc: This function resets all spline points for the given axis on all columns. NotITG allows for column-specific clearing through modstring, but not their functions.

Quirks: Unlike a normal reset, this instantly resets the splines to zero by setting the approach rate to 100000.

PlayerOptions format: ModSplineReset('ModSplineAxis_\<axis\>')

NotITG Player format: Reset\<axis\>Splines()

NotITG modstring format: spline\<column\>\<axis\>reset (omitting column hits all columns)

## PreserveModSplines
Desc: When turned on, modsplines will no longer be cleared whenever "clearall" is passed into the modstring parser. Useful when working with ModSplines in modfile templates that use clearall.

Quirks: N/A

PlayerOptions format: PreserveModSplines(\<enable\>)

NotITG Player format: NoClearSplines(\<enable\>)

# Example:

SM5:
```lua
--{point position, x magnitude (linear), z magnitude (cosine), rotz magnitude (cubic)}
local splinetable = {
	{0.0, {0,0,0,0}, {0,0,0,0}, {0,0,0,0}},--point 1 (placed at receptor)
	{1.5, {-1,  1, -1,  1}, {-1,  1, -1,  1}, {-math.pi/2, -math.pi/4,  math.pi/4,  math.pi/2}},--point 2
	{3.0, { 2,  2, -2, -2}, { 3,  3, -3, -3}, { math.pi/2,  math.pi/4, -math.pi/4, -math.pi/2}},--point 3
	{4.5, {-3, -3,  3,  3}, {-3, -3,  3,  3}, {  -math.pi, -math.pi/2,  math.pi/2,    math.pi}},--point 4
	{6.0, { 4, -4,  4, -4}, { 1, -1,  1, -1}, {   math.pi,  math.pi/2, -math.pi/2,   -math.pi}},--point 5
}
for pn=1,2 do
	local a = po[pn]
	a:ModSplineEnable('ModSplineAxis_X', true, true)-- Enable the needed spline axis.
	:ModSplineEnable('ModSplineAxis_Z', true, true)
	:ModSplineEnable('ModSplineAxis_RotZ', true, true)
	:ModSplineTypeSetting('ModSplineAxis_Z', 'ModSplineType_Cosine', true)-- Set the desired interpolation types.
	:ModSplineTypeSetting('ModSplineAxis_RotZ', 'ModSplineType_Cubic', true)
	for i,v in ipairs(splinetable) do
		--v is the entry for a point.
		for col=1,4 do
			--Comment out the lines below as desired to see the splines on their own.
			--Note that all three at once may be too messy...
			--a:ModSpline('ModSplineAxis_X',    col, i, v[2][col], v[1], 10000)
			a:ModSpline('ModSplineAxis_Z',    col, i, v[3][col], v[1], 10000)
			a:ModSpline('ModSplineAxis_RotZ', col, i, v[4][col], v[1], 10000)
		end
	end
end
```

NotITG:
```lua
--{point position, x magnitude (linear), z magnitude (cosine), rotz magnitude (cubic)}
local splinetable = {
	{0.0, {0,0,0,0}, {0,0,0,0}, {0,0,0,0}},--point 1 (placed at receptor)
	{1.5, {-1,  1, -1,  1}, {-1,  1, -1,  1}, {-math.pi/2, -math.pi/4,  math.pi/4,  math.pi/2}},--point 2
	{3.0, { 2,  2, -2, -2}, { 3,  3, -3, -3}, { math.pi/2,  math.pi/4, -math.pi/4, -math.pi/2}},--point 3
	{4.5, {-3, -3,  3,  3}, {-3, -3,  3,  3}, {  -math.pi, -math.pi/2,  math.pi/2,    math.pi}},--point 4
	{6.0, { 4, -4,  4, -4}, { 1, -1,  1, -1}, {   math.pi,  math.pi/2, -math.pi/2,   -math.pi}},--point 5
}
for pn=1,2 do
	local a = SCREENMAN:GetTopScreen():GetChild('PlayerP'..pn)
	GAMESTATE:ApplyModifiers('*-1 100 splineztype, *-1 200 splinerotationztype', pn)
	if a then
		for i,v in ipairs(splinetable) do
			--v is the entry for a point.
			for col=1,4 do
				--Comment out the lines below as desired to see the splines on their own.
				--Note that all three at once may be too messy...
				--a:SetXSpline(i-1, col-1, v[2][col]*100, v[1]*100, -1)
				a:SetZSpline(i-1, col-1, v[3][col]*100, v[1]*100, -1)
				a:SetRotZSpline(i-1, col-1, v[4][col]*100, v[1]*100, -1)
			end
		end
	end
end
```

Video Example (Shows only the z and rotz splines): https://github.com/TeamRizu/OutFoxDocumentation/blob/master/vid/modspline.webm
