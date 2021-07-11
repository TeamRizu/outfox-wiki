---
title: FAQ
weight: 2
---

## Q: Where should I report Bugs, request features and post game crashes?

If you can, do those in our [Issue Tracker Repository](https://github.com/TeamRizu/OutFox), by creating an issue it'll give you those exact options that I mentioned in the question.

You can also use this [Discord Server](https://discord.gg/cN4TjgQdcA):

Use "feature-request" channel to request features or give ideas.
Use "bugs-crashlogs" channel to report bugs and game crashes.

You can also use [our forum](https://discourse.projectmoon.dance/)

## Q: How do I get logs?

Go into your game folder and check if there's a file called `portable.ini` (or just `portable` if your system doesn't display file extensions). If there's a `portable.ini` in your game folder then all you need to do is open the `Logs` folder and you'll find all logs, the most important one being `log.txt`. (Try to do this after closing the game)

If there's no `portable.ini` in your game folder, then you need to go into a specific path based on your OS:

- Windows: `appdata/roaming/stepmania 5.3`
- Mac: `~/Library/Logs/Stepmania 5.3/`
- Linux: `/home/user/.stepmania-5.3`

## Q: Why do I have to configure my pad while older versions of StepMania could work with no problem?

StepMania 5.3 uses XInput, it means controllers need to get mapped first and then never again. _It means every single controller should work with StepMania 5.3_

The game doesn't even try to automap things yet, there's a [tutorial step-by-step how to map](https://projectmoon.dance/help/controllers)

## Q: I'm new to this community and I don't understand many terms, could you explain what they mean?

Chart: How we call Songs that you can play in StepMania. (osu players call them Maps)
Mods: Modded charts that uses Lua to change how the game operates.
Pad Chart/Keyboard Chart: If the chart was design for people that play in pad or for keyboard.
Hold: A note that _you have to hold_ to not miss it.
Drill/Roll: A note that you have to keep hitting to not miss it.
NG: Missed Hold/(Drill or Roll)
Doublestep: When you have to use the same foot to hit 2 different notes. RUDRU for example (R = Right, U = Up, D = Down)
Ghosttap: When you hit a place where there's no step.
4th,8th,12th: Note types and colors, 4th: red arrow (hit after each beat), 8th: blue arrow (hit after each half beat), 12th: green arrow (hit after each 1/3 beat)..it goes on.
Playfield/Notefield/Receptors/PlayerBoards: The targets that notes are going to reach. In dance, the 4 notes that are always at the top. In pump, the 5 notes that are always at the top.
Lifts: Note that you have to stop holding the moment they reach the playfield.

## Q: Will 5.3 go open source?

_Yes_. Here's a quote from Squirrel if you want to know more:

> The project began as a method to add online and profiles to SM5, but when we looked into the engine to see how this could be appropriated it was discovered just how much in a sorry state the code base was, and it looked mostly abandoned. I spoke to Shakesoda in hopes of a resurrection in the form of a team project, and it was requested rather than breaking 10 years of content and community to take the time to make a proper 5.x build that is stable and supports what the community as a whole wants from the game. This backward compatibility support has been an absolute git to do, but it's something now we are down the line which we are proud of, as it has brought many players and newcomers to the community, and provided a very stable experience for folks during the lockdown. We will continue to maintain a near 100% compatibility where we can, and this is taken into consideration whenever we plan a new feature or change engine components.
> 
> We asked if it was ok to close the source while this process was done, and it was deemed wise for the health of the repo and the need of people who are just wanting to play. Its why we've been around the repo but not on it as taint can happen and we do not wish this. SSC did this same behaviour before us, so we did not see it as a problem. Some vocal members of the community disagreed, including some of the SMDev Team. We have also been compared to past SM repo contributors who may have left a less than savoury memory in the minds of some, and it has also been hard to differentiate from history we have no involvement with.

## Q: I have a really recent processor and my game is having a lot of problems, why is that?

Outfox reached a point of optimization that good processors are going to have some problems because some parts of the game are going too fast and need catch up. The current solution to this is to have something running in the background (Have a video playing, other programs) to keep the processor busy.

This is going to have a proper fix later.

## Q: Is online mode available yet? If not, is it coming?

Short answer: no it's not available, yes it's coming. Long answer: It'll take a while, the engine is still being optimized and the online system is still in development (being done by Cube). 

This doesn't mean Online isn't important for us, it's a lot, it was one of Team Rizu first plans but the engine just wasn't ready for their plans. 

Resume: As your read this, both the game engine and online mode are still in development.

## Q: How do I insert Noteskins/Themes/Avatars/Judgments/Toasties into StepMania?

In the game folder there's a folder called `Appearance`, where you'll find a folder for each of those mentioned features.

### For Avatars

Open `Avatars` folder and drop any png, jpg, gif into there with any name you want. Now in-game go into Options > Profiles > Select any already created profile (or create one) > edit > change avatar image, now you can select any image that is inside the Avatars folder.

### For Themes

Open `Themes` folder and drop here any theme that supports 5.x

### For Noteskins

Open `NoteSkins` folder, open the folder that represents what noteskin gamemode the noteskin is made for, drop the **NoteSkin Folder** there.

You can find more noteskins in https://projectmoon.dance/addons/noteskins

### For Judgments

Open `Judgments`, drop the judgment image there. **Do not change the name of the judgments you download**, they're important so the game knows what part of the image the game should get)

### For Toasties

Open `Toasties`, drop the game Toastie folter there. (The game can come with 2 toasties in the installer options)

## Q: Can we have that FAQ in the Project OutFox Website?

Yes you can: https://projectmoon.dance/faq

## Q: I have an ancient Intel Card and the game does nothing but crash!

If your log shows `WDDM1.0` or `WDDM1.1` at the end of the graphics card name:

```
00:00.505: Last seen video driver: Intel(R) 82945G Express Chipset Family (Microsoft Corporation - WDDM 1.0)
```

or the log shows `Microsoft GDI` as the Renderer

Then you are running the OpenGL crippled 'windows' driver that is downloaded on a fresh install. Stepmania 5.3 will not work on these drivers, as we do not support DirectX anymore (the old D3D renderer that 5.0.12/5.1 has)

There is a list of drivers at this site location that may help, but for some of these cards, you need to keep your windows 7 install disc handy!

https://www.intel.com/content/www/us/en/support/articles/000005733/graphics.html

**Update:**
If you accidentally updated your windows to beyond the support given to you by Intel, so you moved to windows 8.1/10 from 7 then there is still hope! you can take a chance with the Mesa OpenGL replacer for legacy software, which adds an API extension over Microsoft. You can find it here:
https://github.com/pal1000/mesa-dist-win/releases/latest

**HOW TO USE?**

Download Mesa3d for Windows: mesa3d-xxxx-release-msvc.exe

- Extract it (either with a double-click or right-click 7-zip)

- In the extraction folder of Mesa, go to x64, select and copy opengl32.dll

- In the extraction folder of stepmania, go to /program and paste opengl32.dll

- it may now use the proper dll

Also, See https://fdossena.com/?p=mesa/index.frag for a windows working solution.

And for a detailed guide for intel users:  (Some computer literacy needed)
https://gist.github.com/rb-dahlb/26f316c5b6089807a139fc44ee69f0d1

## Q: How can I know who works on OutFox and who to trust?

Everyone on this list is part of OutFox Team and works on OutFox: [see list](/user-guide/meta/about/#project-outfox-teams)

International Moderators/Translators/Alpha Testers/Tiny-Foxes indirectly helps OutFox development but they aren't part of the OutFox Team.

If you see anyone else saying they work on OutFox then do not trust and please report to us. You can always ask at our [Discord Server](https://discord.gg/cN4TjgQdcA)
