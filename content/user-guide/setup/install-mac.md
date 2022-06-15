---
title: Installation on Mac OS
description: Installation guide for Project OutFox on Mac OS systems.
weight: 1
---

### Note to users using "App Store Only Applications"

Using this permission will make Gatekeeper revoke necessary permissions that Project OutFox needs to read the game content (Given the app loads files externally).
So, if you are using this option instead of "App Store and Identified Developers", change it before downloading the software.

This option can be found on System Preferences -> Security and Privacy -> "Allow apps downloaded from:"

![Showcase of both options for the "Allow Apps" setting on the Security and Privacy section.](/getting-started/mac-allowapps.png)

---

Open the DMG file and drag the game to your Applications directory.
![Screenshot of the OutFox DMG image on MacOS Big Sur.](/getting-started/mac-dmg.png)

## Additional Notes

{{<expand "Dequarantine Project OutFox from macOS (4.9.9 and below)">}}
On pre-digitally-signed builds, you will have to change macOS security settings in order for Project OutFox to operate correctly. macOS prevents access to external files by unsigned apps unless given manual permission by the user.

To do this, open Terminal and run the following command: ``xattr -dr com.apple.quarantine /path/to/outfox``, replacing ``/path/to/outfox`` with the path to the directory containing the OutFox executable (manually typing it out, or dragging the folder containing the game executable directly onto the window to fill it automatically).
If no errors show up after pressing enter, then you're ready to start the game.

On older builds, macOS Catalina also generated a message stating that the game was requesting permission to receive keystrokes from any application. This was a side effect of previous code that has since been removed.
{{</expand>}}