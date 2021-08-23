---
title: Installation on Linux & Raspberry Pi
description: Installation guide for Project OutFox on Linux & Raspberry Pi systems.
weight: 1
---

{{<toc>}}

## Important note
Do not extract or run the game as the `root` user. It's considered very unsafe, and you will have permission issues.

## Determining what version to download
There are multiple versions for linux setups. Use `uname -a` in a terminal to find out what to download.

![Screenshot of potential output from uname, with the architecture highlighted.](/getting-started/linuxinstall-uname.png)

For example, the above output says `x86_64`, so the amd64 download would be used. (amd64 legacy would be used on older systems/linux distributions)

Raspberry Pi users would use arm64v8 if uname shows "aarch64", while arm32v7 would be used if uname has "armv7" in it.

## Installing the game
*Project OutFox* is currently distributed as .tar.gz files for linux distributions.
{{< tabs "Installing the game" >}}
{{< tab "Through a GUI" >}}
Most distributions have a right click item in their file manager for extracting archives.

![Screenshot of a right-click menu on the archive.](/getting-started/linuxinstall-rightclick.png)

If the menu doesn't have an option to extract the archive, open the file in your archive manager and extract it to somewhere convenient. (ex: the user's home or Desktop directory)
{{< /tab >}}
{{< tab "Using 'tar'" >}}
Open a terminal and get to the directory the archive is in.

Run this in your terminal, replacing the name of the archive file with what you named it.
```
tar -xvf OutFox-5.3.0-alpha-4.9.9HF3b-amd64-legacy-date-20210809.tar.gz
```
This should create a directory that holds the install of *Project OutFox*.
{{< /tab >}}
{{< /tabs >}}

## Portable vs Non-portable mode
When booting, the game looks for a file in its' root directory called `portable.ini`. If this file is found, the game switches to "portable" mode, which has all save data placed in the program's root directory.

Otherwise, the save data will be placed in `.stepmania-5.3` in the user's home directory.

## Running the game
{{< tabs "Running the game" >}}
{{< tab "Through a Launcher" >}}
The following is an example launcher file named "Project OutFox.desktop".

Create a file on the desktop with this name and base the contents on the section below.
```
#!/usr/bin/env xdg-open

[Desktop Entry]
Type=Application
Name=Project OutFox
Icon=/home/mtk/Desktop/Icons/dance_icon.png
Exec=/home/mtk/Desktop/OutFox/stepmania
```
Note that the Exec line is a full path to the *OutFox* executable, while the Icon line can be a full path to any png on the system.

Once created, the launcher can be double-clicked to run the game.
{{< /tab >}}
{{< tab "Through the terminal" >}}
In the game's root directory, type this into the terminal and press enter:
```
./stepmania
```
This will start the game and have some extra output in the terminal that is usually seen in the logs.

To force a theme, run the following, replacing the theme name with the desired theme's directory name.
```
./stepmania --theme=SM5-GrooveNights
```

{{< /tab >}}
{{< /tabs >}}

## Extra NoteSkins
The NoteSkinsSM5 directory in Appearance contains the noteskins that came with StepMania 5.1/5.0.12. The contents can be dragged into the NoteSkins directory if one wants to use the old noteskins.

## Common problems

### Missing libraries
The game might not launch if libraries are missing. `ldd` can be used to help determine what packages need to be installed without having to run the game multiple times.

Run this in the game's directory from a terminal to find what libraries are missing:
```
ldd stepmania
```
Here is example output from ldd:

![Screenshot of output from ldd.](/getting-started/linuxinstall-ldd.png)

In this example, `libbz2.so.1.0` is missing.

Here's a list of what libraries it looks for and what Debian/Ubuntu/Fedora package it corresponds to. Most systems should have most of these already.
Library name|Debian/Ubuntu pacakge|Fedora package
--------|-------|--------
libOpenGL.so.0|libopengl0|libglvnd-opengl
libGLX.so.0|libglx0|libglvnd-glx
libasound.so.2|libasound2|alsa-lib
libjack.so.0|libjack-jackd2-0|jack-audio-connection-kit or pipewire-jack-audio-connection-kit
libpulse.so.0|libpulse0|pulseaudio-libs
libbz2.so.1.0|libbz2-1.0|bzip2-libs
libusb-1.0.so.0|libusb-1.0-0|libusb1 or libusbx
liblzma.so.5|liblzma5|xz-libs
liblz4.so.1|liblz4-1|lz4-libs
libFLAC.so.8|libflac8|flac-libs
libogg.so.0|libogg0|libogg
libvorbis.so.0|libvorbis0a|libvorbis
libvorbisenc.so.2|libvorbisenc2|libvorbis

---
### Audio not playing / going to the wrong device
Be sure to check the `SoundDevice` preference.

When the game boots, it writes the available audio devices into the logs and terminal output.

![Screenshot of an audio device list from the game.](/getting-started/linuxinstall-alsadev.png)

Assuming the third device is where the audio should be, the whole line for SoundDevice should be `SoundDevice=plughw:1,3`.

---
### Needing to force ALSA instead of PulseAudio.
A wrapper program called `pasuspender` can be used to temporarilly disable pulseaudio and make OutFox use the ALSA drivers.

In the terminal, it would be used like this:
```
pasuspender ./stepmania
```

---
### Needing to force a different audio driver
Be sure to check the `SoundDriver` preference for forcing the audio driver.

Here's what can be put into the preference, and what it means
Preference setting|Audio Driver
--------|--------
Pulse|PulseAudio
ALSA-sw|ALSA, software renderer.
JACK|JACK
Null|No audio

