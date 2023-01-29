---
title: "Anatomy of a screen"
weight: 3
---

A screen generarly consists of 4 separate elements, and 3 special transitional elements, which are its layers. These can contain any kind of object, so they can be Lua scripts, images, video, you name it. These follow a draw order rule to display them.

From draw on top to last (Marked red are the transition-specific layers):
{{< mermaid class="text-center">}}
graph LR
    In:::Transition --> Out:::Transition --> Cancel:::Transition --> Decorations --> Overlay --> Underlay --> Background;
	classDef Transition fill:#f55
{{< /mermaid >}}

To create a file for a specific layer, just name the file as `[ScreenName] [layer kind]`, so for example a Lua file that will control the Overlay layer from `ScreenTitleMenu`.

```
ScreenTitleMenu overlay.lua
```

An important thing to mention with screen layers is: every layer ***MUST*** return a table. This is needed so the screen manager can create the screen, so either an empty table or an ActorFrame with any kind of content will do. For in-depth information on how to create an ActorFrame base, check [ActorFrames and how to build them](/dev/actors/actortypes/actorframe).

{{< hint type="important" >}}
Due to this draw order, keep in mind that **objects created on higher levels will always be shown first before the others.**
{{</hint>}}

This layering rule also has rules on how objects behave on those layers, with Decorations being the one more reserved for specific elements.

### Background Layer

The lowest drawn layer, being the first drawn. Can be used to elements that will contain visual glare for movement. A rule for this layer is its method for loading, which is cached. This means that any moment that changes are applied, they will not be shown until the user goes to a different screen that does not contain the same background file.

### Underlay / Overlay

The middle layers, where most objects will reside. This can be used for main elements that the user can interact with, or crucial information. No special rules are in these layers, so they can used for all general Lua scripting.

### Decorations

A specifically-visual layer, where objects can be placed for decorations. Most actions are limited on this layer:
- Lua based input is not available on this layer, as no input is ever sent.
- Transitional commands are not allowed. Instead, only the initial Init, On and Off commands are allowed.

### In / Out / Cancel

Pure visual layers that serve as entrace, exit and backing out of a screen respectively.
They are run as soon as the screen has to perform a change that will end up unloading itself.
- Lua based input is not available on this layer, as no input is ever sent.
- For **Cancel**, the transition command to run the animation uses `StartTransitioningCommand`. Using OnCommand or InitCommand will
make the animation run as soon as the screen is loaded.