# Preferences.ini
**Preferences.ini** is located in the Save directory where Project OutFox is installed, and contains many of the system preferences. Some of them are accessible within Project OutFox's settings menu, but some of them are only accessible by editing the file.

## AdditionalCourseFolders

Takes a comma-separated list of directories where additional course (.crs) files are stored.

_See [folder](./folders)_

## AdditionalFolders

Takes a comma-separated list of directories where additional content folders are stored.

_See [folder](./folders)_

## AdditionalSongFolders

Takes a comma-separated list of directories where additional song groups are stored.

_See [folder](./folders)_

## AllowExtraStage

When event mode is off, allow the player to qualify for an extra stage.

## AllowHoldForOptions

Allow the user to enter the player options menu by holding the start button when selecting a song. If set to 0, the user must press the start button twice instead.

## AllowMultipleHighScoreWithSameName

Allows multiple high score entries by the same user.

## AllowMultipleInstances

Allows multiple instances of Project OutFox to be opened.

## AllowMultipleToasties

Allows the legacy toasty animation to play multiple times in a single song.

## AllowMultiTexture

## AllowSongDeletion

Allows the hability to delete a song on the Music Wheel by performing the following combination on the selected song:

`CTRL + Backspace`

## AllowUnacceleratedRenderer

## AllowW1

Enables the W1 judgement ("Flawless", "Marevelous", "Fantastic" depending on theme) in regular gameplay. 

## AnisotropicFiltering

## Announcer

Specifies the name of the current announcer.

## ArcadeOptionsNavigation

## AttractSoundFrequency

Determines how often sound is enabled during the attract mode loop in arcade mode.

## AutoJoin

## AutoMapOnJoyChange

## AutoPlay

## AutogenGroupCourses

Automatically generates nonstop courses based on installed songs.

## AutogenSteps

Allows charts to be generated for other [game types](./game-types) and styles that a song does not have its own charts for.

## BGBrightness

Sets the brightness of background visuals in gameplay.

## BackUpAllSongSaves

## BackgroundFitMode

Determines scaling/cropping of song backgrounds based on resolution and aspect ratio.

## BlinkGameplayButtonLightsOnNote

## BothAtOnce

This preference controls BothAtOnce, an input mode that mirrors input across both players. This preference is 

## BreakComboToGetItem

## CelShadeModels

Currently only used on Legacy Dancing Characters, which makes the characters have a toon-styled shade applied.

## Center1Player

In single-player modes, renders the notefield in the center of the screen rather than to the left or right.

## CenterImage

CenterImageAddHeight, CenterImageAddWidth, CenterImageTranslateX, and CenterImageTranslateY are used to adjust overscan.

## CoinMode

This setting determines whether Project OutFox will behave as an arcade game or not;

* If set to ``Pay``, coins and credits must be inserted to play. The game will use an attract loop, and the main menu will not be accessible.
* If set to  ``Free Play``, the game will behave similarly to Pay mode, except credits are not required to play.
* If set to ``Home``, Project OutFox's arcade workflows will be disabled. The game will use its default user experience, including access to the main menu.

## CoinRecoveryExpirationHours

## CoinsPerCredit

Specifies the number of coins that must be inserted for each credit.

## ComboContinuesBetweenSongs

If enabled, the player's combo will carry over between songs rather than start from 0.

## ConstantUpdateDeltaSeconds

## Cookie

~~Cookies are delicious delicacies.~~

## CourseSortOrder

## CoursesToShowRanking

## CurrentGame

Determines the current [game types](./game-types).

## CustomSongsEnable

If set to 1, players may load their own songs from a folder in their profile on a USB media (similar to the "r21" patch from _In the Groove 2_).

## CustomSongsLoadTimeout

## CustomSongsMaxCount

The maximum number of songs that can be loaded as custom songs.

## CustomSongsMaxMegabytes 

The maximum file size for audio files of custom songs.

## CustomSongsMaxSeconds

The maximum length in seconds for custom songs.

## DDRStyleRandom

## DebounceCoinInputTime

## DebugLights

Displays a debug overlay for lights outputs.

## DefaultLocalProfileIDP1

## DefaultLocalProfileIDP2

## DefaultModifiers

Comma-seperated list of modifiers used by players with no profile, or a new profile with no personal settings.

## DefaultRecordLength

## DefaultTheme

Sets the theme that will be loaded as a backup if the current theme cannot be loaded. If ``theme`` cannot also be found, then it will look back for ``"default"`` as the theme to load.

## DelayedBack

If enabled, you must hold the back button for 0.5 seconds to exit gameplay.

## DelayedCreditsReconcile

## DelayedModelDelete

## DelayedScreenLoad

## DelayedTextureDelete

## DisableScreenSaver

## DisableUploadDir

## DisabledSongs

Defines songs that will be disabled (by not making them visible or selectable) from selection.
Formatting for this follows the structure of _[folder](./folders)_, and must be a path to the song.

```ìni
DisabledSongs=MyGroup/MySong,MyGroup2/MyOtherSong
```

## DisplayAspectRatio

The current aspect ratio, expressed as a decimal (i.e. 16:9 = 1.777778, or 16/9).

## DisplayColorDepth

The current color depth, either 32 or 16.

## DisplayHeight and DisplayWidth 

Determines the resolution.

## DisplayId

## Disqualification

If enabled, scores will not be saved if specific modifiers (such as constant BPM) is used.

## EXTIOComPort

## EasterEggs

Enables or disables easter eggs, if a theme is aware of and uses this preference.

## EditClearPromptThreshold

## EditRecordModeLeadIn

## EditorMemoryCardOsMountPoint

## EditorNoteSkinP1 and EditorNoteSkinP2

## EditorShowBGChangesPlay

Enables background scripts to be previewed when playing back a song in the editor.

## EnableAttackSounds

## EnableBeginnerHelperBackgrounds

## EnableMineHitSound

Plays an explosion sound if you hit a mine note.

## EnableScoreboard

## EventMode

Also known as "Free Mode"; if disabled, each game session is divided into a maximum number of stages (arcade-style).

## ExtendedChineseGlyphs

## ExtendedJapaneseGlyphs

## ExtendedKoreanGlyphs

## FailOffForFirstStageEasy

## FailOffInBeginner

## FastLoad

## FastLoadAdditionalSongs

## FastNoteRendering

## ForceLogFlush

## ForceMipMaps

## FrameLimitPercent

## FullscreenIsBorderlessWindow

Enables borderless fullscreen.

## GetRankingName

## GlobalOffsetSeconds

## HarshHotLifePenalty

## HiddenSongs

## HideIncompleteCourses

## HighResolutionTextures

## HighresScreenshotsBydefault

## IgnoredDialogs

## ImageCache

## InputBackgroundEvents

## InputDebounceTime

## InputDrivers

## Interlaced

## Language

## LastConnectedServer


## LastSeenInputDevices

## LastSeenVideoDriver

Identifies the video card last used with the game. Automatically generated.

## LastSeenMemory

Automatically generated.

## LifeDifficultyScale

## LightsAheadSeconds

## LightsComPort

## LightsDriver

## LightsFalloffSeconds

## LightsStepsDifficulty

If there is no dedicated ``lights`` chart, generates lighting patterns from the existing charts on the specified difficul(ties).

## LockCourseDifficulties

## LogCheckpoints

## LogFPS

At intervals, the current FPS and average FPS will be appended to the log file.

## LogSkips

## LogToDisk

Enabling this will write log files.

## LongVerSongSeconds

Determines how long a song must be for it to be classified as "long" (which costs two stages outside of Event Mode).

## MarathonVerSongSeconds

Determines how long a song must be for it to be classified as a "marathon" (which costs three stages outside of Event Mode).

## MachineName

## MaxHighScoresPerListForMachine

## MaxHighScoresPerListForPlayer

## MaxInputLatencySeconds

## MaxRegenComboAfterMiss

## MaxSongsInEditCourse

## MaxTextureResolution

## MemoryCardDriver

## MemoryCardOsMountPoint

## MemoryCardOsMountPoint

## MemoryCardPadmissEnabled

## MemoryCardProfileImportSubdirs

## MemoryCardProfileSubdir

The name of the subfolder used to store profile data on a USB device.

## MemoryCardProfiles

## MemoryCardUsbBusP1

## MemoryCardUsbBusP2

## MemoryCardUsbLevelP1

## MemoryCardUsbLevelP2

## MemoryCardUsbPortP1

## MemoryCardUsbPortP2

## MemoryCards

## MenuTimer

If enabled, a timer is used in gameplay menus. Usually used in arcade or event settings.

## MercifulBeginner

## MercifulDrain

## MercifulSuperMeter

## MinPercentageForMachineCourseHighScore

## MinPercentageForMachineSongHighScore

## MinTNSToHideNotes

The minimum judgement window needed for notes to disappear after hitting them.

Minimum1FullSongInCourses

## MonkeyInput

A deprecated input mode no longer used on Project OutFox. This is maintained for compatibility only.

## MoveRandomToEnd

## MovieColorDepth

## MovieDrivers

## MusicWheelSwitchSpeed

## MusicWheelUsesSections

## MuteActions

Mutes sound effects in menus.

## NetworkStartOffset

## NeverBoostAppPriority

## NeverCacheList

## NumBackgrounds

## OnlyDedicatedMenuButtons

## OnlyPreferredDifficulties

## PAL

## PacDriveLightOrdering

## PadStickSeconds

## PercentageScoring

If enabled and themes are aware, scores will be expressed as percentages.

## PreCacheAllWheelSorts

## PreferredSortUsesGroups

## Premium

Pay Mode-specific setting, allowing styles requiring two controllers (such as Double) to be played without requiring 2 credits.

## ProductID

## ProfileCourseEdits

## ProfileDataCompress

## ProfileStepEdits

## ProgressiveLifebar

## ProgressiveNonstopLifebar=

## ProgressiveStageLifeba

## PruneFonts

## PseudoLocaliz

## Python23IO_HDXB_DEV_ID

## Python23IO_HDXB_PORT

## Python23IO_Mode

## Python23IO_P2IO_EXTIO

## QuirksMode

## RageSoundSampleCountClamp

## RandomBackgroundMode

## RateModsAffectFGChanges

## RefreshRate

## RegenComboAfterMiss

## ReverseMouseButtons

## SatelliteComPort

## ScoreBroadcastURL

## SextetStreamOutputFilename

## ShowBanners

## ShowBeginnerHelper

## ShowCaution

Displays a caution screen before gameplay begins.

## ShowDancingCharacters

## ShowDanger

If the theme is aware, this can toggle visual effects used to signify low health.

## ShowInstructions

If the theme is aware, this can toggle additional tutorial screens shown in-game.

## ShowLoadingWindow

Toggles the splash screen.

## ShowLogOutput

On Windows, this will open a ``cmd.exe`` window to display log output when the game is running.

## ShowLyrics

Shows lyrics from a .crs file in-game in present.

## ShowMasks

## ShowMouseCursor

Determines whether the OS mouse cursor will disappear if hovered over the game window.

## ShowNativeLanguage

Toggles whether song titles are displayed in their native language (1), or in a transliterated or translated form as determined in their metadata (0)

## ShowSongOptions

Toggles whether the game will ask players if they wish to view the Song Options menu when exiting the player options menu, whether the screen will always be displayed, or if song options will not be accessible.

## ShowStats

Shows an overlay in the top corner of the screen for information such as frame rate and memory usage.

## ShowThemeErrors

If enabled, Lua errors will be displayed in an overlay at the top of the screen.

## SignProfileData

## SmoothLines

## SongBackgrounds

## SongBroadcastURL

## SongMinTNSToHideNotes

## SongNoteskins

## SongsPerPlay

Number of songs per-session (excluding extra stages) if ``EventMode`` is disabled.

## SoundDevice

## SoundDrivers

## SoundPreferredSampleRate

## SoundPreload16bit

## SoundPreloadMaxSamples

## SoundVolume

System sound volume

## SoundVolumeAttract

Volume used in arcade attract mode.

## SoundWriteAhead

## StretchBackgrounds

## SubSortByNumSteps

## SuperMeterPercentChange**

## TestInitialScreen

## TextureColorDepth

## Theme

## ThreadedInput

## ThreadedMovieDecode

## ThreeKeyNavigation

## TimeMeterSecondsChange*

## TimingWindowAdd

## TimingWindowJump

## TimingWindowScale

## TimingWindowSeconds*

These settings define the timing windows used in themes that do not use the Project OutFox LuaTiming system. These settings are provided for backwards compatibility purposes.

## TrilinearFiltering

## TugMeterPercentChange*

These settings are used for the lifebar in battle mode.

## UpdateCheckEnable

## UseEGLonLinux

## UseOldJoystickMapping

Toggles between HIDAPI and XInput modes.

## UsePointsandBlending

Enable or disable the use of points between each section of an ActorMultiVertex and use blending modes into it.

## UseUnlockSystem

## VideoRenderers

Determines the renderer used by Project OutFox.

## VisualDelaySeconds

## Vsync

Enables vertical sync (Vsync)

## Windowed

Enables windowed mode.
