---
title: "Game Module: para"
description: Details about the `para` mode supported by Project OutFox.
weight: 2
---

<!--
insert picture of gameplay 
-->

## About

## History:

This mode was added from the very beginning of the history of the StepMania project, having several different tweaks and fixes done throughout the years.

### Introduced:
#### 5 Panel (UpLeft/UpRight/Up/Left/Right):

First Seen:
 * StepMania v3.0 beta 6 - ``(Para Single)`` (7th September 2002) 
 * StepMania v3.0.2 - ``(para-versus)`` (10th July 2004)
 * Project OutFox alpha 4.9.7.3 - ``(double)`` (April 4 2021)

Replaced by:
 * StepMania v3.0 beta 6 - ``(single)`` (15 September 2002)
 
#### 8 Panel (UpLeft/UpRight/Up/Left/Right/BackRight/Back/BackLeft):

First Seen:
 * Project OutFox alpha 4.9.9HF - ``(single-eight)`` (April 30 2021)


## Gameplay

The game is played with sensors on the floor representing a half circle. The genre for the content was predominantly _EuroBeat_ and featured moves from the scene that were to be replicated from dances or arrows placed on the screen. The player then has to wave their arms over the sensors to complete the movements matching the routine in time to the music. _Project OutFox_ fully supports the PS2/Dreamcast Para controller on a cross platform environment as of 4.12.0, allowing anyone able to play our game access to the controller for the complete experience.

The sensors used primarily PIR tech and were bright pink (PS2) or green (DC) in colour, and had adjustments for length and height of the player for better accuracy.

The game received several quality of life updates in the beginnings of the project, and the hold system was fixed to be more accurate to how the actual game played on both the console and arcade versions.

### Mechanics

``para holds``

The official games allowed a player to wave a hand over the sensor _before_ the hold begins to allow them to catch the hold and not be penalised for the 'wave' effect which would happen on a dance based game. The head triggers if the sensor detects a hand in place.

``pump holds`` 

There is a special system for how pump holds are judged, which is different to ``dance`` or ``smx``. These holds can be picked up and regained on a loss.

``tick holds`` 

These hold types are active on this mode, completely holding a long note will increase score per tick.

``free-style`` 

A lot of the charts made for this mode do not make use of the sensors, or encourage full body movement to complement a workout style way of playing the game.

``mines`` 

These notes should be avoided, as they will damage your life gauge. They are supported, but extremely rare to see in ``para`` mode.

``sensors`` 

This mode uses PIR or photo sensors to measure a movement passing by them or for checking a movement has been met.

``what combo?``

The original ``para`` games worked more on the replication of the dance moves and the enjoyment of playing rather than displaying a combo or 'accuracy' score at the end of the song. _Project OutFox_ supports either methodology, as the console builds did have some combo/hit accuracy included in the evaluation, and it is purely up to the themer/creator to add this or just have the score for optional enjoyment. 

## Play Styles

## Grading / Accuracy

## Scoring

## Health Bar

## Modding

## Charting

## Controls

Setting up the _Para_ controller is different depending on the operating system you are using. We will be working with the Pink _PlayStation 2_ controller in this guide, as it is much much more common and we have yet to have anyone ask about the DC version.

**Before** you start _Project OutFox_, you must make sure you have laid out the controller on the floor, within a suitable distance from your screen, and away from any shelving or things which could be knocked off from swinging arms, ensure good clearance as well from the second player, as you do not want to be hitting each other as you play the game!

![Two player layout from PlayStation 2 (2010) - Thanks https://www.tomshw.it/](/user-guide/paraps2-2p-layout.jpg)


The example above shows a two-player layout at a convention from 2010, with the PS2 game running on it's actual hardware. For the first time _Project OutFox_ now supports up to 4 simultaneous controllers, (though more than 2 player is not available yet!). It is recommended to use the provided template to place on the floor so the controllers are correctly spaced and you are aware of the space required.

![Floor Layout of PPP controller](/user-guide/parafloorlayout.jpg)

Plug in the controller(s) into a spare USB slot on your computer, or the dock of the Mac/Steam Deck once you are happy with your placement.

You need to run the game once to generate the file we will be editing to set up the controller.

Run the game as per your Operating system and then find the `/Save/Preferences.ini` file, that usually is edited for your specific choices. In the future we won't need to do this step, but for now, we rely on it to configure things.

**You MUST always plug in the controllers BEFORE running the game! This is because the hardware was designed for the PS2, and needs a special routine in the code to function correctly, and this is done as the game starts up!**

### The following controls are only available on Alpha V 041 or later (May 2023)

Scroll down the preferences file until you find the section that begins with Input and set up your system as follows depending on your operating system:

Windows: 7+

```ini
InputDrivers=para,legacy,minisdl
InputSetArcade=0
InputSetDInput=1
InputSetHIDAPI=0
InputSetJSDeadzoneValue=3200
InputSetLinuxJSEndpoint=0
InputSetRAWAPI=0
InputSetXInput=0
```

Linux: (Desktop - Arch/Ubuntu/Debian etc)

```ini
InputDrivers=para,SDL
InputSetArcade=0
InputSetDInput=0
InputSetHIDAPI=0
InputSetJSDeadzoneValue=3200
InputSetLinuxJSEndpoint=0
InputSetRAWAPI=0
InputSetXInput=1
```

Linux: (Steam Deck)

```ini
InputDrivers=para,SDL
InputSetArcade=1
InputSetDInput=0
InputSetHIDAPI=0
InputSetJSDeadzoneValue=3200
InputSetLinuxJSEndpoint=0
InputSetRAWAPI=0
InputSetXInput=1
```

Linux: (Raspberry Pi / RockPi / Arm Generic)

```ini
InputDrivers=para,SDL
InputSetArcade=0
InputSetDInput=0
InputSetHIDAPI=0
InputSetJSDeadzoneValue=3200
InputSetLinuxJSEndpoint=0
InputSetRAWAPI=0
InputSetXInput=1
```

MacOS

```ini
InputDrivers=para,SDL
InputSetArcade=1
InputSetDInput=0
InputSetHIDAPI=0
InputSetJSDeadzoneValue=3200
InputSetLinuxJSEndpoint=0
InputSetRAWAPI=0
InputSetXInput=1
```

_Please Note:_ If you are running a _hardened_ version of Linux (SELinux/Gentoo/Some Arch variants), OutFox may not set up and initialise your controller automatically. If so you probably have restrictive udev rules for unknown input devices. Quit OutFox and try placing the following udev rule in `/etc/udev/rules.d` (in a file such as `70-ppp.rules`):

```KERNEL=="hidraw*", ATTRS{idVendor}=="0507", ATTRS{idProduct}=="0011", TAG+="uaccess"```

Note that the file name must come before `73-seat-late.rules`, as this is where `uaccess` is applied.

##### _Thanks to [@Tatsh](https://github.com/Tatsh) and [@TheNathannator](https://github.com/TheNathannator) for contributing this information_

The Para Driver will be set up to init automatically from Alpha V pre-041, so you do not need to change anything else in the system for this.

For calibrating and setup, we recommend watching the video from our friends at _EKS-D ParaMania_, which have provided a great tutorial here: https://www.youtube.com/watch?v=u-cpsnGrFXQ 

## Trivia

The old official _Konami_ controller used to have a bug on non Windows based systems until alpha 4.12.0 which prevented the device waking up correctly on those systems.

Although _Project OutFox_ has had two player support for some time, it has only recently been able to utilise two controllers being plugged in at once. You will need to wait until Alpha V 041 is available to use this feature, it is NOT available on Alpha 4 / LTS 4. 

_Written and Maintained with ♡ by Squirrel_