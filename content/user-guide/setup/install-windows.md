---
title: Installation on Windows
description: Installation guide for Project OutFox on Windows systems.
weight: 1
---

Windows builds of Project OutFox use an installer; follow the instructions, and launch the game using the provided shortcuts. 

![Screenshot of the Project OutFox installation wizard on Windows 10.](/getting-started/installer.png)

* It is recommended that you **do not** install it to the Program Files directory, as this is known to cause problems.
* The installer offers optional components, such as the noteskins that were included with StepMania 5.0.12 and 5.1, and "Toasties" - animations that can trigger on combo milestones in-game.
* By default, the game is installed in "Portable Mode"; save data is stored in the installation directory. If you disable portable mode, your save data will be stored in your user directory under ``%APPDATA%/OutFox 5.3``.


If your log file (Installation directory/Logs) shows WDDM1.0 or WDDM1.1 at the end of the graphics card name (i.e. "Intel(R) 82945G Express Chipset Family (Microsoft Corporation - WDDM 1.0)") or the log shows "Microsoft GDI" as the renderer, then you are running the OpenGL-crippled "Windows" driver that is downloaded on a fresh install. Project OutFox will not work on these drivers, as we do not support DirectX anymore (the old D3D renderer that 5.0.12/5.1 has) There is a list of drivers at [here](https://www.intel.com/content/www/us/en/support/articles/000005733/graphics.html) but for some of these cards, you need to keep your Windows 7 install disc handy!
