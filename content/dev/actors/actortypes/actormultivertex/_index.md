---
title: ActorMultiVertex
weight: 0
geekdocCollapseSection: true
---

Allows for arbitrary polygons to be created. Every vertex has a position on the xyz plane, a color formatted like diffuse values, and a uv coordinate for textures. In NotITG, this is known as "Polygon", and the functions available are different, even though it achieves the same thing.

```lua
return Def.ActorMultiVertex{
	OnCommand=function(self)
		-- First, setup the kind of DrawMode is going to be performed. There are several kinds available.
		-- In this example, we'll use Lines, to use a two point example.
		self:SetDrawState{ Mode="DrawMode_Lines" }

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
-- Let's say this is your original vertex data, using DrawMode_Lines.
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