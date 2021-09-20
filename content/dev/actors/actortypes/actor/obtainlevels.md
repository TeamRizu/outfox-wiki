---
title: Obtaining Childs and ActorFrame Levels
weight: 1
---

When using Actors, you can use `self:GetParent()` and `self:GetChild()` to get elements from other ActorFrames or actors.
{{< hint warning >}}
`self:GetChild()` can only be used by ActorFrames.
{{< /hint >}}

You can think of an ActorFrame as a tree of objects.
This is the original table. And now you've called GetParent on the ActorProxy.
{{< columns >}}
```lua
Def.ActorFrame{
	Def.BitmapText{ Name="MyText" },
	* Def.ActorProxy{
		OnCommand=function(self)
			self:GetParent()
		end
	},
}
```
<--->
{{< mermaid class="text-center">}}
graph LR
    AF[Def.ActorFrame] --- BT(Def.BitmapText) & AP(Def.ActorProxy)
	style AF stroke-width:4px
	style BT stroke-width:4px
	style AP fill:#585,color:#fff,stroke-width:4px
{{< /mermaid >}}
{{< /columns >}}
{{< columns >}}
<div class="text-center">
When calling it, you go back up a level, which in this case,
it will become ActorFrame.
</div>
<--->
{{< mermaid class="text-center">}}
graph LR
    AF(Def.ActorFrame) --- BT(Def.BitmapText) & AP(Def.ActorProxy);
	style AF fill:#585,color:#fff,stroke-width:4px
	style BT stroke-width:4px
	style AP stroke-width:4px
{{< /mermaid >}}
{{< /columns >}}

In this new location, we get the MyText actor, which can be achieved by calling the GetChild command, and can also return back to the ActorProxy, as we're now in a level that can get both actors _(shown in orange)_.
{{< columns >}}
```lua
Def.ActorFrame{
	* Def.BitmapText{ Name="MyText" },
	Def.ActorProxy{
		OnCommand=function(self)
			self:GetParent():GetChild("MyText"):spin()
		end
	},
}
```
<--->
{{< mermaid class="text-center">}}
graph LR
    AF(Def.ActorFrame ) --> BT(Def.BitmapText) & AP(Def.ActorProxy);
	style AF fill:#f85,color:#fff,stroke-width:4px
	style BT fill:#585,color:#fff,stroke-width:4px
	style AP fill:#585,color:#fff,stroke-width:4px
{{< /mermaid >}}
{{< /columns >}}
The command uses a String argument, but can also grab from nested tables in case of an ActorFrame not having
actors with names assigned. On those cases, actors are just indexed on that ActorFrame set.

{{<columns>}}
### Example Without Names
```lua
Def.ActorFrame{
	OnCommand=function(self)
		-- If we want to get to the BitmapText, we'll need to get
		-- the second entry on the ActorFrame.
		self:GetChild("")[2] -- returns the BitmapText actor.
	end,
	Def.Sprite{},
	Def.BitmapText{}
}
```
<--->
### Example With Names
```lua
Def.ActorFrame{
	OnCommand=function(self)
		-- If we want to get to the BitmapText,
		-- we'll need to get the "Text" actor.
		self:GetChild("Text") -- returns the BitmapText actor.
	end,
	Def.Sprite{ Name = "Image" },
	Def.BitmapText{ Name = "Text" }
}
```
{{</columns>}}