---
title: FAQ
weight: 2
---

## What is Project OutFox?

A project to modernize the StepMania 5.0.12/5.1 codebase to improve its performance and provide enhanced support for modern hardware and operating systems. We are also adding new features, including those being requested by our community, as well as refurbishing its support of non-dance/4-key game types, adding new game types, and so forth.

## Will it still work with my old songs/themes/etc..?

Project OutFox builds upon the existing StepMania 5.0.12/5.1 beta codebase, and maintaining backwards compatibility with older content is one of our main priorities. Content that worked on StepMania 5.0.12/5.1 (including songs, themes, and noteskins) should still work on OutFox. If you experience any issues/weirdness, please report it to us.

Side note for developers

Please note that we are deprecating the use of semicolon-separated ``cmd()`` blocks (i.e.  ``OnCommand=cmd(linear,1.5;diffusealpha,1);`` ) as a means of placing commands on actors in Lua scripts, as this method is a non-standard Lua function that was created for StepMania, and OutFox is not optimized with this coding style in mind (themes may experience performance penalties if they use this method). It is strongly recommended that function chaining (i.e. code such as ``OnCommand=function(self) self:linear(1.5):diffusealpha(1) end,`` ) be used instead.


## Can I install it alongside existing versions?

Yes. Our installer on Windows also defaults to portable mode, so user profile data is stored in your installation directory.

If you would like to have a shared song library between multiple builds, you can use the AdditionalSongFolders preference in ``Save/Preferences.ini`` to specify a path. [Learn how to here](/user-guide/config/preferences/#additionalsongfolders)

## Will there be online support?

The existing SMO functionality is deprecated, but we have future plans to develop a revamped online system.

## Q: Where should I report Bugs, request features and post game crashes?

If you can, do those in our [Issue Tracker Repository](https://github.com/TeamRizu/OutFox), by creating an issue it'll give you those exact options that I mentioned in the question.

You can also use this [Discord Server](https://discord.gg/cN4TjgQdcA):

Use "feature-request" channel to request features or give ideas.
Use "bugs-crashlogs" channel to report bugs and game crashes.

You can also use [our forum](https://discourse.projectmoon.dance/)

## Are there ways I can contribute?

- You can report bugs and make feature suggestions on our Discord server.
- [TinyFoxes](https://github.com/Tiny-Foxes) is coordinating and hosting community-produced content for Project OutFox, such as translations and other add-ons.

## What is StepMania 5.2 and why did you skip over it?

StepMania 5.2 was originally intended to be the next version. However, it included a number of major changes that broke compatibility with previous versions, and were not well-received by the community and other developers.

StepMania 5.2 was originally meant to be 5.1. However, in response to the reception, it was officially delayed in favour of a new 5.1 that was largely an update to 5.0.12 that did not break compatibility with existing content. This was done under the presumption that the new version (subsequently renamed 5.2) would eventually be completed. However, this did not end up happening.

## Q: How do I get logs?

Go into your game folder and check if there's a file called `portable.ini` (or just `portable` if your system doesn't display file extensions). If there's a `portable.ini` in your game folder then all you need to do is open the `Logs` folder and you'll find all logs, the most important one being `log.txt`. (Try to do this after closing the game)

If there's no `portable.ini` in your game folder, then you need to go into a specific path based on your OS:

- Windows: `appdata/roaming/stepmania 5.3`
- Mac: `~/Library/Logs/Stepmania 5.3/`
- Linux: `/home/user/.stepmania-5.3`

## Q: Why do I have to configure my pad while older versions of StepMania could work with no problem?

Project OutFox uses XInput, it means controllers need to get mapped first and then never again. _It means every single controller should work with Project OutFox_

The game doesn't even try to automap things yet, there's a [tutorial step-by-step how to map](https://projectoutfox.com/help/controllers)

## Q: I'm new to this community and I don't understand many terms, could you explain what they mean?

- Chart: How we call Songs that you can play in OutFox. (osu! players calls them Maps)
- Mods: Modded charts that uses Lua to change how the game operates.
- Pad Chart/Keyboard Chart: If the chart was design for people that play in pad or for keyboard.
- Hold: A note that _you have to hold_ to not miss it.
- Drill/Roll: A note that you have to keep hitting to not miss it.
- NG: Missed Hold/(Drill or Roll)
- Doublestep: When you have to use the same foot to hit 2 different notes. RUDRU for example (R = Right, U = Up, D = Down)
- Ghosttap: When you hit a place where there's no step.
- 4th,8th,12th: Note types and colors, 4th: red arrow (hit after each beat), 8th: blue arrow (hit after each half beat), 12th: green arrow (hit after each 1/3 beat)..it goes on.
- Playfield/Notefield/Receptors/PlayerBoards: The targets that notes are going to reach. In dance, the 4 notes that are always at the top. In pump, the 5 notes that are always at the top.
- Lifts: Note that you have to stop holding the moment they reach the playfield.

## Q: Will Project OutFox go open source?

_Yes_.

From Squirrel:

> The project began as a method to add online and profiles to SM5, but when we looked into the engine to see how this could be appropriated it was discovered just how much in a sorry state the code base was, and it looked mostly abandoned. I spoke to Shakesoda in hopes of a resurrection in the form of a team project, and it was requested rather than breaking 10 years of content and community to take the time to make a proper 5.x build that is stable and supports what the community as a whole wants from the game. This backward compatibility support has been an absolute git to do, but it's something now we are down the line which we are proud of, as it has brought many players and newcomers to the community, and provided a very stable experience for folks during the lockdown. We will continue to maintain a near 100% compatibility where we can, and this is taken into consideration whenever we plan a new feature or change engine components. 

> In the beginning of the project we wanted to be the natural progression of 5.1, but due to resistance and feedback from the community, we have made the decision to adjust the returning of code back to the repo in the future. The aim has always been to open source when we get to Alpha 7.0, which gives us enough time to realise our plans for the project and the direction we chose to take OutFox in. We read the community loud and clear in terms of their wishes and needs for StepMania, so we will not disturb that paradigm.

> We asked if it was ok to close the source while this process was done, and it was deemed wise for the health of the repo and the need of people who are just wanting to play. Its why we've been around the repo but not on it as taint can happen and we do not wish this. SSC did this same behaviour before us, so we did not see it as a problem. Some vocal members of the community disagreed, including some of the SMDev Team. We have also been compared to past SM repo contributors who may have left a less than savoury memory in the minds of some, and it has also been hard to differentiate from history we have no involvement with.

> Moving forward with the project, it has become apparent that OutFox has moved beyond a lot of what the community _expects_ StepMania to be, so there will be a different ideal on the opening of source code to the StepMania Repo itself. We have had to 'rename' our internal system away from StepMania, this was due to us wishing to licence/digitally sign the binaries we make, and with gaining this with the SM name being almost impossible, we had to change name to OutFox. Moving forward we continue to keep this promise to ensure our builds are signed on Mac OS (and soon Windows) so it makes the game play experience better for everyone.

> The project is about providing a free game with unencumbered assets and also packs of properly licenced content for the community, and this covers more than dance alone. We are not for profit, we do not ever wish to profit from this community, as we have been part of it for so long. We will announce more information in due course about our future, for now we are as excited as you on the progression of this project.

## My controller doesn't work, but it did on older versions of StepMania.

Currently the game features two modes: a HIDAPI-based "Legacy" input system, similar in behaviour to the input system seen in StepMania 5.0, and an XInput-compliant input system (additional configuration is needed to use unrecognized controllers in this mode, see here for more information). If you are unable to map any buttons to the game, try switching modes to Legacy, available as an option in the Experimental Settings menu, or follow the guide mentioned above on how to map your controller with XInput.

## Q: I have a really recent processor and my game is having a lot of problems, why is that?

Outfox reached a point of optimization that good processors are going to have some problems because some parts of the game are going too fast and need catch up. The current solution to this is to have something running in the background (Have a video playing, other programs) to keep the processor busy.

This is going to have a proper fix later.

## Q: Is online mode available yet? If not, is it coming?

Short answer: no it's not available, yes it's coming. Long answer: It'll take a while, the engine is still being optimized and the online system is still in development (being done by Cube). 

This doesn't mean Online isn't important for us, it's a lot, it was one of Team Rizu first plans but the engine just wasn't ready for their plans. 

Resume: As your read this, both the game engine and online mode are still in development.

## Q: How do I insert Noteskins/Themes/Avatars/Judgments/Toasties into Project OutFox?

In the game folder there's a folder called `Appearance`, where you'll find a folder for each of those mentioned features.

### For Avatars

Open `Avatars` folder and drop any png, jpg, gif into there with any name you want. Now in-game go into Options > Profiles > Select any already created profile (or create one) > edit > change avatar image, now you can select any image that is inside the Avatars folder.

### For Themes

Open `Themes` folder and drop here any theme that supports 5.x

### For Noteskins

Open `NoteSkins` folder, open the folder that represents what noteskin gamemode the noteskin is made for, drop the **NoteSkin Folder** there.

You can find more noteskins in https://projectoutfox.com/addons/noteskins

### For Judgments

Open `Judgments`, drop the judgment image there. **Do not change the name of the judgments you download**, they're important so the game knows what part of the image the game should get)

### For Toasties

Open `Toasties`, drop the game Toastie folter there. (The game can come with 2 toasties in the installer options)

## Q: I have an ancient Intel Card and the game does nothing but crash!

If your log shows `WDDM1.0` or `WDDM1.1` at the end of the graphics card name:

```
00:00.505: Last seen video driver: Intel(R) 82945G Express Chipset Family (Microsoft Corporation - WDDM 1.0)
```

or the log shows `Microsoft GDI` as the Renderer

Then you are running the OpenGL crippled 'windows' driver that is downloaded on a fresh install. Project OutFox will not work on these drivers, as we do not support DirectX anymore (the old D3D renderer that 5.0.12/5.1 has)

There is a list of drivers at this site location that may help, but for some of these cards, you need to keep your windows 7 install disc handy!

https://www.intel.com/content/www/us/en/support/articles/000005733/graphics.html

**Update:**
If you accidentally updated your windows to beyond the support given to you by Intel, so you moved to windows 8.1/10 from 7 then there is still hope! you can take a chance with the Mesa OpenGL replacer for legacy software, which adds an API extension over Microsoft. You can find it here:
https://github.com/pal1000/mesa-dist-win/releases/latest

**HOW TO USE?**

Download Mesa3d for Windows: mesa3d-xxxx-release-msvc.exe

- Extract it (either with a double-click or right-click 7-zip)
- In the extraction folder of Mesa, go to x64, select and copy opengl32.dll
- In the extraction folder of Project OutFox, go to /program and paste opengl32.dll
- it may now use the proper dll

Also see https://fdossena.com/?p=mesa/index.frag for a windows working solution.

And for a detailed guide for intel users:  (Some computer literacy needed)
https://gist.github.com/rb-dahlb/26f316c5b6089807a139fc44ee69f0d1

## Q: How can I know who works on OutFox and who to trust?

Everyone on this list is part of OutFox Team and works on OutFox: [see list](/user-guide/meta/about/#project-outfox-teams)

International Moderators/Translators/Alpha Testers/Tiny-Foxes indirectly helps OutFox development but they aren't part of the OutFox Team.

If you see anyone else saying they work on OutFox then do not trust and please report to us. You can always ask at our [Discord Server](https://discord.gg/cN4TjgQdcA)

## Linux

### I get the error "error while loading shared libraries: libOpenGL.so.0:"

Install either ``libglvnd`` and/or ``libopengl0`` based on your distro. On some distros the package is known as ``libglvnd-opengl``.

## Mac

### I'm having issues launching the game.

If you receive errors such as "No noteskins found" or other unusual behavior, you will have to change macOS security settings in order for Project OutFox to operate correctly. MacOS performs a process every time a new program has been downloaded called quarantine, which will require Gatekeeper (The OS's security manager) to verify its signature. The OS does not trust unsigned applications, and prevents access to external files unless given manual permission by the user.

To do this, open Terminal and run the following command: ``xattr -dr com.apple.quarantine /path/to/StepMania``, replacing ``/path/to/StepMania`` with the path to the directory containing the StepMania executable (manually typing it out, or dragging the folder containing the game executable directly onto the window to fill it automatically).

<video src="/faq/vid/quarantine.webm" controls="">Quarantine video example</video>

On older builds, macOS Catalina also generated a message stating that the game was requesting permission to  receive keystrokes from any application. This was a side effect of previous code that has since been removed.

### The game is rendering small in the bottom corner of the window.

This is due to the renderer not supporting scaled screens yet. To fix this, right-click the game executable and select "Get info" (or highlight the file and press Command (⌘)+I, and toggle the "Open in Low Resolution" option under General.

### What modes does OutFox currently support?

The modes as of **Alpha 4.11.0 (November 2021)** are as follows:

```
Name    | Description
--------|------------
dance   | Dance Dance Revolution + Solo (3, 4, 6 and 8 (Double) Panels)
pump    | Pump It Up (5, 6 (HalfDouble), 10 (Double)) based off of the pro era (SM4)
kb7     | 7 Keys
ez2     | Ez2Dancer (3 Panels with 2 Sensors, 3 Panels with 4 Sensors and 6 Panels with 4 Sensors (Double))
para    | Para Para Paradise (5, 8, and 10 Sensor)
ds3ddx  | Dance Station 3DDX (4 Panels with 4 Sensors)
bemu    | (formally beat) BMS (5, 7, 10 (Double) and 14 (double) Keys + Scratch)
maniax  | Dance Maniax (4 and 8 (Double) Sensors)
techno  | TechnoMotion (4, 5, 8. 9, 8 (Double), 10 (Double), 16 (Double) and 18 (Double) Panels)
taitai  | A 'don da don' styled mode
pomu    | Pop'n Music via PMS (3, 4, 5, 7, 9 and 18 Keys)
gddm    | GitaDora Drummania style (5, 9 and 10 part!)
gdgf    | GitaDora Guitar freaks style (5 Guitar/Bass, 3 Guitar/Bass) (6 Guitar support Coming soon!)
gh      | Guitar style (5 Solo/Backup, 6 Solo/Backup)
kickbox | Obscure lash a soft dance pad to a punching bag mode (4, 6, 8 sensor Mode)
```

The Modes we can talk about are as follows: 
**PLEASE NOTE: These are proposed and are scheduled on the road map, limitations or code problems may delay or change these modes, so it is why there is no date or ETA given.**

```
Name      | Description
----------|------------
piu       | A major refactoring to a more accurate mode, to update it to closer to mainline style
djh       | A Hero isn't always needed, neither are the DJs
drum      | A midi based drum mode with 20 parts simulating a full yamaha DTX drum kit
karaoke   | A (.. do i need to explain this?) singing mode. Will happen if squirrel gets off his butt
jam       | A mode properly supporting O2Jam and it's modes, with full .OJM loader support
d86.4     | Feet dance Station Radio 3 panel
rb        | band style drums (5 lane)
```

### What NotesLoaders Does OutFox Support?

The NoteLoaders as of **Alpha 4.11.0 (November 2021)** OutFox Supports and their level of completeness to the specifications:

```
Name  | Notes:
------|------------
BMS   | 85% See Wiki for more details
BME   | 90% (beat loader for extended/PMS)
BML   | 90% (beat loader for long notes)
BGF   | 100% (beat loader for GF proposed)
CHART | 100% (gh loader)
DTX   | 85% (gddm 90% / gdgf 85%)
DWI   | 100% (as we know)
KSF   | 100% (as we know)
MID   | 90% (gh loader)
PMS   | 100% BMS98 / 90% BME 2004
SM    | 100% (+ OF fixes)
SSC   | 100% (+ OF fixes v0.84 proposed)
TJA   | 15% (taiko loader in progress)
```

PLEASE NOTE: These are proposed and are scheduled on the road map, limitations or code problems may delay or change these modes, so it is why there is no date or ETA given.

```
Name  | Notes:
------|------------
BMSON | 0%
OSD   | 0%
OJM   | 0%
???   | 0%
???   | 0%
```
