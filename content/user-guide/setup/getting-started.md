---
title: Getting started
description: First-time setup tasks for Project OutFox.
weight: 2
---

To obtain the best experience, there are a few things you should do after installing Project OutFox. Some of these instructions assume usage of the included default theme (Soundwaves).

## Selecting a game type

When launching Project OutFox for the first time or without save data present, you will be prompted to select which **game type** you would like to begin with. Project OutFox supports a variety of game types, which you can learn about [here](/user-guide/config/game-types/), which simulate different types of rhythm games (including button layouts and, where applicable, gameplay behaviours specific to the game type). Game types are further divided into **styles**, which include chart types such as single, double, etc.

![Screenshot of the Project OutFox game selection screen.](/getting-started/select-game-type.png)

{{< hint info>}}
**Tip:** You can switch between game types at any time using the "Select Game" button on the main menu.
{{< /hint >}}

## Configuring your controls

Each game type has its own default keyboard configuration; dance, for example, maps the first player to the arrow keys (when playing on keyboard, this is often referred to as the "index" playstyle). To configure your button mappings, go to **Options > Input & Calibration > Config Key/Joy Mappings**. 

![Navigating to the Config Key/Joy Mappings screen.](/getting-started/gotoconfigjoy.jpg)

Use the arrow keys to select an item to map, press Enter, and then press the button on the keyboard or controller you want to use. You can have multiple button assignments for each command.

![The Config Key/Joy Mappings screen.](/getting-started/config-joy.png)

Project OutFox supports a wide variety of controllers and even arcade hardware. By default, the game operates with a HIDAPI and XInput-compliant input engine. If your controller does not perform as well or function as expected, you can switch to the alternate XInput input mode from the **Experimental Options** menu. XInput will sometimes also require you to map your controller to the input engine's virtual gamepad, allowing the game to properly interface with the device. The **Map Controller** screen is available from the **Input & Calibration** menu.

![The Exerimental Options screen. Input mode selector is highlighted.](/getting-started/enable-hidapi.jpg)

## Calibrate your audio sync

!> **Notice:** Interactive calibration only works under the ``dance`` game type. If you are using a differtent game type, temporarily switch to ``dance``, and switch back when you are done.

In a rhythm game, timing is everything. But latency produced by your audio outputs can affect your accuracy. You can interactively adjust the audio **offset** using the **Calibrate Audio Sync** option in the **Input & Calibration** menu.

![Navigating to the Calibration screen.](/getting-started/calibrate-sync.jpg)

A song will play with a pattern of alternating notes; in the dance game type, they will be left and right arrows. Tap them to the rhythm **based on what you hear**. Every 24 notes, your inputs will be used to calculate a new offset; watch for "Perfect" and "Flawless" judgements.

![Audio calibration screen.](/getting-started/sync-screen.jpg)

The song will continue playing on a loop until you exit with the ``Back`` button (mapped to Escape by default), after which you will be given an opportunity to save the changes. If you wish to calibrate in-game with your song of choice, you can press ``F6`` twice during gameplay to enable **AutoSync Machine**, which will last until the end of the song or when exited with the ``Back`` button. A message will appear asking to confirm your changes and if you wish to apply them or not.

## Create a profile

While Project OutFox can save some data to a global "machine profile", it is recommended that you create a local profile so you can save personal high scores, as well as player settings (such as modifiers) that can persist between sessions.

You can manage profiles from **Options > Profiles**. From here you can create a profile, and edit existing profiles.

From the profile editor (highlight a profile and press Start, and then select "Edit profile"), you can input fitness-related information, change the layout of the optional "Detailed Stats" pane during gameplay, and add an avatar to your profile (avatars are loaded from the Appearance/Avatars directory).

![Navigating to the Profiles screen and selecting to create a profile.](/getting-started/create-profile.jpg)

## Install songs

While Project OutFox does include a few sample songs, you will probably want to add more. We support a number of formats, including SM, SSC, SMA, DWI, BMS, and KSF. 

The Songs [folder](/user-guide/config/folders/) in Project OutFox is divided into **Groups**  (also sometimes known as "packs"). Groups, in turn, contain folders for each song.

```
Songs
│
└───My Group
│   │   
│   └───My Song
│       │   mysong.ssc
│       │   mysong.ogg
│       │   mysong-bg.png
│       │   mysong-bn.png
│       │   mysong-jk.png
```

Packs are typically distributed as ZIP files. Extract the archive with your preferred software, and copy the group folder containing the song directories to the Songs folder like so.

![Pack appearing on song selection menu.](/getting-started/songsonwheel.jpg)

{{< hint info>}}
**Note:** If the songs do not appear, be sure to check if the group folder actually containing the song folders is too deep in the folder hierarchy.
{{< /hint >}}

{{< hint info>}}
 **Note:** If a song is not contained inside a group folder, but instead on the root Songs directory, the game will stop loading to let you know of the Song folder in question.
{{< /hint >}}

# Next steps

The only thing left to do is have fun! If you need more help with Project OutFox, check out the other pages in our wiki documentation, and join other members of our community on our [Discord server](https://discord.gg/cN4TjgQdcA) or [forum](https://discourse.projectmoon.dance/).

Thank you for supporting Project OutFox!
