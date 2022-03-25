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

Default values: nothing

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

### AllowMultiTexture

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 1

### AllowSongDeletion

Allows the ability to delete a song on the Music Wheel by performing the following combination on the selected song:

`CTRL + Backspace`

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### AllowUnacceleratedRenderer

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### AllowW1

Enables the W1 judgement ("Flawless", "Marevelous", "Fantastic" depending on the theme) in regular gameplay. 

Possible values are ``"Never"``, ``"Courses Only"`` and ``"Always"``.

Default value: everywhere

### AnisotropicFiltering

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### Announcer

Specifies the name of the current announcer.

Default value: nothing

### ArcadeOptionsNavigation

Possible values are ``0`` and ``1``. 0 is ``StepMania Style`` and 1 is ``Arcade Style``.

Default value: 0

### AttractSoundFrequency

Determines how often sound is enabled during the attract mode loop in arcade mode.

Possible values are ``Never``, ``Always``, ``2 Times``, ``3 Times``, ``4 Times``, and ``5 Times``.

Default value: EveryTime

### AutoJoin

### AutoMapOnJoyChange

Possible values are ``0`` or ``1``. 0 is "Off" and 1 is "On (recommended)".

Default value: 1

### AutoPlay

Possible values are ``Off``, ``On`` and ``CPU-Controlled``.

Default value: "Human"

### AutogenGroupCourses

Automatically generates nonstop courses based on installed songs.

Possible values are ``0`` or ``1``. 0 is "Off" and 1 is "On".

Default value: 1

### AutogenSteps

Allows charts to be generated for other [game types](/user-guide/config/game-types/) and styles that a song does not have its charts for.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### BGBrightness

Sets the brightness of background visuals in gameplay.

Possible values are ``0%``, ``10%``, ``20%``, ``30%``, ``40%``, ``50%``, ``60%``, ``70%``, ``80%``, ``90%`` and ``100%``.

### BGBrightnessNoZero

Possible values are ``0%``, ``10%``, ``20%``, ``30%``, ``40%``, ``50%``, ``60%``, ``70%``, ``80%``, ``90%`` and ``100%``.

### BGBrightnessOrStatic

Possible values are ``Disabled``, ``25% Bright``, ``50% Bright`` and ``75% Bright``.

### BackUpAllSongSaves

### BackgroundFitMode

Determines scaling/cropping of song backgrounds based on resolution and aspect ratio.

Possible values are ``CoverDistort``, ``CoverPreserve``, ``FitInside``, ``FitInsideAvoidLetter`` and ``FitInsideAvoidPillar``

### BlinkGameplayButtonLightsOnNote

### BothAtOnce

This preference controls BothAtOnce, an input mode that mirrors input across both players. This preference is 

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### BreakComboToGetItem

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

Possible values are ``Pay`` and ``Free Play``.

### CoinRecoveryExpirationHours

### CoinsPerCredit

Specifies the number of coins that must be inserted for each credit.

Possible values are ``1``, ``2``, ``3``, ``4``, ``5``, ``6``, ``7``, ``8``, ``9``, ``10``, ``11``, ``12``, ``13``, ``14``, ``15`` and ``16``.

Default value: 1

### ComboContinuesBetweenSongs

If enabled, the player's combo will carry over between songs rather than start from 0.

Possible values are ``0`` or ``1``. 0 is ``Of`` and 1 is ``On``.

Default value: 0

### ConstantUpdateDeltaSeconds

### Cookie

~~Cookies are delicious delicacies.~~

### CourseSortOrder

Possible values are "Num Songs", "Average Feet", "Total Feet" and "Ranking"

### CoursesToShowRanking

Default value: nothing

### CurrentGame

Determines the current [game types](/user-guide/config/game-types/).

Default value: nothing

### CustomSongsEnable

If set to 1, players may load their songs from a folder in their profile on a USB media (similar to the "r21" patch from _In the Groove 2_).

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### CustomSongsLoadTimeout

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

### DebounceCoinInputTime

Default value: 0.000000

### DebugLights

Displays a debug overlay for lights outputs.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### DefaultFailType

Possible values are ``Immediate``, ``ImmediateContinue``, ``EndOfSong`` and ``Off``.

### DefaultLocalProfileIDP1

### DefaultLocalProfileIDP2

### DefaultModifiers

Comma-separated list of modifiers used by players with no profile, or a new profile with no personal settings.

Default value: nothing

### DefaultRecordLength

### DefaultTheme

Sets the theme that will be loaded as a backup if the current theme cannot be loaded. If ``theme`` cannot also be found, then it will look back for ``"default"`` as the theme to load.

Default value: "default"

### DelayedBack

If enabled, you must hold the back button for 0.5 seconds to exit gameplay.

Possible values are ``0`` or ``1``. 0 is ``"Instant"`` and 1 is ``"Hold"``.

Default value: 1

### DelayedCreditsReconcile

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0


### DelayedModelDelete

Possible values are ``0`` and ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### DelayedScreenLoad

### DelayedTextureDelete

Possible values are ``0`` and ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### DisableScreenSaver

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 1

### DisableUploadDir

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### DisabledSongs

Defines songs that will be disabled (by not making them visible or selectable) from the selection.
Formatting for this follows the structure of _[folder](/user-guide/config/folders)._and must be a path to the song.

```ìni
DisabledSongs=MyGroup/MySong,MyGroup2/MyOtherSong
```

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

- DisplayWidth  = 854
- DisplayHeight = 480

### DisplayResolution

Possible values are your GPU supported resolutions.
### DisplayId

Default value: nothing

### Disqualification

If enabled, scores will not be saved if specific modifiers (such as constant BPM) are used.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### EXTIOComPort

### EasterEggs

Enables or disables easter eggs, if a theme is aware of and uses this preference.

Possible values are ``0`` or ``1``. 0 is ``"Off"`` and 1 is ``"On"``.

Default value: 0

### EditClearPromptThreshold

Possible values are ``-1``, ``10``, ``50``, ``100``, ``1000``, and ``1000000``.

Default value: 50

### EditRecordModeLeadIn

Default value: 1.000000

### EditorMemoryCardOsMountPoint

### EditorNoteSkinP1 and EditorNoteSkinP2

### EditorShowBGChangesPlay

Enables background scripts to be previewed when playing back a song in the editor.

Possible values are ``0`` and ``1``. 0 is ``Hide`` and 1 is ``Show``.

### EnableAttackSounds

Possible values are ``0`` and ``1``. 0 is ``No`` and 1 is ``Yes``.
### EnableBeginnerHelperBackgrounds

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### EnableMineHitSound

Plays an explosion sound if you hit a mine note.

Possible values are ``0`` or ``1``. 0 is ``No`` and 1 is ``Yes``.

### EnableScoreboard

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 1

### EventMode

Also known as "Free Mode"; if disabled, each game session is divided into a maximum number of stages (arcade-style).

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On (recommended)``.

Default value: 1

### ExtendedChineseGlyphs

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### ExtendedJapaneseGlyphs

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### ExtendedKoreanGlyphs

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### EffectVolume

Possible values are ``Silent``, ``10%``, ``20%``, ``30%``, ``40%``, ``50%``, ``60%``, ``70%``, ``80%``, ``90%`` and ``100%``.

### FailOffForFirstStageEasy

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### FailOffInBeginner

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

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### ForceMipMaps

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### FrameLimitPercent

### FullscreenIsBorderlessWindow

Enables borderless fullscreen.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 1

### GetRankingName

Possible values are ``Off``, ``On``, ``Ranking Songs``.

### GlobalOffsetSeconds

Default value: -0.008

### HarshHotLifePenalty

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 1

### HiddenSongs

Possible values are ``0`` and ``1``. 0 is ``"Off"`` and 1 is ``"On"``.

Default value: 0

### HideIncompleteCourses

### HighResolutionTextures

Possible values are ``Auto``, ``Force Off``, and ``Force On``.

Default value: Auto

### HighresScreenshotsBydefault

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### IgnoredDialogs

### ImageCache

Default value: "Off"

### InputBackgroundEvents

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### InputDebounceTime

Possible valures are ``0ms``, ``10ms``, ``20ms``, ``30ms``, ``40ms``, ``50ms``, ``60ms``, ``70ms``, ``80ms``, ``90ms`` and ``100ms``.

### InputDrivers

### Interlaced

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### JointPremium

Possible values are ``Off`` and ``2 Players for 1 Credit``.

### Language

Default value: nothing

### LastConnectedServer


### LastSeenInputDevices

### LastSeenVideoDriver

Identifies the video card last used with the game. Automatically generated.

Default value: nothing

### LastSeenMemory

Automatically generated.

### LifeDifficulty

Possible values are ``1``, ``2``, ``3``, ``4``, ``5``, ``6``, and ``7``.

### LifeDifficultyScale

Default value: 1.000000

### LightsAheadSeconds

### LightsComPort

### LightsDriver

### LightsFalloffSeconds

### LightsStepsDifficulty

If there is no dedicated ``lights`` chart, generate lighting patterns from the existing charts on the specified difficul(ties).

Default value: "hard, medium"

### LockCourseDifficulties

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 1

### LogCheckpoints

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### LogFPS

At intervals, the current FPS and average FPS will be appended to the log file.

### LogSkips

**This preference is obsolete.**

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### LogToDisk

Enabling this will write log files.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 1

### LongVerSongSeconds

Determines how long a song must be for it to be classified as "long" (which costs two stages outside of Event Mode).

### MarathonVerSongSeconds

Determines how long a song must be for it to be classified as a "marathon" (which costs three stages outside of Event Mode).

### MachineName

Default value: nothing

### MaxHighScoresPerListForMachine

Possible values are ``1``, ``2``. ``3``, ``4``, ``5``, ``6``, ``7``, ``8``, ``9``, ``10``, ``11``, ``12``, ``13``, ``14``, ``15``, ``16``, ``17``, ``18``, ``19`` and ``20``.

Default value: 10

### MaxHighScoresPerListForPlayer

Possible values are ``1``, ``2``. ``3``, ``4``, ``5``, ``6``, ``7``, ``8``, ``9``, ``10``, ``11``, ``12``, ``13``, ``14``, ``15``, ``16``, ``17``, ``18``, ``19`` and ``20``.

Default value: 3

### MaxInputLatencySeconds

### MaxRegenComboAfterMiss

Default value: 5

### MaxSongsInEditCourse

### MaxTextureResolution

Defines the resolution at which the game will load/show textures, textures higher than the defined max resolution will have their resolution lowered. It's not recommended to go above 2048 while OutFox is still in Alpha until further notice. Try going down to 1024 if you want more performance as 2048 is still not much used.

Possible values are ``256``, ``512``, ``1024``, ``2048``, ``4096``, and ``8192``.

Default value: 2048

### MemoryCardDriver

### MemoryCardOsMountPoint

### MemoryCardOsMountPoint

### MemoryCardPadmissEnabled

### MemoryCardProfileImportSubdirs

### MemoryCardProfileSubdir

The name of the subfolder used to store profile data on a USB device.

### MemoryCardProfiles

### MemoryCardUsbBusP1

### MemoryCardUsbBusP2

### MemoryCardUsbLevelP1

### MemoryCardUsbLevelP2

### MemoryCardUsbPortP1

### MemoryCardUsbPortP2

### MemoryCards

### MenuTimer

If enabled, a timer is used in gameplay menus. Usually used in arcade or event settings.

Possible values are ``0`` and ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### MercifulBeginner

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### MercifulDrain

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### MercifulSuperMeter

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 1

### MinPercentageForMachineCourseHighScore

Default value: 0.0001

### MinPercentageForMachineSongHighScore

Default value: 0.0001

### MinTNSToHideNotes

The minimum judgement window is needed for notes to disappear after hitting them.

Possible values are ``TNS_None``, ``TNS_HitMine``, ``TNS_AvoidMine``, ``TNS_CheckpointMiss``, ``TNS_Miss``, ``TNS_W5``, ``TNS_W4``, ``TNS_W3``, ``TNS_W2``, ``TNS_W1``, ``TNS_PRO_W5``, ``TNS_PRO_W4``, ``TNS_PRO_W3``, ``TNS_PRO_W2``, ``TNS_PRO_W1`` and ``TNS_CheckpointHit``.

Default value: TNS_W3

### Minimum1FullSongInCourses

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### MonkeyInput

A deprecated input mode no longer used on Project OutFox. This is maintained for compatibility only.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### MoveRandomToEnd

Possible values are ``0`` or ``1``. 0 is "No" and 1 is "Yes".

Default value: 0
### MovieColorDepth

Possible values are ``16`` or ``32``. 16 is ``16bit`` and 32 is ``32bit``.

Default value: 32

### MovieDrivers

### MusicWheelSwitchSpeed

Possible values are ``Slow``, ``Normal``, ``Fast``, and ``Really fast``.

Default value: 15

### MusicWheelUsesSections

Possible values are "Never", "Always" and "Title Only"

Default value: Always

### MuteActions

Mutes sound effects in menus.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### NetworkStartOffset

### NeverBoostAppPriority

### NeverCacheList

Default value: nothing

### NumBackgrounds

Possible values are ``1``, ``5``, ``10``, ``15``, and ``20``.

Default value: 10

### NotePathWidth

Possible values are ``Thin``, ``500``, ``250``, ``150``, ``100``, and ``Fat``.

### OnlyDedicatedMenuButtons

Possible values ``Use Gameplay Buttons`` and ``Only Dedicated Buttons``.

Default value: 0

### OnlyPreferredDifficulties

Possible values are ``0`` or ``1``. 0 is "Off" and 1 is "On".

Default value: 0

### OITGStyleLights

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### PAL

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### PacDriveLightOrdering

### PadStickSeconds

Default value: 0.000000

### PercentageScoring

If enabled and themes are aware, scores will be expressed as percentages.

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 1

### PreCacheAllWheelSorts

### PreferredSortUsesGroups

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 1

### Premium

Pay Mode-specific setting, allowing styles requiring two controllers (such as Double) to be played without requiring 2 credits.

Default value: DoubleFor1Credit

### ProductID

Default value: 1

### ProfileCourseEdits

### ProfileDataCompress

### ProfileStepEdits

### ProgressiveLifebar

Possible values are ``0``(Off) or ``1``, ``2``, ``3``, ``4``, ``5``, ``6``, ``7``, and ``8``.

Default value: 0

### ProgressiveNonstopLifebar

Possible values are ``0``(Off) or ``1``, ``2``, ``3``, ``4``, ``5``, ``6``, ``7``, ``8``, and ``9``(Insanity).

Default value: 0

### ProgressiveStageLifebar

Possible values are ``0``(Off) or ``1``, ``2``, ``3``, ``4``, ``5``, ``6``, ``7``, ``8``, and ``9``(Insanity).

Default value: 0

### PruneFonts

### PseudoLocalize

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### Python23IO_HDXB_DEV_ID

### Python23IO_HDXB_PORT

### Python23IO_Mode

### Python23IO_P2IO_EXTIO

### PickExtraStage

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### QuirksMode

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### RageSoundSampleCountClamp

Default value: 0

### RandomBackgroundMode

Possible values are ``"Off"``, ``"Animations"`` and ``Random Movies``

### RateModsAffectFGChanges

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 1

### RefreshRate

Possible values are ``Default``, ``60``, ``70``, ``72``, ``75``, ``90``, ``100``, ``120``, ``144``, ``165``, ``200``, and ``240``.

Default value: Default
### RegenComboAfterMiss

Default value: 5

### ReverseMouseButtons

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### SatelliteComPort

### ScoreBroadcastURL

### SextetStreamOutputFilename

### ShowBanners

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 1

### ShowBeginnerHelper

Possible values are ``0`` or ``1``. 0 is "Off" and 1 is "On".

Default value: 0

### ShowCaution

Displays a caution screen before gameplay begins.

Possible values are ``0`` or ``1``. 0 is "Skip" and 1 is "Show".

Default value: 0

### ShowDancingCharacters

Possible values are ``Default to Off``, ``Default to Random``, and ``Select``.

Default value: Random

### ShowDanger

If the theme is aware, this can toggle visual effects used to signify low health.

Possible values are ``0`` or ``1``. 0 is "Hide" and 1 is "Show".

Default value: 1

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

It Shows lyrics from a .crs file in-game in present.

Possible values are ``0`` and ``1``. 0 is "Hide" and 1 is "Show".

Default value: 1

### ShowMasks

### ShowMouseCursor

Determines whether the OS mouse cursor will disappear if hovered over the game window.

Possible values: ``0`` or ``1``. 0 is ``"Off"`` and 1 is ``"On"``. Changing this in-game might require a game restart.

Default value: 1

### ShowNativeLanguage

Toggles whether song titles are displayed in their native language (1), or a transliterated or translated form as determined in their metadata (0)

Possible values are ``0`` or ``1``. 0 is "Romanization" and 1 is "Native Language".

Default value: 0

### ShowSongOptions

Toggles whether the game will ask players if they wish to view the Song Options menu when exiting the player options menu, whether the screen will always be displayed, or if song options will not be accessible.

Possible values are ``Ask``, ``Hide`` and ``Show``

Default value: "Ask"

### ShowStats

Shows an overlay in the top corner of the screen for information such as frame rate and memory usage.

Possible values are ``0`` and ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0 (1 if in debug mode)

### ShowThemeErrors

If enabled, Lua errors will be displayed in an overlay at the top of the screen.

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### SignProfileData

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### SmoothLines

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 0

### SongBackgrounds

### SongBroadcastURL

### SongMinTNSToHideNotes

### SongNoteskins

### SongsPerPlay

A number of songs per session (excluding extra stages) if ``EventMode`` is disabled.

Possible values are ``1``, ``2``, ``3``, ``4``, and ``5``.

Default value: 3

### SongsPerPlayOrEvent

Possible values are ``1``, ``2``, ``3``, ``4``, ``5``, and ``Event``.

### SoundDevice

Default value: nothing

### SoundDrivers

### SoundPreferredSampleRate

Default value: 44100

### SoundPreload16bit

### SoundPreloadMaxSamples

### SoundVolume

System sound volume.

Possible values are ``Silent``, ``10%``, ``20%``, ``30%``, ``40%``, ``50%``, ``60%``, ``70%``, ``80%``, ``90%`` and ``100%``.

Default value: 0.400000

### SoundVolumeAttract

Possible values are ``Silent``, ``10%``, ``20%``, ``30%``, ``40%``, ``50%``, ``60%``, ``70%``, ``80%``, ``90%`` and ``100%``.

Volume used in arcade attract mode.

### SoundWriteAhead

Default value: 4096

### StretchBackgrounds

Possible values are ``0`` or ``1``. 0 is "Off" and 1 is "On".

Default value: 0

### StreamerMode

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### SubSortByNumSteps

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### SuperMeterPercentChange**

### TestInitialScreen

Default value: nothing

### TextureColorDepth

Possible values are ``16`` and ``32``. 16 is ``16bit`` and 32 is ``32bit``.

Default value: 32

### Theme

### ThreadedInput

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 1

### ThreadedMovieDecode

### ThreeKeyNavigation

Possible values are ``0`` or ``1``. 0 is ``"Five Key Menu"`` and 1 is ``"Three Key Menu"``.

Default value: 0

### TimeMeterSecondsChange*

### TimingWindowAdd

### TimingWindowJump

### TimingWindowScale

Possible values are ``1``, ``2``, ``3``, ``4``, ``5``, ``6``, ``7``, ``8``, and ``Justice``.

Default value: 4.000000

### TimingWindowSeconds*

These settings define the timing windows used in themes that do not use the Project OutFox LuaTiming system. These settings are provided for backwards compatibility purposes.

### TrilinearFiltering

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### TugMeterPercentChange*

These settings are used for the lifebar in battle mode.

### TurnOffWMCompositor

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### UpdateCheckEnable

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### UseEGLonLinux

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### UseOldJoystickMapping

Toggles between HIDAPI and XInput modes.

Possible values are ``0`` or ``1``. 0 is ``"XInput"`` and 1 is ``"HIDAPI"``.

Default value: 1

### UsePointsandBlending

Enable or disable the use of points between each section of an ActorMultiVertex and use blending modes into it.

Possible values are ``0`` or ``1``. 0 is ``No`` and 1 is ``Yes``.

Default value: 1

### UseUnlockSystem

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### UsingArcadePads

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### VideoRenderers

Determines the renderer used by Project OutFox.

### VisualDelaySeconds

Possible values are ``-5``, ``-4``, ``-3``, ``-2``, ``-1``, ``0``, ``+1``, ``+2``, ``+3``, ``+4`` and ``+5``

### VideoUpscaleFilter

Possible values are ``0`` or ``1``. 0 is disabled and 1 is enabled.

Default value: 0

### Vsync

Enables vertical sync (Vsync)

Possible values are ``0`` or ``1``. 0 is ``Off`` and 1 is ``On``.

Default value: 1

### WideScreen16_10

Possible values are ``0`` and ``1``. 0 is ``Off`` and 1 is ``On``


### WideScreen16_9

Possible values are ``0`` and ``1``. 0 is ``Off`` and 1 is ``On``

### Windowed

Enables windowed mode.

Possible values are ``0`` or ``1``. 0 is ``Full Screen`` and 1 is ``Windowed``.

Default value: 1

_Written and Maintained by Moru Zerinho6_