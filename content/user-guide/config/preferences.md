---
title: Preferences.ini
weight: 3
---

**Preferences.ini** is a file that contains many of the system preferences. Some of them are accessible within Project OutFox's settings menu, but some of them are only accessible by editing the file. Manual edits to Preferences.ini must be performed when the game is closed, or else they may be automatically overwritten.

It is located in the Save [folder](/user-guide/config/folders).

## List of parameters

### AdditionalCourseFolders

Takes a comma-separated list of directories where additional course (.crs) files are stored.

Default value: nothing

_See [folder](/user-guide/config/folders)._

### AdditionalFolders

Takes a comma-separated list of directories where additional content folders are stored. Those additional folders could have all folders your OutFox installation root has.

What's the usage of this? Simple, share themes/noteskins/avatars..etc with any other installation of OutFox you have.

Value Example:

`AdditionalFolders=C:\AdditionalFolder`

```
C:\AdditionalFolder
│
└───Appearance
│   │   
│   └───Themes
│       │Infinitesimal
│       │SoundWaves Community Edition
```

Default value: nothing

_See [folder](/user-guide/config/folders)._

### AdditionalSongFolders

Takes a comma-separated list of directories where additional song groups are stored. Those additional **song** folders are expected to have **Group folders** inside.

What's the usage of this? The best usage of this preference would be to have songs on another disk with maybe more space or faster so your main drive doesn't get filled with songs.

Value Example:

`AdditionalSongFolders=C:\AdditionalSongs`

Where C:\AdditionalSongs should look like this

```
C:\AdditionalSongs
│
└───PackName
│   │   
│   └───SongName
│       │Music.ogg
│       │Chart.sm
```

AdditionalSongFolders can point to any valid path and don't have to be on the same disk as OutFox.

Default value: nothing

_See [folder](/user-guide/config/folders)._

### AllowEditorAutoSaving

If enabled, chart data will be saved every 5 minutes while editing a chart.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 1

### AllowExtraStage

When event mode is off, allow the player to qualify for an extra stage.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### AllowHoldForOptions

Allow the user to enter the player options menu by holding the start button when selecting a song. If set to 0, the user must press the start button twice instead.

Possible values are ``0`` or ``1``. 0 is ``"Double tap"`` and 1 is ``"Hold"``.

Default value: 1

### AllowMultipleHighScoreWithSameName

Allows multiple high score entries by the same user.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 1

### AllowMultipleInstances

Allows multiple instances of Project OutFox to be opened.

Possible values: `0` or `1`. `0` is disabled and `1` is enabled.

Default value: `0`

### AllowMultipleToasties

Allows the legacy toasty animation to play multiple times in a single song.

Possible values are ``0`` or ``1``. 0 is ``Of`` and 1 is ``On``.

Default value: 1

### AllowMultitexture

Allows models to use multitextures when rendering.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 1

### AllowNotefieldChangesOnPreview

Allows any changes to the notefield to be made while using preview mode on editor.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### AllowSongDeletion

Allows the ability to delete a song on the Music Wheel by performing the following combination on the selected song:

`CTRL + Backspace`

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### AllowUnacceleratedRenderer

Allows the game to continue using a software renderer if the graphics card cannot support the renderer.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### AllowW1

Enables the W1 judgement ("Flawless", "Marevelous", "Fantastic" depending on the theme) in regular gameplay. 

Possible values are ``"Never"``, ``"Courses Only"`` and ``"Always"``.

Default value: everywhere

### AnisotropicFiltering

Makes textures use "Anisotropic Filtering". Noted to have no effect without mipmaps on, and is not mutually exclusive with ``TrilinearFiltering``.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### Announcer

Specifies the name of the current announcer.

Default value: nothing

### ArcadeOptionsNavigation

Determines how menus are navigated. ``StepMania Style`` has up & down switch option lines, and start moves to the end. ``Arcade Style`` has up & down ignored, while start moves to the next option line.

Possible values are ``0`` and ``1``. 0 is ``StepMania Style`` and 1 is ``Arcade Style``.

Default value: 0

### AttractSoundFrequency

Determines how often sound is enabled during the attract mode loop in arcade mode.

Possible values are ``Never``, ``Always`` (EveryTime), ``2 Times`` (Every2Times), ``3 Times`` (Every3Times), ``4 Times`` (Every4Times), and ``5 Times`` (Every5Times).

Default value: EveryTime

### AutoJoin

Allow both players to automatically join upon a single start press.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### AutoMapOnJoyChange

Perform automapping when a change in joysticks or controllers is detected.

Possible values are ``0`` or ``1``. 0 is "Off" and 1 is "On (recommended)".

Default value: 1

### AutoPlay

Has the notefield play the chart by itself. ``CPU-controlled`` involves the ``AI.ini`` file inside the game's ``Data`` folder.

Possible values are ``Off`` (Human), ``On`` (Autoplay) and ``CPU-Controlled`` (CPU).

Default value: "Human"

### AutogenGroupCourses

Automatically generates nonstop courses based on installed songs.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 1

### AutogenSteps

Allows charts to be generated for other [game types](/user-guide/games/) and styles that a song does not have its charts for.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### AxisFix

Enables an input workaround for certain devices where the D-Pad won't allow two inputs of opposing directions.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### BGBrightness

Sets the brightness of background visuals in gameplay.

Possible values are ``0%``, ``10%``, ``20%``, ``30%``, ``40%``, ``50%``, ``60%``, ``70%``, ``80%``, ``90%`` and ``100%``.

Default value: 0.700000

### BGBrightnessNoZero

Similar to ``BGBrightness``, but without a ``0%`` option. meant for use in options menus.

Possible values are ``10%``, ``20%``, ``30%``, ``40%``, ``50%``, ``60%``, ``70%``, ``80%``, ``90%`` and ``100%``.

### BGBrightnessOrStatic

Sets the brightness of the background or disables it. Meant for use on options menus. ``Disabled`` sets ``SongBackgrounds`` to ``Off``.

Possible values are ``Disabled``, ``25% Bright``, ``50% Bright`` and ``75% Bright``.

### BackUpAllSongSaves

When enabled, all SSC saving saves a secondary backup file.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### BackgroundFitMode

Determines scaling/cropping of song backgrounds based on resolution and aspect ratio.

Possible values are ``CoverDistort``, ``CoverPreserve``, ``FitInside``, ``FitInsideAvoidLetter`` and ``FitInsideAvoidPillar``

Default value: CoverPreserve

### BlinkGameplayButtonLightsOnNote

Make game lights blink when chart notes cross the receptors.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### BothAtOnce

This preference controls BothAtOnce, an input mode that mirrors input across both players.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### BreakComboToGetItem

Require breaking combo to earn items in a player's inventory.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### CelShadeModels

Currently only used on Legacy Dancing Characters, which makes the characters have a toon-styled shade applied.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### Center1Player

In single-player modes, renders the notefield in the center of the screen rather than to the left or right.

Possible values are ``0`` and ``1``. 0 is ``"Off"`` and 1 is ``"On"``.

Default value: 0

### CenterImage

CenterImageAddHeight, CenterImageAddWidth, CenterImageTranslateX, and CenterImageTranslateY are used to adjust overscan.

Default values:

- CenterImageTranslateX     = 0
- CenterImageTranslateY     = 0
- CenterImageAddWidth       = 0.000000
- CenterImageAddHeight      = 0.000000

### CoinMode

This setting determines whether Project OutFox will behave as an arcade game or not;

* If set to ``Pay``, coins and credits must be inserted to play. The game will use an attract loop, and the main menu will not be accessible.
* If set to  ``Free Play``, the game will behave similarly to Pay mode, except credits are not required to play.
* If set to ``Home``, Project OutFox's arcade workflows will be disabled. The game will use its default user experience, including access to the main menu.

Possible values are ``Home``, ``Pay`` and  ``Free Play``.

Default value: Home

### CoinModeNoHome

This is meant for use in options menus. It only lets one choose between pay and free play modes.

Possible values are ``Pay`` and ``Free Play``.

### CoinRecoveryExpirationHours

How many hours can pass before previously inserted coins from a different instance expire.

Default value: 0

### CoinsPerCredit

Specifies the number of coins that must be inserted for each credit.

Possible values are ``1``, ``2``, ``3``, ``4``, ``5``, ``6``, ``7``, ``8``, ``9``, ``10``, ``11``, ``12``, ``13``, ``14``, ``15`` and ``16``.

Default value: 1

### ComboContinuesBetweenSongs

If enabled, the player's combo will carry over between songs rather than start from 0.

Possible values are ``0`` or ``1``. 0 is ``Of`` and 1 is ``On``.

Default value: 0

### ConstantUpdateDeltaSeconds

Experimantal feature that forces a specific update loop, in seconds. Having a value of ``0.0`` disables it.

Default value: 0.000000

### Cookie

~~Cookies are delicious delicacies.~~

Used by the file downloader functionality. Since this functionality isn't really used, this preference is also mostly unused.

Default value: nothing

### CourseSortOrder

Chooses how the courses are sorted.

Possible values are "Preferred" (Not choosable in options menus), "Num Songs" (Songs), "Average Feet" (Meter), "Total Feet" (MeterSum) and "Ranking" (MeterRank)

Default value: Songs

### CoursesToShowRanking

The names of courses to show in the Ranking screen. Only used when showing ranking of specific trails.

Default value: nothing

### CurrentGame

The game type currently being used.

Possible values are listed [here](/user-guide/games).

Default value: nothing

### CustomSongsEnable

If set to 1, players may load their songs from a folder in their profile on a USB media (similar to the "r21" patch from _In the Groove 2_).

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### CustomSongsLoadTimeout

How long the game will wait for a custom song to be loaded before skipping it, in seconds.

Possible values are ``1``, ``2``, ``3``, ``4``, ``5``, ``6``, ``7``, ``8``, ``9``, ``10``, ``20``, ``30`` and ``1000``.

Default value: 5.000000

### CustomSongsMaxCount

The maximum number of songs that can be loaded as custom songs.

Possible values are ``10``, ``20``, ``30``, ``40``, ``50``, ``60``, ``70``, ``80``, ``90``, ``100``, and ``1000``.

Default value: 1000

### CustomSongsMaxMegabytes 

The maximum filesize for audio files of custom songs.

Possible values are ``1``, ``2``, ``3``, ``4``, ``5``, ``6``, ``7``, ``8``, ``9``, ``10``, ``20``, ``30`` and ``1000``.

Default value: 5.000000

### CustomSongsMaxSeconds

The maximum length in seconds for custom songs.

Possible values are ``60``, ``90``, ``120``, ``150``, ``180``, ``210``, ``240``, and ``10000``.

Default value: 120.000000

### DDRStyleRandom

When on, random backrounds use the song's directory as the seed, ensuring a conststent set of backgrounds for each song.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### DebounceCoinInputTime

How much the coin detector's input is expected to bounce, in seconds. (Because otherwise, a coin could count as more than one)

Default value: 0.000000

### DebugLights

Displays a debug overlay for lights outputs.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### DefaultFailType

The fail type to use for every song. Alters the ``DefaultModifiers`` preference. Meant for use in options menus.

Possible values are ``Immediate``, ``ImmediateContinue``, ``EndOfSong`` and ``Off``.

### DefaultLocalProfileIDP1

The ID of the local profile that P1 should use by default.

Default value: nothing

### DefaultLocalProfileIDP2

The ID of the local profile that P2 should use by default.

Default value: nothing

### DefaultModifiers

Comma-separated list of modifiers used by players with no profile, or a new profile with no personal settings. This is game-specific (eg: ``dance`` and ``pump`` could have different default modifiers).

Default value: nothing

### DefaultRecordLength

How long a recording section in the editor is by defualt, in seconds.

Default value: 4.000000

### DefaultTheme

Sets the theme that will be loaded as a backup if the current theme cannot be loaded. If ``theme`` cannot also be found, then it will look back for ``"default"`` as the theme to load.

Default value: default

### DelayedBack

If enabled, you must hold the back button for 0.5 seconds to exit gameplay.

Possible values are ``0`` or ``1``. 0 is ``"Instant"`` and 1 is ``"Hold"``.

Default value: 1

### DelayedCreditsReconcile

This allows extra credits already present to be used for new plays. Otherwise, the required amount of credits is always required every time.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### DelayedModelDelete

When enabled, model unloading is delayed.

Possible values are ``0`` and ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### DelayedScreenLoad

When enabled, all unloaded screens are immediately removed from memory. May result in redundant loads.

Possible values are ``0`` and ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### DelayedTextureDelete

When on, textures are held in memory, reducing the amount of times it needs to load.

Possible values are ``0`` and ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### DisableScreenSaver

Disables the X11 screensaver while the game is running. Currently unused.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 1

### DisableUploadDir

Turns off writing scores to the profile's Upload folder.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### DisabledSongs

Defines songs that will be disabled (by not making them visible or selectable) from the selection.
Formatting for this follows the structure of _[folder](/user-guide/config/folders)._and must be a path to the song.

```ìni
DisabledSongs=MyGroup/MySong,MyGroup2/MyOtherSong
```

Default value: nothing

### DisplayAspectRatio

The current aspect ratio, expressed as a decimal (i.e. 16:9 = 1.777778, or 16/9).

Possible values are ``9:16``, ``2:3``, ``3:4``, ``1:1``, ``5:4``, ``4:3``, ``3:2``, ``16:10``, ``16:9``, ``21:9``, ``8:3`` and ``32:9``.

Default value: 1.777778

### DisplayColorDepth

The current color depth is either 32 or 16. 32 is ``32bit`` and 16 is ``16bit``.

Default value: 32

### DisplayHeight and DisplayWidth 

Determines the window resolution. This does not change the game's internal resolution which is defined by the theme.

Possible values = Any positive number.

Default value:

- DisplayWidth  = 1280
- DisplayHeight = 720

Note: The default value of this preference is not constant.

### DisplayResolution

Possible values are your GPU supported resolutions.

### DisplayId

The display to use for fullscreen.

Default value: nothing

### Disqualification

If enabled, scores will not be saved if specific modifiers (such as constant BPM) are used.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### EXTIOComPort

The COM port to use for the EXTIO lights driver.

Default value: COM1

### EasterEggs

Enables or disables easter eggs, if a theme is aware of and uses this preference.

Possible values are ``0`` or ``1``. 0 is ``"Off"`` and 1 is ``"On"``.

Default value: 1

### EditClearPromptThreshold

Possible values are ``-1``, ``10``, ``50``, ``100``, ``1000``, and ``1000000``.

Default value: 50

### EditRecordModeLeadIn

The amount of time, in seconds, before reaching the start of the recording section in the editor.

Default value: 1.000000

### EditorMemoryCardOsMountPoint

The mount point for the memory card system that the editor specifically uses.

Default value: nothing

### EditorNoteSkinP1 and EditorNoteSkinP2

The noteskin to use for the two players in the editor. P1 also affects the noteskin in the main editor.

Default value: default

### EditorShowBGChangesPlay

Enables background scripts to be previewed when playing back a song in the editor.

Possible values are ``0`` and ``1``. 0 is ``Hide`` and 1 is ``Show``.

Default value: 1

### EnableAttackSounds

Plays a sound every time an attack starts and ends. Not all themes have sounds for this, and this may not be desired if playing simfiles with a lot of scripted attacks.

Possible values are ``0`` and ``1``. 0 is ``No`` and 1 is ``Yes``.

Default value: 1

### EnableBeginnerHelperBackgrounds

When enabled, a dancing character on a pad will show up during Beginner charts.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### EnableMineHitSound

Plays an explosion sound if you hit a mine note.

Possible values are ``0`` or ``1``. 0 is ``No`` and 1 is ``Yes``.

Default value: 1

### EnableScoreboard

Shows an online score board. Only has an effect during networked rounds.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 1

### EventMode

Also known as "Free Mode"; if disabled, each game session is divided into a maximum number of stages (arcade-style).

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On (recommended)``.

Default value: 1

### ExtendedChineseGlyphs

**This preference is obsolete.**

Enables extended Chinese glyph support.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### ExtendedJapaneseGlyphs

**This preference is obsolete.**

Enables extended Japanese glyph support.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### ExtendedKoreanGlyphs

**This preference is obsolete.**

Enables extended Korean glyph support.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### EffectVolume

The volume used for sounds labeled as an effect. This is multiplied by the ``SoundVolume`` preference when Effects are played.

Possible values are ``Silent``, ``10%``, ``20%``, ``30%``, ``40%``, ``50%``, ``60%``, ``70%``, ``80%``, ``90%`` and ``100%``.

Default value: 0.500000

### FailOffForFirstStageEasy

When enabled, the first stage will have failing disabled when on Easy or Beginner.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### FailOffInBeginner

When enabled, Beginner charts will have failing disabled.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### FastLoad

Caches all songs available in your songs folder, meaning the next time you open the game it won't have to load them again. This is recommended to be ``0`` when creating your charts otherwise the game might not detect your changes.

Possible values are ``0`` or ``1``. 0 is "Off" and 1 is "On".

Default value: 1

### FastLoadAdditionalSongs

Caches all songs available in your additionalsongfolder path, meaning the next time you open the game it won't have to load them again. This is recommended to be ``0`` when creating your charts otherwise the game might not detect your changes. **Cached songs will always be saved on the game folder or AppData if the portable mode is disabled.**

Possible values are ``0`` or ``1``. 0 is "Off" and 1 is "On".

Default value: 1

### FastNoteRendering

In short, this makes the renderer stops doing z-axis corrections possibly making the performance better but notes might appear merged with another. This is recommended to be ``1`` when playing modfiles as those abuse its enabled behavior to make masking effects.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### ForceLogFlush

All logs are immediately written to disk ("Flushed") when logging is performed.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### ForceMipMaps

Forces mipmapping on all textures. Currently unused.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### FrameLimitPercent

How much the game clamps down on performance in terms of a percentage. Having ``0.000000`` as the value disables this feature.

Default value: 0.000000

### FullscreenIsBorderlessWindow

Enables borderless fullscreen, which makes the window takes up the size of the screen without changing the actual resolution of the screen.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 1

### GDDMRealToNew

Turns all GDDM "Real" charts into "New" charts.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### GetRankingName

Determine if the high score name entry screen is shown.

Possible values are ``Off``, ``On`` or ``Ranking Songs``.

Default value: On

### GlobalOffsetSeconds

The offset that gets added to every song's own offset, in seconds.

Default value: -0.008000

### HarshHotLifePenalty

When this is on and a player has a full life bar, the penalty when losing health is harsher than it otherwise is.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 1

### HiddenSongs

Some songs are meant to be only played courses or through roulette. Turn this off to display all songs regardless of the ``SELECTABLE`` setting of the simfile.

Possible values are ``0`` and ``1``. 0 is ``"Off"`` and 1 is ``"On"``.

Default value: 0

### HideIncompleteCourses

Hide courses that don't have all the songs it has listed available.

Possible values are ``0`` and ``1``. 0 is ``"Off"`` and 1 is ``"On"``.

Default value: 0

### HighResolutionTextures

Set if high resoltuion textures are used. Not all themes support this. ``Auto`` makes high resolution happen if the window's height is greather than 480 pixels. Unused by the engine as a whole, but still has an enum for it.

Possible values are ``Auto``, ``Force Off``, and ``Force On``.

Default value: Auto

### HighresScreenshotsBydefault

When on, pressing the screenshot button saves high-res png screenshots. Holding shift will result in low-res compressed jpgs being saved instead.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### IgnoredDialogs

Dialog types listed here won't pop up a dialog box (Not applicable in linux systems or systems running in fullscreen)

Possible values are ``FRAME_DIMENSIONS_WARNING`` (unused), ``MissingThemeElement``, ``JSON_PARSE_ERROR`` (unused), ``UpdateCheckConfirm`` (unused), ``UpdateCheck`` (unused), ``LUA_ERROR``, ``INVALID_GAME_COMMAND``, ``NOTESKIN_ERROR``, ``BROKEN_FILE_REFERENCE``, ``SPRITE_INVALID_FRAME``, ``COMMAND_DEFINED_TWICE``, ``INVALID_SCREEN`` and ``XML_PARSE_ERROR``.

Default value: nothing

### ImageCache

The type of image cache to use. Note that the current image cache system is considered **deprecated for now**.

Possible values are ``Off``, ``LowResPreload``, ``LowResLoadOnDemand`` and ``Full``.

Default value: "Off"

### InputBackgroundEvents

Allow joystick & controller input to be accepted regardless of the application focus.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### InputDebounceTime

How much time the input is known to bounce, in seconds. Use this if your input device doesn't stabilize inputs quickly.

Possible valures are ``0ms`` (0.0), ``10ms`` (0.01), ``20ms`` (0.02), ``30ms`` (0.03), ``40ms`` (0.04), ``50ms`` (0.05), ``60ms`` (0.06), ``70ms`` (0.07), ``80ms`` (0.08), ``90ms`` (0.09) and ``100ms`` (0.1).

Default value: 0.000000

### InputDrivers

The input drivers the game will use. If nothing is specified, the following defaults will be used:

Windows: ``Para,legacy,minisdl``

Mac: ``portmidi,SDL``

Linux: ``SDL``

The possible values are ``Rtio`` (Windows-only), ``legacy`` (Windows-only), ``SDL``, ``Reflex``, ``rtmidi``, ``Python23IO``, ``portmidi``, ``para``, ``minisdl`` and ``ps3ddr`` (alpha5-only)

Default value: nothing

### Interlaced

Force interlaced mode. Currently unused.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### JoystickDeadzone

Sets the joystick dead zone for the SDL input handler. Useful if inputs are firing off when doing nothing.

Default value: 3200

### JointPremium

A separate variant of the ``Premium`` preference meant for use on options menus. ``Off`` corresponds to the ``Double For 1 Credit`` option.

Possible values are ``Off`` and ``2 Players for 1 Credit``.

### Language

The language the game will display text in. Not all themes support all languages.

Possible values are ``de`` (German), ``en`` (English), ``fr`` (French), ``he`` (Hebrew), ``ja`` (Japanese), ``nl`` (Dutch), ``pl`` (Polish), ``pt-BR`` (Portuguese-Brazil), ``sk`` (Slovak), ``zh-Hans`` (Chinese Simplified) and ``zh-Hant`` (Chinese Traditional)

Default value: nothing

Note: The game will default to en (English).

### LastConnectedServer

The previously set server to connect to.

Default value: nothing

### LastSeenInputDevices

The previously seen input devices during the session.

Default value: nothing

### LastSeenVideoDriver

Identifies the video card last used with the game. Automatically generated.

Default value: nothing

### LastSeenMemory

The previously seen amount of memory the system had available. Automatically generated.

Default value: nothing

### LifeDifficulty

How harsh the life bar is. This is meant to be used in options menus and sets the value of ``LifeDifficultyScale``.

Possible values are ``1`` (1.6), ``2`` (1.4), ``3`` (1.2), ``4`` (1.0), ``5`` (0.8), ``6`` (0.6), and ``7`` (0.4).

Default value: 1.000000

### LifeDifficultyScale

The base life difficulty used. Going under 1.0 means smaller gains and larger losses.

Default value: 1.000000

### LightsAheadSeconds

How far ahead the lights should be from the current song, in seconds.

Default value: 0.500000

### LightsComPort

The COM port to use in the Win32 Serial lights driver.

Default value: COM54

### LightsDriver

The lights driver to use for cabinet and controller lights. If nothing is provided, ``SystemMessage,Export`` is used.

Possible values: ``Win32Serial`` (Windows), ``Win32Parallel`` (Windows), ``Win32Minimaid`` (Windows), ``PacDrive`` (Windows), ``SextetStreamToFile`` (All platforms), ``Satellite`` (All platforms), ``EXTIO`` (All Platforms), ``Export`` (All Platforms), ``SystemMessage`` (All platforms, requires ``DebugLights``), ``LinuxWeedTech`` (Linux), ``PIUIO_Leds`` (Linux), ``PIUIO`` (Linux), ``LinuxParallel`` (Linux), ``LinuxPacDrive`` (Linux), ``LinuxMinimaid`` (Linux), ``ITGIO`` (Linux)

Default value: nothing

### LightsFalloffSeconds

How long a cabinet light is on for, in seconds.

Default value: 0.100000

### LightsStepsDifficulty

If there is no dedicated ``lights`` chart, generate lighting patterns from the existing charts on the specified difficulty/difficulties.

Possible values are ``beginner``, ``easy``, ``medium``, ``hard``, ``challenge``, ``edit``, ``d7``, ``d8``, ``d9``, ``d10``, ``d11``, ``d12``, ``d13``, ``d14``, ``d15`` and ``selected`` (Uses the chart selected by the player)

Default value: hard, medium

### LockCourseDifficulties

When on, difficulties across multiple players are locked for courses.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 1

### LogCheckpoints

When on, internal code checkpoints are outputted to the logs.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### LogFPS

At 1 second intervals, the current FPS, average FPS, VPF, current memory usage, and delta clock data (if enabled) will be appended to the log file.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 1

### LogLevel

Determines the detail of the log files.

Possible values are ``0`` through ``5``, with 0 providing the most detail, and 5 providing the least detail.

Default value: 2

### LogSkips

**This preference is obsolete.**

Outputs detected song position skips to the logs.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### LogToDisk

Enabling this will write log files.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 1

### LongVerSongSeconds

Determines how long a song, in seconds, must be for it to be classified as "long" (which costs two stages outside of Event Mode).

Default value: 150.000000

### MarathonVerSongSeconds

Determines how long a song must be for it to be classified as a "marathon" (which costs three stages outside of Event Mode).

Default value: 300.000000

### MachineName

The display name to use for the machine profile.

Default value: nothing

### MaxHighScoresPerListForMachine

The maximum number of high scores to save for a song on the machine profile.

Possible values are ``1``, ``2``. ``3``, ``4``, ``5``, ``6``, ``7``, ``8``, ``9``, ``10``, ``11``, ``12``, ``13``, ``14``, ``15``, ``16``, ``17``, ``18``, ``19`` and ``20``.

Default value: 10

### MaxHighScoresPerListForPlayer

The maximum number of high scores to save for a song on a player's profile.

Possible values are ``1``, ``2``. ``3``, ``4``, ``5``, ``6``, ``7``, ``8``, ``9``, ``10``, ``11``, ``12``, ``13``, ``14``, ``15``, ``16``, ``17``, ``18``, ``19`` and ``20``.

Default value: 3

### MaxInputLatencySeconds

The amount of latency the input has, in seconds. Only affects the maximum step distance.

Default value: 0.000000

### MaxRegenComboAfterMiss

The maximum amount of combo needed to start gaining life after a miss.

Default value: 5

### MaxSongsInEditCourse

The maximum amount of edit charts allowed in a course. ``-1`` turns off the limit.

Default value: -1

### MaxTextureResolution

Defines the resolution at which the game will load/show textures, textures higher than the defined max resolution will have their resolution lowered. It's not recommended to go above 2048 while OutFox is still in Alpha until further notice. Try going down to 1024 if you want more performance as 2048 is still not much used.

Possible values are ``256``, ``512``, ``1024``, ``2048``, ``4096``, and ``8192``.

Default value: 1024

### MemoryCardDriver

The driver to use for reading external profiles.

Possible values are ``USB`` or ``Directory``.

Default value: USB

### MemoryCardOsMountPointP1

The system mount point to use for reading USB profile data from for P1.

Default value: nothing

### MemoryCardOsMountPointP2

The system mount point to use for reading USB profile data from for P2.

Default value: nothing

### MemoryCardPadmissEnabled

Allows saving scores in a format made for Padmiss.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default vlaue: 0

### MemoryCardProfileImportSubdirs

Default value: nothing

### MemoryCardProfileSubdir

The name of the subfolder used to store profile data on a USB device.

Default value: Project OutFox

### MemoryCardProfiles

Enables saving profiles to USB devices.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 1

### MemoryCardUsbBusP1

The bus to use for reading P1's USB profile from.

Defaut value: -1

### MemoryCardUsbBusP2

The bus to use for reading P2's USB profile from.

Defaut value: -1

### MemoryCardUsbLevelP1

The level to use for reading P1's USB profile from.

Defaut value: -1

### MemoryCardUsbLevelP2

The level to use for reading P2's USB profile from.

Defaut value: -1

### MemoryCardUsbPortP1

The port to use for reading P1's USB profile from.

Defaut value: -1

### MemoryCardUsbPortP2

The port to use for reading P2's USB profile from.

Defaut value: -1

### MemoryCards

Enables the memory card system, allowing USB profiles to be used.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Defaut value: 0

### MenuTimer

If enabled, a timer is used in gameplay menus. Usually used in arcade or event settings.

Possible values are ``0`` and ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### MercifulBeginner

Beginner difficulty charts get more lenient score & grade, and the W5 judgment wingow is larger.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### MercifulDrain

Losses in the life bar are scaled by the player's current life percentage.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### MercifulSuperMeter

Losses in the super meter are scaled by the player's life percentage.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 1

### MinPercentageForMachineCourseHighScore

The minimum course score required for a high score to be saved to the machine profile.

Default value: 0.000100

### MinPercentageForMachineSongHighScore

The minimum song score required for a high score to be saved to the machine profile.

Default value: 0.000100

### MinTNSToHideNotes

The minimum judgement window is needed for notes to disappear after hitting them.

Possible values are ``TNS_None``, ``TNS_HitMine``, ``TNS_AvoidMine``, ``TNS_CheckpointMiss``, ``TNS_Miss``, ``TNS_W5``, ``TNS_W4``, ``TNS_W3``, ``TNS_W2``, ``TNS_W1``, ``TNS_PRO_W5``, ``TNS_PRO_W4``, ``TNS_PRO_W3``, ``TNS_PRO_W2``, ``TNS_PRO_W1`` and ``TNS_CheckpointHit``.

Default value: W3

### Minimum1FullSongInCourses

Ensures that the first song in a course can be played in its' entirety.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### MonkeyInput

A deprecated input mode no longer used on Project OutFox. This is maintained for compatibility only.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### MoveRandomToEnd

Moves courses with random songs at the end of the list.

Possible values are ``0`` or ``1``. 0 is "No" and 1 is "Yes".

Default value: 0

### MovieColorDepth

The color depth for use for movie files.

Possible values are ``16`` or ``32``. 16 is ``16bit`` and 32 is ``32bit``.

Default value: 32

### MovieDrivers

The driver to use for viewing movie files.

Possible values are ``MiniFFMpeg``, ``ModernFFMpeg`` and ``Null``

Default value: nothing

### MusicWheelSwitchSpeed

How fast the music wheel can be scrolled.

Possible values are ``Slow`` (5), ``Normal`` (10), ``Fast`` (15), and ``Really fast`` (25).

Default value: 15

### MusicWheelUsesSections

The music wheel shows sections.

Possible values are "Never", "Always" and "Title Only"

Default value: Always

### MuteActions

Mutes sound effects in menus.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### NetworkStartOffset

An additional start offset, in seconds, to be used when in Gameplay online.

Default value: 3.000000

### NeverBoostAppPriority

When set to on, the game's priority is never boosted, even when focused.

Possible values are ``0`` or ``1``. 0 is "Off" and 1 is "On".

Default value: 0

### NeverCacheList

A list of song groups to never create cache for.

Default value: nothing

### NumBackgrounds

The number of random backgrounds to use in gameplay.

Possible values are ``1``, ``5``, ``10``, ``15``, and ``20``.

Default value: 10

### NotePathWidth

**This preference is obsolete.**

Altered how thick the notepath is.

Possible values are ``Thin`` (1000), ``500``, ``250``, ``150``, ``100``, and ``Fat`` (50).

### OnlyDedicatedMenuButtons

When enabled, only the menu buttons can be used to navigate the menus.

Possible values ``Use Gameplay Buttons`` (0) and ``Only Dedicated Buttons`` (1).

Default value: 0

### OnlyPreferredDifficulties

All charts shown in the music wheel match the chosen style and difficulty.

Possible values are ``0`` or ``1``. 0 is "Off" and 1 is "On".

Default value: 0

### OITGStyleLights

When enabled, lights charts act like they would in OpenITG.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### PAL

Forces PAL mode. Appears to be unused.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### PacDriveLightOrdering

What lights order to send to the PacDrive.

Possible values are ``minimaid``, ``lumenar`` and ``openitg``.

Default value: minimaid

### PadStickSeconds

How long, in seconds, the pad can stick for.

Default value: 0.000000

### PercentageScoring

If enabled and themes are aware, scores will be expressed as percentages.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 1

### PreCacheAllWheelSorts

Precaches the list for all sorting types.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### PreferredSortUsesGroups

Makes the preferred sort show groups. Only affects Roulette sort.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 1

### Premium

Pay Mode-specific setting, allowing styles requiring two controllers (such as Double) to be played without requiring 2 credits.

Possible values are ``DoubleFor1Credit``, ``2PlayersFor1Credit`` and ``1PBothAtOnceFor1Credit``,

Default value: DoubleFor1Credit

### ProductID

Used to track software versions for HighScores. Not the same as what the lua function ``ProductID`` provides.

Default value: 1

### ProfileCourseEdits

Load course edits from profiles.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 1

### ProfileDataCompress

Compresses the profile's Stats.xml into Stats.xml.gz.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### ProfileStepEdits

Load edit steps from profiles.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### ProgressiveLifebar

Makes every consecutive miss drain more life. Disabled in Extra Stage and the How To Play modes.

Possible values are ``0``(Off) or ``1``, ``2``, ``3``, ``4``, ``5``, ``6``, ``7``, and ``8``.

Default value: 0

### ProgressiveNonstopLifebar

When enabled, The lifebar gets more difficult based on how many stages in a player is. Affects the NonStop play mode.

Possible values are ``0``(Off) or ``1``, ``2``, ``3``, ``4``, ``5``, ``6``, ``7``, ``8``, and ``9``(Insanity).

Default value: 0

### ProgressiveStageLifebar

When enabled, The lifebar gets more difficult based on how many stages in a player is. Affects the Regular play mode.

Possible values are ``0``(Off) or ``1``, ``2``, ``3``, ``4``, ``5``, ``6``, ``7``, ``8``, and ``9``(Insanity).

Default value: 0

### PruneFonts

Prunes any unused fonts. Currently unused.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 1

### PseudoLocalize

Show different characters with accents to help test the display of those.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### Python23IO_HDXB_DEV_ID

The device ID of the HDXB device.

Default value: 3

### Python23IO_HDXB_PORT

What port to use for COM4.

Default value: nothing

### Python23IO_Mode

The IO mode to use for the Pyton board.

Possible values are ``HDP3IO``, ``HDP2IO``, ``SDP2IO``, ``SDP3IOHDXB``, ``SDP3IO`` and ``none`.`

Default value: SDP3IO

### Python23IO_P2IO_EXTIO

Specifies if the Python board has EXTIO.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 1

### PickExtraStage

Allows one to pick what to play for the Extra Stage. Currently unused.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### QuirksMode

Allows legacy loading of .xml files.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### RageSoundSampleCountClamp

The maximum amount of samples the audio driver should expect to avoid driver skipping. Used only in the generic software audio driver.

Default value: 0

### RandomBackgroundMode

What is used when random backgrounds are enabled in gameplay. ``Animations`` reads from the game's BGAnimations folder, while ``RandomMovies`` reads from the game's RandomMovies folder.

Possible values are ``"Off"``, ``"Animations"`` and ``Random Movies``

Default value: RandomMovies

### RateModsAffectFGChanges

When active, actor tweens and modifier approaching in gameplay are affected by the music rate.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 1

### RefreshRate

The refresh rate to use when in VSync.

Possible values are ``Default`` (0), ``60``, ``70``, ``72``, ``75``, ``90``, ``100``, ``120``, ``144``, ``165``, ``200``, and ``240``.

Default value: 0

### RegenComboAfterMiss

How much combo is needed to start gaining life after a miss.

Default value: 5

### ReverseMouseButtons

Flip the left and right button inputs. Only used in the SDL input handler.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### SatelliteComPort

The COM device to use for the Satellite lights driver.

Default value: nothing

### ScoreBroadcastURL

The URL to send POST requests to upon finishing a song. Data sent there includes machine guid, song path, the md5 of the simfile, title and author of the song, player guid, if it's on event mode, difficulty, chart type, score, percentage, grade and number of players.

Default value: nothing

### SextetStreamOutputFilename

The file to use as the output pipe for the SextetStream lights driver.

Default value: \\.\pipe\StepMania-Lights-SextetStream

### ShowBanners

Show the song's banner on the music wheel screen.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 1

### ShowBeginnerHelper

Shows a helper if a beginner difficulty chart is currently playing.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### ShowCaution

Displays a caution screen before gameplay begins.

Possible values are ``0`` or ``1``. 0 is "Skip" and 1 is "Show".

Default value: 1

### ShowDancingCharacters

Determines if a dancing character shows up in gameplay and how the character is chosen.

Possible values are ``Default to Off``, ``Default to Random``, and ``Select``.

Default value: Random

### ShowDanger

If the theme is aware, this can toggle visual effects used to signify low health.

Possible values are ``0`` or ``1``. 0 is "Hide" and 1 is "Show".

Default value: 1

### ShowDeltaClock

Adds additional information about **frametime** to the top right of the screen. Those values can be used to view how much time your script (from Themes or modfiles) adds to the frametime, anything above 16ms is very slow and calls for optimization, the more consistant those values are, the better the game will feel.

Possible values are ``0`` or ``1``. 0 is "Hide" and 1 is "Show".

Default value: 0

### ShowInstructions

If the theme is aware, this can toggle additional tutorial screens shown in-game.

Possible values are ``0`` or ``1``. 0 is "Skip" and 1 is "Show".

Default value: 1

### ShowLoadingWindow

Toggles the splash screen.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 1

### ShowLogOutput

On Windows, this will open a ``cmd.exe`` window to display log output when the game is running.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### ShowLyrics

Shows lyrics from a .lrc file in-game if present.

Possible values are ``0`` and ``1``. 0 is "Hide" and 1 is "Show".

Default value: 1

### ShowMasks

Shows actors set up to be masks when they would otherwise be invisible.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### ShowMeasureLinesInEditorPlayback

Shows chart measure lines & beat bars in the editor's playback mode if on.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 1

### ShowMouseCursor

Determines whether the OS mouse cursor will disappear if hovered over the game window.

Possible values: ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``. Changing this in-game might require a game restart.

Default value: 1

### ShowNativeLanguage

Toggles whether song titles are displayed in their native language (1), or a transliterated or translated form as determined in their metadata (0)

Possible values are ``0`` or ``1``. 0 is "Romanization" and 1 is "Native Language".

Default value: 1

### ShowPlayerModifiersInEditor

Shows a list of currently active modifiers while using preview mode.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### ShowSongOptions

Toggles whether the game will ask players if they wish to view the Song Options menu when exiting the player options menu, whether the screen will always be displayed, or if song options will not be accessible.

Possible values are ``Ask``, ``Hide`` and ``Show``

Default value: Ask

### ShowStats

Shows an overlay in the top corner of the screen with information such as frame rate and memory usage.

Possible values are ``0`` and ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0 (1 if in debug mode)

### ShowThemeErrors

If enabled, Lua errors will be displayed in an overlay at the top of the screen.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### ShowTwoPlayersInEditor

Show two players in the editor's playback mode. Useful for testing modfiles that make use of two players.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### SignProfileData

Sign any profiles that are loaded. May result in unusable profiles if the signing isn't set up properly.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### SmartAutoKbx

Allow the game to autogen kbx mode charts from all other modes.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 1

### SmoothLines

LineStrips are drawn via GPU functions instead of quads if this is turned on. Note that the thickness of the line depends on the GPU being used.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### SongBackgrounds

Show the backround of the song being played.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 1

### SongBroadcastURL

The URL to send POST requests to when playing a song. Data sent there includes machine guid, song path, the md5 of the ssc, the transliterated song title, song artist and if it's in event mode.

Default value: nothing

### SongMinTNSToHideNotes

A version of ``MinTNSToHideNotes`` meant to be used in the song-level Preferences.ini.

Default value: nothing

### SongNoteskins

Which NoteSkins to preload when playing a song. Usually used in the song-level Preferences.ini.

Default value: nothing

### SongsPerPlay

A number of songs per session (excluding extra stages) if ``EventMode`` is disabled.

Possible values are ``1``, ``2``, ``3``, ``4``, and ``5``.

Default value: 3

### SongsPerPlayOrEvent

Meant to be used in an options screen where it would set ``SongsPerPlay`` on the first five choices, and turn on ``EventMode`` for the last choice.

Possible values are ``1``, ``2``, ``3``, ``4``, ``5``, and ``Event``.

### SoundDevice

The sound device to try to use, which is passed into the audio driver. If not specified, the audio driver will grab a device on its' own.

Default value: nothing

### SoundDrivers

What sound driver Project OutFox will use. If not specified, the game will attempt to auto-detect which driver to use.

Possible values are ``DirectSound-sw`` (Windows), ``WaveOut`` (Windows), ``ALSA-sw`` (Linux), ``alsa`` (Linux), ``Pulse`` (Linux), ``OSS`` (Linux), ``JACK`` (Linux), ``AudioUnit`` (MacOS) and ``Null``.

Default value: nothing

### SoundLibSampleRateMode

What converter libresamplerate uses when resampling audio.

Possible values are ``0`` (Sinc, Best Quality), ``1`` (Sinc, Medium Quality), ``2`` (Sinc, Fastest), ``3`` (Zero Order Hold), ``4`` (Linear).

Default value: 2

### SoundPreferredSampleRate

What sample rate the audio drivers will try to use by default.

Default value: 44100

### SoundPreload16bit

Make the preload system use 16-bit buffers internally.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 1

### SoundPreloadMaxSamples

If an audio file has more samples than this amount, the Preload system won't bother preloading it.

Default value: 1048576

### SoundVolume

System sound volume.

Possible values are ``Silent``, ``10%``, ``20%``, ``30%``, ``40%``, ``50%``, ``60%``, ``70%``, ``80%``, ``90%`` and ``100%``.

Default value: 0.500000

### SoundVolumeAttract

Volume used in arcade attract mode. (Usually used to catch a person's interest in an arcade setting)

Possible values are ``Silent``, ``10%``, ``20%``, ``30%``, ``40%``, ``50%``, ``60%``, ``70%``, ``80%``, ``90%`` and ``100%``.

Default value: 0.500000

### SoundWriteAhead

How many frames the audio driver should read ahead. Used in the ALSA, ALSA-sw and DSound drivers.

Default value: 4096

### StretchBackgrounds

Stretch the song's background image. Used only in a few theme's ScreenGameplay in transition. Unused otherwise.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### StreamerMode

Removes the framerate cap when the window is not focused.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### SubSortByNumSteps

When enabled, the number of taps and holds in a chart are also taken into account when sorting by chart type and meter.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### SuperMeterPercentChange

Determines how much gets added to the Rave Mode's "Super Meter" (Charges attacks on the opponent).

Default values:

- SuperMeterPercentChangeCheckpointHit  =  0.050000
- SuperMeterPercentChangeCheckpointMiss = -0.200000
- SuperMeterPercentChangeHeld           =  0.040000
- SuperMeterPercentChangeHitMine        = -0.400000
- SuperMeterPercentChangeLetGo          = -0.200000
- SuperMeterPercentChangeMiss           = -0.200000
- SuperMeterPercentChangeMissedHold     = -0.000000
- SuperMeterPercentChangeProW1          =  0.080000
- SuperMeterPercentChangeProW2          =  0.100000
- SuperMeterPercentChangeProW3          =  0.120000
- SuperMeterPercentChangeProW4          =  0.140000
- SuperMeterPercentChangeProW5          =  0.160000
- SuperMeterPercentChangeW1             =  0.050000
- SuperMeterPercentChangeW2             =  0.040000
- SuperMeterPercentChangeW3             =  0.020000
- SuperMeterPercentChangeW4             =  0.000000
- SuperMeterPercentChangeW5             =  0.000000

### TestInitialScreen

Sets the first screen to go to upon opening the game. Useful for working on themes. If empty or invalid, the game uses the current theme's ``InitialScreen`` metric.

Default value: nothing

### TextureColorDepth

Sets the color depth of textures. Most current-day systems should work fine with ``32``.

Possible values are ``16`` and ``32``. 16 is ``16bit`` and 32 is ``32bit``.

Default value: 32

### Theme

Sets what theme is used. Can be Game-specific. Note that if a theme starts with `_`, it cannot be used as a normal theme and will default back to ``default``.

Built-in themes: ``default``, ``home``

Default value: _fallback

### ThreadedInput

Creates a thread for the input driver if enabled. Affects the Windows ``legacy`` and ``Pump`` input drivers.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 1

### ThreadedMovieDecode

Enabled threaded movie decoding. Currently unused.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 1

### ThreeKeyNavigation

Determines if navigation is done with three buttons (Left/Right/Start) or five buttons (Left/Right/Up/Down/Start).

Possible values are ``0`` or ``1``. 0 is ``"Five Key Menu"`` and 1 is ``"Three Key Menu"``.

Default value: 0

### TimeMeterSecondsChange

These settings define how much time (in seconds) one gains or loses based on judgment. This affects the Time-type lifebar.

Default values:

- TimeMeterSecondsChangeCheckpointHit  =  0.000000
- TimeMeterSecondsChangeCheckpointMiss = -0.000000
- TimeMeterSecondsChangeHeld           =  0.000000
- TimeMeterSecondsChangeHitMine        = -2.000000
- TimeMeterSecondsChangeLetGo          = -1.000000
- TimeMeterSecondsChangeMiss           = -4.000000
- TimeMeterSecondsChangeMissedHold     = -0.000000
- TimeMeterSecondsChangeProW1          =  0.400000
- TimeMeterSecondsChangeProW2          =  0.500000
- TimeMeterSecondsChangeProW3          =  0.600000
- TimeMeterSecondsChangeProW4          =  0.800000
- TimeMeterSecondsChangeProW5          =  1.000000
- TimeMeterSecondsChangeW1             =  0.200000
- TimeMeterSecondsChangeW2             =  0.000000
- TimeMeterSecondsChangeW3             = -0.500000
- TimeMeterSecondsChangeW4             = -1.000000
- TimeMeterSecondsChangeW5             = -2.000000

### TimingWindowAdd
Adds a static amount, in seconds, to all judgment windows. ITG uses ``0.0015``.

Default value: 0.000000

### TimingWindowJump

How far apart simultaneous steps can be to be counted as a jump, in seconds. Only used for counting the calories used during a song.

Default value: 0.250000

### TimingWindowScale

Applies a multiplier on the judgment windows. A higher number means tighter judgment windows.

Possible values are ``1`` (1.500000), ``2`` (1.330000), ``3`` (1.160000), ``4`` (1.000000), ``5`` (0.840000), ``6`` (0.660000), ``7`` (0.500000), ``8`` (0.330000), and ``Justice`` (0.200000).

Default value: 1.000000 (``4``)

### TimingWindowSeconds

These settings define the timing windows used in themes that do not use the Project OutFox LuaTiming system. These settings are provided for backwards compatibility purposes.

Default values:

- TimingWindowSecondsAttack     = 0.135000
- TimingWindowSecondsCheckpoint = 0.166400
- TimingWindowSecondsHold       = 0.250000
- TimingWindowSecondsMine       = 0.090000
- TimingWindowSecondsProW1      = 0.000000
- TimingWindowSecondsProW2      = 0.000000
- TimingWindowSecondsProW3      = 0.000000
- TimingWindowSecondsProW4      = 0.000000
- TimingWindowSecondsProW5      = 0.000000
- TimingWindowSecondsRoll       = 0.500000
- TimingWindowSecondsW1         = 0.022500
- TimingWindowSecondsW2         = 0.045000
- TimingWindowSecondsW3         = 0.090000
- TimingWindowSecondsW4         = 0.135000
- TimingWindowSecondsW5         = 0.180000

### TrilinearFiltering

Turns on trilinear filtering in the ``opengl`` renderer. This is unused in the ``glad`` renderer.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### TugMeterPercentChange

These settings are used for the lifebar in battle mode.

Default values:

- TugMeterPercentChangeCheckpointHit  =  0.002000
- TugMeterPercentChangeCheckpointMiss = -0.002000
- TugMeterPercentChangeHeld           =  0.008000
- TugMeterPercentChangeHitMine        = -0.040000
- TugMeterPercentChangeLetGo          = -0.020000
- TugMeterPercentChangeMiss           = -0.020000
- TugMeterPercentChangeMissedHold     =  0.000000
- TugMeterPercentChangeProW1          =  0.012000
- TugMeterPercentChangeProW2          =  0.014000
- TugMeterPercentChangeProW3          =  0.016000
- TugMeterPercentChangeProW4          =  0.018000
- TugMeterPercentChangeProW5          =  0.020000
- TugMeterPercentChangeW1             =  0.010000
- TugMeterPercentChangeW2             =  0.008000
- TugMeterPercentChangeW3             =  0.004000
- TugMeterPercentChangeW4             =  0.000000
- TugMeterPercentChangeW5             = -0.010000

### TurnOffWMCompositor

Disable the current Window Manager's compositing on linux.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### UpdateCheckEnable

When enabled, the game checks for online updates. Currently unused since early 2012.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 1

### UseEGLonLinux

When enabled, SDL attempts to use EGL for the OpenGL context. Currently unused.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### UseOldJoystickMapping

Toggles between HIDAPI and XInput modes. Useful for when a controller doesn't work in one of the modes.

Possible values are ``0`` or ``1``. 0 is ``"XInput"`` and 1 is ``"HIDAPI"``.

Default value: 1

### UsePointsandBlending

Enable or disable the use of points between each section of an ActorMultiVertex or NotePath and use blending modes into it.

Possible values are ``0`` or ``1``. 0 is ``No`` and 1 is ``Yes``.

Default value: 1

### UseSongNameOnGameWindow

When enabled, the title of the song currently being edited will show on the game window's title.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### UseUnlockSystem

Enables the metrics.ini-driven unlock system. This affects courses, selectable mods, songs and charts.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### UsingArcadePads

Tells the SDL input handler that arcade dance pads are in use, and to act accordingly based on what input system is used.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### VideoRenderers

Determines the renderer used by Project OutFox.

Possible values are ``opengl`` (Legacy OpenGL), ``glad`` (Modern OpenGL) and ``null`` (Null renderer)

Default value: opengl

### VisualDelaySeconds

Sets how much display lag to compensate for, in seconds. In-game, the choices are represented as ``-5`` to ``+5``

Possible choices are ``-0.125``, ``-0.100``, ``-0.075``, ``-0.050``, ``-0.025``, ``0.000``, ``0.025``, ``0.050``, ``0.075``, ``0.100`` and ``0.125``

Default value: 0.000000

### VideoUpscaleFilter

Determines what upscale filter FFMPEG uses when playing videos.

Possible values are ``0`` (None, fastest), ``1`` (Fast bilinear), ``2`` (Bilinear), ``3`` (Bicubic), ``4`` (X Sharpens + Contrast, ``5`` (Point), ``6`` (Area), ``7`` (Bicublin, recommended), ``8`` (Gaussian), ``9`` (Sinc), ``10`` (Lanczos) and ``11`` (Spline).

Default value: 0

### Vsync

Enables vertical sync (Vsync), which limits the framerate to the display's refresh rate.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 1

### WideScreen16_10

Meant to be used in an options screen as a simple replacement for the `DisplayAspectRatio` preference.

This is used for switching between 4:3 and 16:10.

Possible values are ``On`` and ``Off``.

When ``On``, `DisplayAspectRatio` becomes ``1.600000`` (16:10). ``Off`` sets it to ``1.333333`` (4:3) instead.


### WideScreen16_9

Meant to be used in an options screen as a simple replacement for the `DisplayAspectRatio` preference.

This is used for switching between 4:3 and 16:9.

Possible values are ``On`` and ``Off``.

When ``On``, `DisplayAspectRatio` becomes ``1.777778`` (16:9). ``Off`` sets it to ``1.333333`` (4:3) instead.

### Windowed

Enables windowed mode.

Possible values are ``0`` or ``1``. 0 is ``Full Screen`` and 1 is ``Windowed``.

Default value: 1

_Written and Maintained by Moru Zerinho6 & MTK_
