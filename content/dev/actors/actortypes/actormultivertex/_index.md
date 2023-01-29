---
title: ActorMultiVertex
weight: 0
geekdocCollapseSection: true
---

{{<toc>}}

Allows for arbitrary polygons to be created. Every vertex has a position on the xyz plane, a color formatted like diffuse values, and a uv coordinate for textures. In NotITG, this is known as "Polygon", and the functions available are different, even though it achieves the same thing.

```lua
return Def.ActorMultiVertex{
	OnCommand=function(self)
		-- First, setup the kind of DrawMode is going to be performed. There are several kinds available.
		-- In this example, we'll use Lines, to use a two point example.
		self:SetDrawState{ Mode="Lines" }

		-- Time to generate the vertices that will become the vertex map.
		local vertices = {
			-- Data is inserted as the following:
			-- { { x, y, z }, Color, { TextureOffsetX, TextureOffsetY } }
			-- First table is the position of the vertex relative to the position of the ActorMultiVertex.
			-- Second table is the color that vertex will contain.
			-- Third table is optional for when you have a texture loaded into the AMV, and mapping is needed for the texture.
			-- Value goes from 0 to 1.

			-- Since no textures will be used in this example, the third table can be ignored.
			{ {0, 0, 0}, Color.White },
			{ {15, 15, 0}, Color.Green }
		}

		-- Now with the vertices assigned, now it's time to send them back to the AMV for it to generate them.
		self:SetVertices( vertices )
	end
}
```

Vertices from the ActorMultiVertex can also be tweened to create animations. This must be done by modifying an existing vertice already assigned on the table,
otherwise, it won't be recognized and will just snap into the new position assigned.

```lua
-- Let's say this is your original vertex data, using Lines.
-- This creates a line going from the topleft to bottom right by 15 pixels.
local verts = {
	{ {0, 0, 0}, Color.White },
	{ {15, 15, 0}, Color.Green }
}

-- Generate the verts so they can be rendered on screen.
self:SetVertices(verts)

-- Now let's begin a transition using linear for 2 seconds.
self:linear(2)

-- Let's modify the ending vertice so its Y position becomes the same as the starting vertex.
-- There are two ways to modify vertex data here:
-- METHOD 1: SetVertex.
-- Simply call the SetVertex command that is available for ActorMultiVertex, and assign its new values.
-- int index, table { table pos, table color, table textcoords }
self:SetVertex( 2, { {15, 15, 0} } )

-- METHOD 2: Modifying the table itself.
-- (This is recommended if you're planning to modify a lot of points at the same time, or just need to modify a specific data type rather than the entire entry data)
verts[2][1][2] = 0
--[[
Let's analyze what's going on here:

verts[2]			Go to the second entry on the verts table
		[1]			Go to the first table of that entry, which contains the position of the vertex.
			[2]		Go to the second value on that table, which is the Y position.

]]
-- With this value now modified, generate the new set of vertices.
self:SetVertices(verts)
```

## Setting a Draw State

The `SetDrawState` function requires a table with parameters to determine the current state of the polygon being drawn. The following is the list of parameters. All of them are optional, but some of them are needed when initializing to draw a polygon on screen.

```lua
-- Notice the curly braces here. That's because this function expects a table, rather than typical variables.
self:SetDrawState{
	Mode="DrawMode_Quad",
	First=0,
	Num=-1
}

-- It can also be inserted this way.
self:SetDrawState({
	Mode="DrawMode_Quad",
	First=0,
	Num=-1
})
```

{{<hint info>}}
For more information about how Lua handles functions, check out the [Functions](https://www.lua.org/pil/5.html) page.
{{</hint>}}

| Name | Description |
| :--: | ----------- |
| Mode | Fetches the draw mode if provided, check [List of DrawModes](#list-of-drawmodes) for a list of draw modes.
| First | Which point will be the first to draw?
| Num | How many polygons after `First` will be drawn? If set to -1 (default), it will be the rest of available polygons set.

{{<hint warning>}}
The `First` argument is 1-indexed, while the `Num` argument is not.
{{</hint>}}

## List of DrawModes

With an ActorMultiVertex, there are multiple kinds of Draw Modes that can be used to draw polygons on the screen. The following is a list of the modes currently available on OutFox (as of Alpha 4.18.1):
These are assigned using the `SetDrawMode` command or via `SetDrawState`.

For written examples, please check [Usage Examples](#usage-examples).

| Name | Description | Image |
| :---: | :---: | :------ |
| Quads | Draws a 4 point polygonal shape that is separated from any adjacent or subsequent point. | ![](/actors/actormultivertex/drawmodes/DrawMode_Quad.svg) |
| QuadStrip | Draws a 4 point polygonal shape that connects to the next adjacent point at the end. | ![](/actors/actormultivertex/drawmodes/DrawMode_QuadStrip.svg) |
| Fan | Constructs an 8 polygonal shape that can be used to resemble a fan. | ![](/actors/actormultivertex/drawmodes/DrawMode_Fan.svg) |
| Strip | Suspiciously similar to DrawMode_QuadStrip. | ![](/actors/actormultivertex/drawmodes/DrawMode_QuadStrip.svg) |
| Triangles | Draws a 3 point polygonal shape that is separated from any adjacent or subsequent point. | ![](/actors/actormultivertex/drawmodes/DrawMode_Triangle.svg) |
| LineStrip | Draws a continous line based on the points given to the Polygon. Width of the line is scaled by the theme's internal height, plus the manual value assigned. | ![](/actors/actormultivertex/drawmodes/DrawMode_LineStrip.svg) |
| SymmetricQuadStrip | todo | todo |

The following are introduced for OutFox.

| Name | Description | Image |
| :---: | :---: | :------ |
| LineStripM | Modern implementation of LineStrip. Outputs the work to the GPU to perform operations. Line width limits here are defined by the GPU. | ![](/actors/actormultivertex/drawmodes/DrawMode_LineStrip.svg) |
| PolyLineStrip | todo | todo |
| Points | 1 vertex shapes, which are rendered by the GPU. Size can be defined using `SetPointSize`, and depends on the GPU. | ![](/actors/actormultivertex/drawmodes/DrawMode_Points.svg) |
| Lines | A 2 point line that is separated on each group. | ![](/actors/actormultivertex/drawmodes/DrawMode_Line.svg) |

## Usage Examples

The examples here provide how to insert points for the polygon related to each Draw Mode.

### DrawMode_Quad

```lua
{
	{{0, 0, 0}, Color.Red},
	{{0, 20, 0}, Color.Blue},
	{{20, 20, 0}, Color.Green},
	{{20, 0, 0}, Color.Yellow},
	--
	{{40, 0, 0}, Color.Orange},
	{{40, 20, 0}, Color.Purple},
	{{60, 20, 0}, Color.Black},
	{{60, 0, 0}, Color.White},
}
```

### DrawMode_QuadStrip / DrawMode_Strip

```lua
{
	{{0, 0, 0}, Color.Red},
	{{0, 20, 0}, Color.Blue},
	{{20, 0, 0}, Color.Green},
	{{20, 20, 0}, Color.Yellow},
	--
	{{40, 0, 0}, Color.Orange},
	{{40, 20, 0}, Color.Purple},
	{{60, 0, 0}, Color.Black},
	{{60, 20, 0}, Color.White},
}
```

{{<hint warning>}}
{{<expand "Take a moment to notice that Quad and QuadStrip, while similar in nature, have a different order.">}}
The graphics being [DrawMode_Quad](#drawmode_quad) and [DrawMode_QuadStrip](#drawmode_quadstrip) respectively.
{{<columns>}}
![DrawMode_Quad](/actors/actormultivertex/drawmodes/DrawMode_Quad.svg)
<--->
![DrawMode_QuadStrip](/actors/actormultivertex/drawmodes/DrawMode_QuadStrip.svg)
{{</columns>}}
{{</expand>}}
{{</hint>}}

### DrawMode_Fan

```lua
{
	{{0, 0, 0}, Color.Red},
	{{0, -20, 0}, Color.Blue},
	{{20, -20, 0}, Color.Green},
	{{20, 0, 0}, Color.Yellow},
	{{20, 20, 0}, Color.Orange},
	{{0, 20, 0}, Color.Purple},
	{{-20, 20, 0}, Color.Black},
	{{-20, 0, 0}, Color.White},
}
```

### DrawMode_Triangles

```lua
{
	{{0, 0, 0}, Color.Red},
	{{10, -20, 0}, Color.Blue},
	{{20, 0, 0}, Color.Green},
	--
	{{30, 0, 0}, Color.Yellow},
	{{40, -20, 0}, Color.Orange},
	{{50, 0, 0}, Color.Purple},
	--
	{{60, 20, 0}, Color.Black},
	{{70, 0, 0}, Color.White},
	{{80, 20, 0}, Color.Orange},
}
```

### DrawMode_LineStrip / DrawMode_LineStripM / DrawMode_Points

{{<hint warning>}}
{{<expand "Take a moment to notice that LineStrip and Points, while similar in nature, have a different layout.">}}
The graphics being [DrawMode_LineStrip](#drawmode_linestrip) and [DrawMode_Points](#drawmode_points) respectively.
{{<columns>}}
![DrawMode_LineStrip](/actors/actormultivertex/drawmodes/DrawMode_LineStrip.svg)
<--->
![DrawMode_Points](/actors/actormultivertex/drawmodes/DrawMode_Points.svg)
{{</columns>}}
{{</expand>}}
{{</hint>}}

```lua
{
	{{-40, -40, 0}, Color.Red},
	--
	{{0, -40, 0}, Color.Blue},
	--
	{{40, -40, 0}, Color.Green},
	--
	{{40, 0, 0}, Color.Yellow},
	--
	{{40, 40, 0}, Color.Orange},
	--
	{{0, 40, 0}, Color.Purple},
	--
	{{-40, 40, 0}, Color.Black},
	--
	{{-40, 0, 0}, Color.White},
}
```

### DrawMode_Lines

```lua
{
	{{0, 0, 0}, Color.Red},
	{{10, 0, 0}, Color.Blue},
	--
	{{20, 0, 0}, Color.Green},
	{{30, 0, 0}, Color.Yellow},
	--
	{{40, 0, 0}, Color.Orange},
	{{50, 0, 0}, Color.Purple},
	--
	{{60, 0, 0}, Color.Blue},
	{{70, 0, 0}, Color.White},
	--
	{{80, 0, 0}, Color.Orange},
	{{90, 0, 0}, Color.Orange},
}
```