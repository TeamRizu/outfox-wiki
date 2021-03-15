# Getting started

## System requirements

Project OutFox has builds for Windows, macOS, and Linux. We also have specific builds for ARM-based Linux devices and Apple M1-based computers. It should run on just about any computer from the mid-2000s onward, depending on the operating system and hardware specifications. We have had alphas running on CPUs as old as the Pentium E2180.

The Windows build of Project OutFox requires Windows 7 or later. Windows XP builds are available for selected releases, which require Service Pack 3.

## Installation

### Windows

Windows builds of Project OutFox use an installer; follow the instructions, and launch the game using the provided shortcuts. 

![Screenshot of the Project OutFox installation wizard on Windows 10.](./_media/getting-started/installer.png)

* It is recommended that you **do not** install it to the Program Files directory, as this is known to cause problems.
* The installer offers optional components, such as the noteskins that were included with StepMania 5.0.12 and 5.1, and "Toasties" - animations that can trigger on combo milestones in-game.
* By default, the game is installed in "Portable Mode"; save data is stored in the installation directory. If you disable portable mode, your save data will be stored in your user directory under ``%APPDATA%/StepMania 5.3``.

### Linux

On Linux, we only provide pre-compiled binaries at this time. Extract the tarball, and run ``./stepmania`` in the directory. 

If you see an error mentioning that it could not find ``libOpenGL.so.0:``, install ``libopengl0`` from your distribution's package manager.

### macOS

Open the DMG file and drag the game to your Applications directory.

Until we produce a digitally-signed build, you will have to change macOS security settings in order for Project OutFox to operate correctly. macOS prevents access to external files by unsigned apps unless given manual permission by the user.

To do this, open Terminal and run the following command: ``xattr -dr com.apple.quarantine /path/to/outfox``, replacing ``/path/to/outfox`` with the path to the directory containing the OutFox executable (manually typing it out, or dragging the folder containing the game executable directly onto the window to fill it automatically).

On older builds, macOS Catalina also generated a message stating that the game was requesting permission to receive keystrokes from any application. This was a side effect of previous code that has since been removed.

## First-time setup

To get the best experience, there are a few things you should do the first time you install Project OutFox. Some of these instructions assume use of the default theme Soundwaves.

### Selecting a game type

The first time you launch Project OutFox without save data present, you will be prompted to select which **game type** you would like to begin with. Project OutFox supports a variety of game types, which simulate different types of rhythm games (including button layouts and, where applicable, gameplay behaviours specific to the game type). Game types are further-divided into **styles**, which include chart types such as single, double, etc.

![Screenshot of the Project OutFox game selection screen.](./_media/getting-started/select-game-type.png)

As of Alpha 4.9.7, they include:

* **dance** - the default game type. Similar to games such as _Dance Dance Revolution_ and _In the Groove_, it uses four lanes designated by cardinal directions (left, down, up, right).
* **pump** - a five-lane dance game, which uses four diagional directions and the center rather than cardinal directions.
* **kb7** - a seven-lane game type similar to games such as _o2Jam_, with six keys flanking a centre column (usually mapped by default to the SDF, JKL, and space keys by default)
* **ez2** - a game typed based on the defunct arcade game _ez2Dancer_, which uses three foot panels and a pair of hand sensors.
* **para** - a dance game designed for _para para_ routines, which is typically played with five infrared hand sensors in a semicircular layout, and uses a considerably looser scoring system.
* **ds3ddx** - a dance game whose format is common among Chinese arcade dance games, which uses four diagional foot panels, and four hand sensors around the pad in the cardinal directions.
* **beat** - a BMS player mode, supporting 5-key and 7-key styles, and the ability to load BMS files.
* **maniax** - a game typed based on the defunct arcade game _Dance ManiaX_, which uses four hand sensors arranged into two columns (upper and lower).
* **techno** - similar to ``dance``, except supporting up to eight panels (cardinal and diagional directions)
* **popn** - a PMS player mode, supporting 5-button and 9-button styles, and the ability to load PMS files.
* **gddm** - A drum mode supporting five-drum (with one bass pedal) and seven-drums (two pedals) styles, modelled upon the mechanics of the arcade rhythm game _DrumMania_.
* **guitar** - A guitar mode supporting three-button and five-button game types, modelled upon the mechanics of the arcade rhythm game _Guitar Freaks_.
* **kickbox** - A mode that was orignally designed for an exercise setup.

You can switch between them at any time using the "Select Game" button on the main menu.

### Configuring your controls

Each game type has its own default keyboard configuration; dance, for example, maps the first player to the arrow keys (when playing on keyboard, this is often referred to as the "index" playstyle). To configure your button mappings, go to **Options > Input & Calibration > Config Key/Joy Mappings**. 

![Navigating to the Config Key/Joy Mappings screen.](./_media/getting-started/gotoconfigjoy.jpg)

Use the arrow keys to select an item to map, press Enter, and then press the button on the keyboard or controller you want to use. You can have multiple button assignments for each command.

![The Config Key/Joy Mappings screen.](./_media/getting-started/config-joy.png)

Project OutFox supports a wide variety of controllers, and even arcade hardware. By default, the game operates with an XInput-compliant input engine. 