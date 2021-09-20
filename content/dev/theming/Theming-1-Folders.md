---
title: "The Structure of folders"
weight: 1
---

A theme can consist of the following folders. All of them are optional, but needed to perform certain operations on how to load / fetch files.

It is important to understand that themes in newer versions of StepMania/OutFox rely on `_fallback`, a special theme folder located on `Appearance/Themes/` which contains all of the information neccessary to run any kind of theme. Earlier in the day, since there was no such thing, every theme distributed had to contain the same information in order to run, which in term would lead to a lot of repeated code for something that was never used.

You can create more/less folders than this and call them in your theme by fetching the location of your theme's folder
and then accessing the data that you need, but for the purposes of this guide, we'll stick to these folders.

{{<columns>}}
## BGAnimations
Contains the lua scripts that control the visual elements of screens.
<--->
## Fonts
Text and images containing individual glyphs, or graphical representations of each character on a font.
{{</columns>}}
{{<columns>}}
## Graphics
Contains images of gameplay objects.
<--->
## Language
Contains INI files that with the transliterated strings. For more information, visit [the Translation guide](../../translation).
{{</columns>}}
{{<columns>}}
## [Modules](../Theming-Modules)
An optional folder that contains Lua files with simple functions or tables that can be called on demand, rather than
storing the file on memory all the time.
<--->
## Other
An optional folder that contains special files, but also can contain other kinds of files that don't have a particular folder to reside in.
{{</columns>}}
{{<columns>}}
## [Scripts](../Theming-Scripts)
Lua files that will be loaded into memory, that can be accessed at any time.
{{</columns>}}