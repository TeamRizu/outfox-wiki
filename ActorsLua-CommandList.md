# Command List

OutFox has actors and actors can have commands. Makes sense that there would be a lot of commands pre-defined by the game, so this is a list of what commands the game has, how and when they're used and what parameters they give.

## Commands
<!--TODO: order of when the first five are called-->

`InitCommand`

`OnCommand`

`OffCommand`

`BeginCommand`

`EndCommand`

---

### `SetAttackCommand`

Called on the noteskin actor before drawing an Attack-type TapNote

Parameters:

Modifiers (string, The attack associated with the tap note.)

---
### `UnsetAttackCommand`
Called on the noteskin actor after drawing an Attack-type TapNote

---
### `ScreenGainFocusCommand`
<!--TODO: any examples?-->
Called when processing the SM_GainFocus Screen Message.

Only used in ScreenOptionsManageProfiles, ScreenOptionsManageEditSteps and ScreenOptionsManageCourses.

---
### `ScreenLoseFocusCommand`
<!--TODO: any examples?-->
Called when processing the SM_LoseFocus Screen Message.

Only used in ScreenOptionsManageProfiles, ScreenOptionsManageEditSteps and ScreenOptionsManageCourses.

---
### `LoseLifeCommand`

Called when losing a battery.

Prefixed in metrics with "NumLivesP1" and "NumLivesP2".

---
### `GainLifeCommand`

Called when gaining a battery.

Prefixed in metrics with "NumLivesP1" and "NumLivesP2".

---
### `AfterSetCommand`

Called on the TextBanner after having set the title, subtitle and artist fields. (Runs after calling `SetFromSong` or `SetFromString`)

---
### `LoseFocusCommand`

Called on BGAs when fading away, on ScreenDebugOverlay's pages when switching away, on OptionRows when switching away from a row, and other places

---
### `GainFocusCommand`

Called on BGAs when fading in, on ScreenDebugOverlay's pages when switching to them, on OptionRows when switching to a row, and other places

---
### `FadeCommand`

Called when setting the brightness overlay to the actual brightness (based on cover & BGBrightness)

Prefixed in metrics with "BrightnessOverlay".

---
### `NextPageCommand`

Called when switching to the next page in ScreenRanking.

---
### `SwitchedPageCommand`

Called when handling the SM_HidePage Screen Message in ScreenRanking.

---
### `ReverseOnCommand`

Called on a column's Receptor when the column goes beyond 50% reverse

---
### `ReverseOffCommand`

Called on a column's Receptor when the column goes below 50% reverse

---
### `LiftCommand`

Called on a column's Receptor when the column stops being pressed.

---
### `PressCommand`

Called on a column's Receptor when the column gets pressed.

---
### `ProW1/ProW2/ProW3/ProW4/ProW5/W1/W2/W3/W4/W5/MissCommand`

Called on a column's Receptor and noteflash when a column gets the relevant judgment.

---
### `ShowNoteUpcomingCommand`

Called on a column's Receptor when the column has notes approaching

---
### `HideNoteUpcomingCommand`

Called on a column's Receptor when the column has no notes approaching

---
### `EditCommand`

Called on ScreenEdit's overlay & underlay when entering the Edit state.

---
### `RecordCommand`

Called on ScreenEdit's overlay & underlay when entering the Record state.

---
### `RecordPausedCommand`

Called on ScreenEdit's overlay & underlay when entering the RecordPaused state.

---
### `PlayingCommand`

Called on ScreenEdit's overlay & underlay when entering the Playing state.

---
### `AnimationFinishedCommand`

Called on a Sprite when looping an animation.

---
### `HoldingOffCommand`

Called on a noteflash when ending a hold.

---
### `RollOffCommand`

Called on a noteflash when ending a roll.

---
### `HoldingOnCommand`

Called on a noteflash when starting a hold.

---
### `RollOnCommand`

Called on a noteflash when starting a roll.

---
### `ColumnJudgmentCommand`

Called on a noteflash when a judgment happens. Also seen as a MessageCommand.

Parameters:
- `TapNoteScore` (TapNoteScore enum, The related judgment. nil for hold notes)
- `HoldNoteScore` (HoldNoteScore enum, The related judgment. nil for tap notes)
- `Column` (integer, The column the judgment happened on.)
- `Color` (string, The last color seen on the noteskin. ScreenNetSelectBase appears to modify this)

---
### `JudgmentCommand`

(Not to be confused with the Judgment MessageCommand!)

Called on a noteflash when a judgment happens.

---
### `BrightCommand`

Called on a noteflash when the combo is higher than the bright threshold.

---
### `DimCommand`

Called on a noteflash when the combo is lower than the bright threshold.

---
### ```ToggledCommand```

Called on the button text of ScreenDebugOverlay when the button is pressed.

Prefixed in metrics with `"ButtonText"`

---
### `DeSelCommand`

Called when pressing menuup or menudown on ScreenNetEvaluation.

Prefixed in metrics with `"User"`

---
### `SelCommand`

Called when pressing menuup or menudown on ScreenNetEvaluation.

Prefixed in metrics with `"User"`

---
### `Tier02OrBetterCommand`

Called in ScreenNetEvaluation when a player got a grade of tier 2 or better.

Prefixed in metrics with `"User"`

---
### `ShowCommand`

Called in `ScreenGameplayLesson` when showing a page, in `OptionsList` when something is selected, in `DifficultyList`, and on the `ScreenSyncOverlay` when showing help.

---
### `HideCommand`

Called in `ScreenGameplayLesson` when hiding a page, in `OptionsList` when something is deselected, in `DifficultyList`, and on the `ScreenSyncOverlay` when hiding help.

---
### `StartTransitioningCommand`

Called when starting a screen transition.

---
### `GoToOptionsCommand`

Called when going into the Song Options menu.

---
### `AskFroGoToOptionsCommand`

Called when asking if the player wants to go into the Song Options menu.

---
### `DisabledCommand`

Called when showing that an `OptionRow` or `ScreenSelectMaster` choice is disabled.

---
### `RefreshCommand`
<!--TODO: any examples?-->
Called on `OptionRow` when setting the ModIcon.

Parameters:
- `GameCommand` (GameCommand object, The related commands.)
- `Text` (string, The text that goes with the commands.)

---
### `LevelCommand`
<!--TODO: any examples?-->
Called when setting the content of a `PaneDisplay`.

---
### `ConnectedCommand`
<!--TODO: any examples?-->
Called in `ControllerStateDisplay`.

---
### `UnpluggedCommand`
<!--TODO: any examples?-->
Called in `ControllerStateDisplay`.

---
### `NeedsMultitapCommand`
<!--TODO: any examples?-->
Called in `ControllerStateDisplay`.

---
### `NoInputHandlerCommand`
<!--TODO: any examples?-->
Called in `ControllerStateDisplay`.

---
### `SetTwoRowsCommand`

Called when setting an `OptionsList` underline to work with items in two rows.

Prefixed in metrics with `"Underline"`.

---
### `SetOneRowCommand`

Called when setting an `OptionsList` underline to work with items in one row.

Prefixed in metrics with `"Underline"`.

---
### `PositionTwoRowsCommand`

Called when setting an `OptionsList` cursor to work with items in two rows.

Prefixed in metrics with `"Cursor"`.

---
### `PositionOneRowCommand`

Called when setting an `OptionsList` cursor to work with items in one row.

Prefixed in metrics with `"Cursor"`.

---
### `TweenOffCommand`

Called when loading or closing an `OptionRow`, tweening off the debug text in `ScreenGameplay`, and in `ScreenMapControllers`.

---
### `TransformCommand`

Called on the Player's Judgment & Combo during `Player::Init``

Prefixed in metrics with `"Judgment"` and `"Combo"`

Parameters:
- `Player` (PlayerNumber enum, The PlayerNumber for the combo & judgment.)
- `MultiPlayer` (MultiPlayer enum, The MultiPlayer for the combo & judgment.)
- `iEnabledPlayerIndex` (integer, The enabled player index)
- `iNumEnabledPlayers` (integer, The number of total enabled players)
- `bPlayerUsingBothSides` (boolean, If the current style has one player on both "sides", like Doubles)
- `bReverse` (boolean, Is the player on Reverse?)
- `bCentered` (boolean, Is the player on Centered?)

---
### `ResetCommand`

Called when resetting an `OptionRow` or `Player Judgment`.

---
### `TweenOffCommand`

Called when opening an `OptionRow`, displaying the debug text in `ScreenGameplay`, and in `ScreenMapControllers`.

---
### `TweenOutForwardCommand`

Called when tweening out of an `OptionsList`.

Prefixed in metrics with `"OptionsList"`

---
### `TweenOutBackwardCommand`

Called when tweening out of an `OptionsList`.

Prefixed in metrics with `"OptionsList"`

---
### `TweenInForwardCommand`

Called when tweening into an `OptionsList`.

Prefixed in metrics with `"OptionsList"`

---
### `TweenInBackwardCommand`

Called when tweening into an `OptionsList`.

Prefixed in metrics with `"OptionsList"`

---
### `EnabledCommand`

Called when showing that a `ScreenSelectMaster` choice is enabled.

---
### `SwitchToPage1Command / SwitchToPage2Command`

Called when switching to a different page in `ScreenSelectMaster`.

Prefixed in metrics with `"IconChoice1/2/3/4"`, `"ExplanationPage1/2"`, `"MorePage1/2"`

---
### `LostSelectedLoseFocusCommand`
<!--TODO: any examples?-->
Called when canceling a selection in `ScreenSelectMaster`.

---
### `LostSelectedGainFocusCommand`
<!--TODO: any examples?-->
Called when canceling a selection in `ScreenSelectMaster`.

---
### `ChangeCommand`
<!--TODO: any examples?-->
Called when changing a selection in `ScreenSelectMaster`, when updating a `StepsDisplayList`/`DifficultyList` or when updating `ScreenOptions`.

Prefixed in metrics with `"CursorP1"` and `"CursorP2"`in the case of `ScreenSelectMaster`.

---
### `MadeChoiceP1Command / MadeChoiceP2Command`
<!--TODO: any examples?-->
Called when making a selection in `ScreenSelectMaster`.

---
### `ChooseCommand`
<!--TODO: any examples?-->
Called on the cursor when making a selection in `ScreenSelectMaster`.

---
### `InitialSelectionCommand`
<!--TODO: any examples?-->
Called when making a selection in `ScreenSelectMaster` during a two-step selection.

---
### `OffFocusedCommand`
<!--TODO: any examples?-->
Called when tweening off `ScreenSelectMaster`.

---
### `OffUnfocusedCommand`
<!--TODO: any examples?-->
Called when tweening off `ScreenSelectMaster`.

---
### `BackCommand`
<!--TODO: any examples?-->
Called when turning on a BG in ScreenPackages? Also when setting up the backside of the `CDTitle`.

Prefixed in metrics with `"PackagesBG"`, `"WebBG"` and `"CDTitle"`

---
### `AwayCommand`
<!--TODO: any examples?-->
Called when turning off a BG in ScreenPackages?

Prefixed in metrics with `"PackagesBG"` and `"WebBG"`

---
### `HeldCommand`

Called on a `HoldJudgment` when a hold or roll is completed.

Prefixed in metrics with `"HoldJudgment"`

---
### `LetGoCommand`

Called on a `HoldJudgment` when a hold or roll is dropped.

Prefixed in metrics with `"HoldJudgment"`

---
### `MissedHoldCommand`

Called on a `HoldJudgment` when a hold or roll is missed.

Prefixed in metrics with `"HoldJudgment"`

---
### `TwentyFiveMilestoneCommand`

Called on `Player` when displaying a 25 combo milestone.

---
### `FiftyMilestoneCommand`

Called on `Player` when displaying a 50 combo milestone.

---
### `HundredMilestoneCommand`

Called on `Player` when displaying a 100 combo milestone.

---
### `TwoHundredFiftyMilestoneCommand`

Called on `Player` when displaying a 250 combo milestone.

---
### `ThousandMilestoneCommand`

Called on `Player` when displaying a 1000 combo milestone.

---
### `ComboCommand`

Called on the `Player` when updating the combo amount.

Parameters:
- `Combo` (integer, The current combo.)
- `Misses` (integer, The current number of misses.)
- `FullComboW1` (boolean, The player currently has a full combo and the lowest TNS is W1.)
- `FullComboW2` (boolean, The player currently has a full combo and the lowest TNS is W2.)
- `FullComboW3` (boolean, The player currently has a full combo and the lowest TNS is W3.)
- `FullComboW4` (boolean, The player currently has a full combo and the lowest TNS is W4.)

---
### `SortOnCommand`
<!--TODO: any examples?-->
Called when tweening on the sorting screen in Music Wheels.

Prefixed in metrics with `"MusicWheel"`, `"MusicWheelItem"` and `"Highlight"`

---
### `SortOffCommand`
<!--TODO: any examples?-->
Called when tweening off the sorting screen in Music Wheels.

Prefixed in metrics with `"MusicWheel"`, `"MusicWheelItem"` and `"Highlight"`

---
### `DieCommand`
<!--TODO: any examples?-->
Called when a `Player` dies in `Oni` mode

Prefixed in metrics with `"OniGameOverP1"` and `"OniGameOverP2"`

---
### `SetCommand (ScreenGameplay)`
<!--TODO: any examples?-->
Called when setting a Player's `StepsDisplay`?

Prefixed in c++ with `"SetDummy%i"`, `"SetP1"` and `"SetP2"`

---
### `SetReverseCommand`
<!--TODO: any examples?-->
Called on `LyricsDisplay` and `StepsDisplay` when Reverse is on.

Prefixed in metrics with `"LyricDisplay"`, `"StepsDisplayP1"` and `"StepsDisplayP2"`

---
### `SetNoReverseCommand`
<!--TODO: any examples?-->
Called on `LyricsDisplay` and `StepsDisplay` when Reverse is off.

Prefixed in metrics with `"LyricDisplay"`, `"StepsDisplayP1"` and `"StepsDisplayP2"`

---
### `SetOneReverseCommand`
<!--TODO: any examples?-->
Called on `LyricsDisplay` when `Reverse` is on at least one Player, but not all.

Prefixed in metrics with `"LyricDisplay"`

---
### `PauseCommand`
<!--TODO: any examples?-->
Called on `ScreenGameplay` when pausing the game.

---
### `UnpauseCommand`
<!--TODO: any examples?-->
Called on `ScreenGameplay` when unpausing the game.

---
### `StartOnCommand`

Called on `ScreenGameplay`'s debug text when start is held

Prefixed in metrics with `"Debug"`

---
### `BackOnCommand`

Called on `ScreenGameplay`'s debug text when the back button is held

Prefixed in metrics with `"Debug"`

---
### `StartCommand`

Called on `ScreenGameplay`'s next course song item when starting to load the next song.

---
### `FinishCommand`

Called on `ScreenGameplay`'s next course song item when switching to the next song.

---
### `FadeFromCachedCommand`

Called on `FadingBanner` when loading from a cached image to the actual image.

Prefixed in metrics with `"Banner"`

---
### `FadeOffCommand`

Called on `FadingBanner` when loading from nothing to the actual image.

Prefixed in metrics with `"Banner"`

---
### `ResetFadeCommand`

Called on `FadingBanner` after performing the fade.

Prefixed in metrics with `"Banner"`

---
### `RouletteCommand`

Called on `FadingBanner` when fading to the roulette banner.

Prefixed in metrics with `"Banner"`

---
### `RandomCommand`

Called on `FadingBanner` when fading to the random banner.

Prefixed in metrics with `"Banner"`

---
### `<custom>Command`

Called on `FadingBanner` when fading to a custom banner.

Prefixed in metrics with `"Banner"`

---
### `SpecialKey`
<!--TODO: any examples?-->
Called on `ScreenTextEntry`'s cursor when on a special key.

---
### `RegularKey`
<!--TODO: any examples?-->
Called on `ScreenTextEntry`'s cursor when on a regular key.

---
### `NeverShow`
<!--TODO: any examples?-->
Called on `ScreenMapControllers`' warning actor if it exists.

---
### `MappedInputCommand`

Called in `ScreenMapControllers` after having mapped a key.

Prefixed in metrics with `"MappedTo"`?

---
### `LoseMarkCommand`

Called in `ScreenMapControllers` when removing an element from the set list.

Prefixed in metrics with `"MappedTo"`?

---
### `GainMarkCommand`

Called in `ScreenMapControllers` when adding an element to the set list.

Prefixed in metrics with `"MappedTo"`?

---
### `WaitingCommand`

Called in `ScreenMapControllers` when waiting for the player to set a key after hitting enter.

Prefixed in metrics with `"MappedTo"`?

---
### `SetTextCommand`

Called when sanity checking the input from `ScreenMapControllers`.

Parameters:
- `Text` (string, The reasons a sanity check failed.)

---
### `FirstUpdateCommand`

Called when `ScreenWithMenuElements` begins the screen.

---
### `SetHelptextCommand`

Called when `ScreenWithMenuElements` updates the `HelpText`.

Parameters:
- `Text` (string, The help text.)

---
### `CancelCommand`

Called when canceling out of a `ScreenWithMenuElements` menu.

Prefixed in metrics with `"Out"`, `"Cancel"` 
<!-- TODO: I found a CancelCommand with no prefix. Relevant? -->

---
### `ChangeCommand`

Called when `ScreenWithMenuElements` begins the screen.

---
### `FrontCommand`

Called when setting up the frontside of the `CDTitle`.

Prefixed in metrics with `"CDTitle"`

---
### `ModsCommand`
<!--TODO: any examples?-->
Called during `ScreenSelectMusic`'s `BeginScreen`.

---
### `ShowEnteringOptionsCommand`

Called when entering the `PlayerOptions` menu after selecting a song.

---
### `HidePressStartForOptionsCommand`

Called when hiding the prompt to enter the `Player Options` menu.

---
### `SortChangeCommand`
<!--TODO: any examples?-->
Called when changing the sort order of `ScreenSelectMusic`

---
### `ShowPressStartForOptionsCommand`

Called when showing the prompt to enter the `Player Options` menu.

---
### `ChangeToExitCommand`

Called when moving the highlight line to the exit button.

Prefixed in metrics with `"LineHighlight"`, `"LineHighlightP1"` and `"LineHighlightP2"`

---
### `SelectedCommand`
<!--TODO: any examples?-->
Called when changing a value in `ScreenOptions`?

---
### `UnselectedCommand`
<!--TODO: any examples?-->
Called when changing a value in `ScreenOptions`?

---
### ``ChangedCommand`
<!--TODO: any examples?-->
Called when changing the group & song banner in `ScreenEdit` as well as when updating the `LyricDisplay`.

Prefixed in metrics for LyricDisplay with `"LyricFront"` and `"LyricBack"`

---
### `PlayerStateSetCommand`

Called when running `NoteField::Init()`, can be seen in 5.0.12's default theme with NoteField board.

Parameters:
- `PlayerNumber` (PlayerNumber enum, The player number for the notefield's PlayerState.)

---
### `LoadCommand` (StepsDisplay)

Called when running `StepsDisplay::Load`.

Prefixed in metrics with `"Frame"` and maybe others?

Parameters:
- `PlayerState` (PlayerState object, The PlayerState for the given StepsDisplay.)

---
### `SetCommand` (StepsDisplay)

Called when running `StepsDisplay::SetInternal`.

Prefixed in metrics with `"Frame"`, `"Ticks"`, `"Meter"`, `"Description"`, `"Credit"`, `"Autogen"` and `"StepsType"`

Parameters:
- `CustomDifficulty` (string, Representation of the difficulty.)
- `DisplayDescription` (string, The chart's related description.)
- `Steps` (Steps object, The steps of the chart. nil if not available.)
- `Trail` (Trail object, The trail for the course. nil if not available.)
- `Meter` (integer, The chart meter value.)
- `StepsType` (StepsType enum, The type of chart being shown.)

---
### `AnalogInputCommand`

Called on `TopScreen` from `InputHandler` when doing analog input. As seen in `ScreenTestLuaAnalog`

Parameters:
- `Device` (integer, The device ID(?) recorded from the input.)
- `Button` (string, The button recorded from the input.)
- Value` (float, The level recorded from the input.)

---
### `PostSwitchPageCommand`

Called on `ScreenSelectMaster` after switching the page? Also has a MessageCommand variant?

Parameters:
- `NewPageIndex` (integer, The page to switch to.)

---
### `PreSwitchPageCommand`

Called on `ScreenSelectMaster` before switching the page? Also has a MessageCommand variant?

Parameters:
- `OldPageIndex` (integer, The page to switch from.)
- `NewPageIndex` (integer, The page to switch to.)

---
### `SetCommand` (MusicWheelItem)

Called on `MusicWheelItem` when loading from `WheelItemData` or when handling a change message.

Parameters:
- `Song` (Song object, The song for the wheel item.)
- `Course` (Course object, The course for the wheel item.)
- `Index` (integer, The index of the wheel item. nil if done through a change message)
- `HasFocus` (boolean, Is the wheel item focused? nil if done through a change message)
- `Text` (string, The text of the wheel item?)
- `DrawIndex` (integer, The draw index of the wheel item. nil if done through a change message)
- `Type` (string, The MusicWheelItemType.)
- `Color` (RageColor?, The color associated with the wheel item.)
- `Label` (string, The label for the wheel item.)

---
### `SetGradeCommand`

Called on `MusicWheelItem` when refreshing grades.

Parameters:
- `PlayerNumber` (PlayerNumber enum, The player who has the grade)
- `Grade` (Grade enum, The highest grade gotten. nil if there's no HighScoreList.)
- `NumTimesPlayed` (integer, How many times the song or course was played. nil if there's no HighScoreList.)

---
### `MenuTimerExpired`

Called on `ScreenNameEntryTraditional` when the menu timer hits zero. Also seen as a MessageCommand.

---
### `PlayerFinishedCommand`

Called on `ScreenNameEntryTraditional` when a player finishes entering their name. Also seen as a MessageCommand.

Parameters:
- `PlayerNumber` (PlayerNumber enum, The player that finished.)

---
### `EntryChangedCommand`

Called on `ScreenNameEntryTraditional` when a player updates their selection text.

Parameters:
- `PlayerNumber` (PlayerNumber enum, The player that updated their selection text.)
- `Text` (string, The current text. Has a \_ at the end if more characters can be entered.)

---
### `SelectKeyCommand`

Called on `ScreenNameEntryTraditional` when a player changes which key is being selected.

Parameters:
- `PlayerNumber` (PlayerNumber enum, The player that changed the key.)
- `Key` (string, The currently selected key)

---
### `SetSongCommand`

Called on `CourseContentsList` when setting the item from `GameState`.

Parameters:
- `PlayerNumber` (PlayerNumber enum, The player who selected the course)
- `Song` (Song object, The song for this part of the course)
- `Steps` (Steps object, The Steps of the song.)
- `Difficulty` (Difficulty enum, The Difficulty of the course)
- `Meter` (integer, The difficulty meter)
- `Number` (integer, The position in the course)
- `Modifiers` (string, The modifiers to apply for the song)
- `Secret` (boolean, Is the song considered a secret?)

---
### `HurryTimerCommand`

Called on `ScreenContinue` when hurrying up the timer.

Parameters:
- `PlayerNumber` (PlayerNumber enum, The player hurrying up the timer.)

---
### `LoadCommand` (ScoreDisplayNormal)

Called when running `ScoreDisplayNormal::Init`

Parameters:
- `PlayerState` (PlayerState object, The associated PlayerState.)
- `PlayerStageStats` (PlayerStageStats object, The associated PlayerStageStats.)

---
### `SetStatusCommand`

Called when updating `ScreenSyncOverlay`.

Parameters:
- `Text` (string, The status text.)

---
### `SetAdjustmentsCommand`

Called when updating `ScreenSyncOverlay`.

Parameters:
- `Text` (string, The adjustment text.)

---
### `SetCommand` (ScreenHighScores)

Called when configuring the `ScoreScroller`.

Parameters:
- `Song` (Song object, The song with the high score. nil if it's a course high score.)
- `Course` (Course object, The course with the high score. nil if it's a song high score.)
- `Entries` (lua table, Steps data. Iterate with pairs and not ipairs.)

---
### `ScrolledCommand`

Called when scrolling `ScreenHighScores`.

Parameters:
- `Direction` (integer, the direction.)

---
## Messages (Suffix with MessageCommand)

### `RouletteStoppedMessageCommand`

Called when the music wheel is slowing down during roulette.

----
### `StartRouletteMessageCommand`

Called when the music wheel is starting the roulette

---
### `StartRandomMessageCommand`

Called when the music wheel chosing a random song from the Random item.

---
### `CoinInsertedMessageCommand`

Called when insering a coin and clearing credits.

Themes can use this command to update other actors about coin information (Does not send any data).

---
### `ToggleConsoleDisplayMessageCommand`

Called when pressing the pause key on the keyboard. Its' use in fallback is commented out and the keybind conflicts with the mute actions keybind.

---
### `LifeChangedMessageCommand`

Called when updating the `LifeMeter`. Different LifeMeter types give different parameters.

Parameters:
- `Player` (PlayerNumber enum, The Player who's having life differences.)
- `LifeMeter` (LifeMeter object, The LifeMeter for that player.)
- `LivesLeft` (integer, number of batteries left. nil if not using LifeMeterBattery.)
- `LostLife` (boolean, Did the player lose a life? nil if not using LifeMeterBattery.)
- `TapNoteScore` (TapNoteScore enum LuaReference, the TapNoteScore the player got. nil if not using LifeMeterTime.)
- `HoldNoteScore` (HoldNoteScore enum LuaReference, the HoldNoteScore the player got. nil if not using LifeMeterTime.)
- `OldLife` (float, the previous amount of time nil if not using LifeMeterTime.)
- `Difference` (float, the difference between the old amount of life and current amount. nil if not using LifeMeterTime.)

---
### `ShowDangerAllMessageCommand`

Called in `Background` when all players are in danger of failing.

---
### `HideDangerAllMessageCommand`

Called in background when all players are not in danger of failing (or if they're all dead).

---
### `ScreenChangedMessageCommand`

Called when running `ScreenManager::LoadDelayedScreen`

Prefixed in metrics with `"CreditsP1"` and `"CreditsP2"` when dealing with the credits text.

---
### `SystemMessageMessageCommand`

Called when creating a `SystemMessage`

Parameters:
- `Message` (string, The message itself.)
- `NoAnimate` (boolean, Do we do an animated SystemMessage?)

---
### `HideSystemMessageMessageCommand`

Called when hiding the `SystemMessage`. Seemingly unused?

---
### `RefreshCreditTextMessageCommand`

Called when refreshing the credits text.

Prefixed in metrics with `"CreditsP1"` and `"CreditsP2"`.

---
### `AutosyncChangedMessageCommand`

Called when changing the `Autosync` type from `ScreenDebugOverlay`.

---
### `ToggleScriptErrorMessageCommand`

Called when toggling the error display from `ScreenDebugOverlay`.

---
### `ClearScriptErrorMessageCommand`

Called when clearing the current lua errors from `ScreenDebugOverlay`.

---
### `UpdateNetEvalStatsMessageCommand`

Called when updating the evaluation stats during net play.

Parameters:
- `ActivePlayerIndex` (integer, The current active player.)
- `Difficulty` (Difficulty enum, The song's difficulty.)
- `Score` (integer, The player's score.)
- `Grade` (integer, The player's grade.)
- `PlayerOptions` (string, The player's playeroptions.)
- `Steps` (Steps object, The song's steps. nil if they don't exist.)

---
### `ScoreChangedMessageCommand`

Called when loading `ScoreKeeperNormal` and handling score.

Parameters:
- `PlayerNumber` (PlayerNumber enum, The PlayerNumber associated with the score.)
- `MultiPlayer` (MultiPlayer enum, The MultiPlayer associated with the score.)
- `ToastyCombo` (integer, The current combo as the toasty sees it. nil if not coming from `ScoreKeeperNormal::HandleTapRowScore`)

---
### `CurrentComboChangedP1MessageCommand / CurrentComboChangedP2MessageCommand`

Called when dealing with combo in `ScoreKeeperNormal`.

---
### `ToastyAchievedMessageCommand`

Called when a player gets the toasty.

Parameters:
- `PlayerNumber` (PlayerNumber enum, The PlayerNumber associated with the toasty.)
- `ToastyCombo` (integer, The current combo as the toasty sees it. nil if not coming from `ScoreKeeperNormal::HandleTapRowScore`)
- `Level` (integer, How many times has the player gotten a toasty?)

---
### `ToastyDroppedMessageCommand`

Called when a player drops the toasty.

Parameters:
- `PlayerNumber` (PlayerNumber enum, The PlayerNumber associated with the dropped toasty.)

---
### `AutoJoyMappingAppliedMessageCommand`

Called when automapping a joystick.

---
### `CrossedBeatMessageCommand`

Called every time a beat is crossed?

Parameters:
- `Beat` (integer, The beat that was just crossed?)

---
### `LessonClearedMessageCommand`

Called when clearing a lesson?

---
### `LessonFailedMessageCommand`

Called when failing a lesson?

---
### `LessonTry1MessageCommand / LessonTry2MessageCommand`

Called when attempting a lesson?

---
### `StorageDevicesChangedMessageCommand`

Called when updating the `MemoryCardManager`.

---
### `CardRemovedP1MessageCommand / CardRemovedP2MessageCommand`

Called when a memory card is removed?

---
### `SongModifiedMessageCommand`

Called when saving sync changes while in `EditMode`.

---
### `OptionsListOpenedMessageCommand`

Called every time an `OptionsList` is opened.

Parameters:
- `Player` (PlayerNumber enum, The player that opened the OptionsList.)

---
### `OptionsListClosedMessageCommand`

Called every time an `OptionsList` is closed.

Parameters:
- `Player` (PlayerNumber enum, The player that closed the `OptionsList`.)

---
### `OptionsListQuickChangeMessageCommand`

Called every time an `OptionsList` selection changes. Used when Start is used as down, and the button is left or right.

Parameters:
- `Player` (PlayerNumber enum, The player that changed the OptionsList.)
- `Direction` (integer, The direction to move.)
- `Selection` (integer, The item being selected.)

---
### `OptionsListLeftMessageCommand / OptionsListRightMessageCommand`

Called every time an player moves on the `OptionsList`.

Parameters:
- `Player` (PlayerNumber enum, The player that moved through the OptionsList.)
- `Selection` (integer, The item being selected.)

---
### `OptionsMenuChangedMessageCommand`

Called when switching to a different row.

Parameters:
- `Player` (PlayerNumber enum, The player that changed to the row.)
- `Menu` (string, The menu being switched to?)

---
### `OptionsListPopMessageCommand`

Called when popping off an `OptionsList`.

Parameters:
- `Player` (PlayerNumber enum, The player that popped off the list.)

---
### `OptionsListResetMessageCommand`

Called when resetting an `OptionsList`.

Parameters:
- `Player` (PlayerNumber enum, The player that reset the list.)

---
### `OptionsListPushMessageCommand`

Called when pushing an `OptionsList`.

Parameters:
- `Player` (PlayerNumber enum, The player that pushed the list.)

---
### `OptionsListStartMessageCommand`

Called when pushing the start button in an `OptionsList`.

Parameters:
- `Player` (PlayerNumber enum, The player that pushed the start button.)
- `Selection` (integer, The item being selected.)

---
### `DownloadFinishedMessageCommand`

Called when a download finishes in `ScreenInstallOverlay`.

---
### `MenuLeftP1MessageCommand / MenuLeftP2MessageCommand / MenuDownP1MessageCommand / MenuDownP2MessageCommand / MenuUpP1MessageCommand / MenuUpP2MessageCommand / MenuRightP1MessageCommand / MenuRightP2MessageCommand`

Called when moving around `ScreenSelectMaster`, `ScreenOptions` or `ScreenSelectProfile`.

---
### `MenuSelectionChangedMessageCommand`

Called when updating a menu selection on `ScreenSelectMaster` or `ScreenOptions`.

---
### `MenuStartP1MessageCommand / MenuStartP2MessageCommand`

Called when pushing the start button `ScreenSelectMaster` or `ScreenOptions`.

Parameters:
- `ScreenEmpty` (boolean, Is the screen empty?) (Is this the screen we're about to go to?)

---
### `CurrentCourseChangedMessageCommand`

Called when changing the course, shuffling the Workout or shuffling the course.

---
### `ComboChangedMessageCommand`

Called when updating the player's Combo.

Parameters:
- `Player` (PlayerNumber enum, The player whose combo is getting updated.)
- `OldCombo` (integer, the old combo)
- `OldMissCombo` (integer, the old miss combo)
- `PlayerState` (PlayerState object LuaReference, the Player's PlayerState. nil if it doesn't exist.)
- `PlayerStageStats` (PlayerStageStats object LuaReference, the Player's PlayerStageStats. nil if it doesn't exist.)

---
### `ScoreNoneMessageCommand`

Called when processing a `TapNoteScore_None` in Player.

---
### `StepMessageCommand`

Called when any player steps.

Parameters:
- `PlayerNumber` (PlayerNumber enum, the player that did the step.)
- `MultiPlayer` (MultiPlayer enum, The MultiPlayer that did the step.)
- `Column` (integer, the column getting stepped. 0-indexed?)

---
### `StepP1MessageCommand / StepP2MessageCommand`

Called when any player steps. For backwards compatbility with older content.

---
### `JudgmentMessageCommand`

(Not to be confused with JudgmentCommand!)

Called when any player gets a judgment.

Parameters:
- `Player `(PlayerNumber enum, the player that did the step.)
- `MultiPlayer` (MultiPlayer enum, The MultiPlayer that did the step.)
- `FirstTrack` (integer, The first column to hit the note.)
- `NumTracks` (integer, Number of columns with a hold? Only seen with Hold judgments.)
- `TapNoteScore` (TapNoteScore enum, the tap note score that was gotten.)
- `HoldNoteScore` (HoldNoteScore enum, the hold note score that was gotten.)
- `Early` (boolean, Was the hit early? Only seen with non-Hold judgments.)
- `TapNoteOffset` (float, How far away was the hit in seconds?)
- `Holds` (lua table, indexable by column number for everything that has a hold running. Only seen with non-Hold judgments.)
- `Notes` (lua table of TapNotes, indexable by column number for everything that has a note hit at once. Only seen with non-Hold judgments.)
- `TapNote` (TapNote object?, The TapNote for the hold. Only seen with Hold Judgments.)

---
### `JudgmentMessageCommand` (Mines)

(Not to be confused with JudgmentCommand!)

Called when any player gets a judgment relating to a mine.

Parameters:
- `Player` (PlayerNumber enum, the player that did the step.)
- `TapNoteScore` (TapNoteScore enum, the tap note score that was gotten.)
- `FirstTrack` (integer, The first column to hit the mine.)

---
### `JudgmentWindowMessageCommand`

Called when making use of luajudgments.

Parameters:
- `Type` (string, The thing being judged.)
- `Window` (float, How far away the note was when it was hit.)
- `score` (TapNoteScore enum, Set from lua, determines the score a player should get.)
- `timing` (float, Set from lua, determines the timing window a player should use.)

---
### `<DeviceInput>PressedMessageCommand / <DeviceInput>ReleasedMessageCommand`

Called from ScreenTestInput when recieving input. \<DeviceInput> is replaced with a ToString'd input name.

---
### `UpdateScreenheaderMessageCommand`

Called when updating a NetRoom's room title.

Parameters:
- `Header` (string, The header text.)
- `Subheader` (string, The subheader text.)

---
### `DoneLoadingNextSongMessageCommand`

Called when `ScreenGameplay` finishes loading the next song in a course. Seems unused?

---
### `HealthStateMessageCommand`

Called when a player's `HealthState` changes.

Parameters:
- `PlayerNumber` (PlayerNumber enum, the player that's having their health state change.)
- `HealthState` (HealthState enum, The current health state.)
- `OldHealthState` (HealthState enum, The previous health state.)

---
### `PlayerFailedMessageCommand`

Called when a player fails.

Parameters:
- `PlayerNumber` (PlayerNumber enum, the player that failed.)

---
### `BeatCrossedMessageCommand`

Called every time a beat is crossed in `ScreenGameplay`. Seems unused?

---
### `NoteCrossedMessageCommand / NoteWillCrossMessageCommand`

Called when a player's note will cross or has crossed.

Parameters:
- `PlayerNumber` (PlayerNumber enum, the player whose note is gonna cross. nil if both players have the same style.)
- `ButtonName` (string, The column's button.)
- `NumTracks` (integer, The number of tracks with a tap or hold head.)
- `IsMine` (boolean, Is the note a mine?)
- `NumMessagesFromCrossed` (integer, How many messages is the note away from crossing? 0 = crossed.)

---
### `NoteWillCrossIn400Ms / NoteWillCrossIn800Ms / NoteWillCrossIn1200Ms`

Called when a note is going to cross. Refer to message names for distance?

---
### `NoteCrossedJumpMessageCommand`

Called when a jump crosses.

---
### `BeforeLoadingNextCourseSongMessageCommand`

Called before playing the next song transition in a course.

---
### `ChangeCourseSongInMessageCommand`

Called after playing the next song transition in a course.

---
### `ChangeCourseSongOutMessageCommand`

Called when loading the next song in a course.

---
### `<PreferenceName>ChangedMessageCommand`

Called when a preference changes. `<PreferenceName>` is replaced with the actual preference name.

---
### `PlayerJoinedMessageCommand`

Called when a player joins.

Parameters:
- `Player` (PlayerNumber enum, the player that joined.)

---
### `PlayerUnjoinedMessageCommand`

Called when a player leaves.

Parameters:
- `Player` (PlayerNumber enum, the player that left.)

---
### `GoalCompleteP1MessageCommand / GoalCompleteP2MessageCommand`

Called when a player completes a workout goal?

---
### `WorkoutGoalCompleteMessageCommand`

Called when a player completes a workout goal during a course.

---
### `ScriptErrorMessageCommand`

Called when a lua script errors or reports an error.

Parameters:
- `message` (string, The error message.)

---
### `DisplayLanguageChangedMessageCommand`

Called when switching between transliterated and native language on the music wheel (Press F9).

---
### `StepsUnchosenMessageCommand`

Called when a player unselects steps.

Parameters:
- `Player` (PlayerNumber enum, The player that backed out.)

---
### `SelectMenuInputMessageCommand`

Called in `ScreenSelectMusic`. Not sure when.

Parameters:
- `Player` (PlayerNumber enum, The player that caused this.)
- `Button` (string, The button that was pressed)

---
### `PreviousSongMessageCommand`

Called when moving to the previous song in `ScreenSelectMusic`.

---
### `NextSongMessageCommand`

Called when moving to the next song in `ScreenSelectMusic`.

---
### `PreviousGroupMessageCommand`

Called when moving to the previous group in `ScreenSelectMusic`.

### `NextGroupMessageCommand`

Called when moving to the next group in `ScreenSelectMusic`.

### `TwoPartConfirmCanceledMessageCommand`

Called when canceling out of a Two-Part confirm.

---
### `SongUnchosenMessageCommand`

Called when a player unselects a song.

Parameters:
- `Player` (PlayerNumber enum, The player that backed out.)

---
### `PlayerOptionsChangedMessageCommand`

Called when a player changes their PlayerOptions through `CodeDetector` (ScreenSelectMusic).

Parameters:
- `PlayerNumber` (PlayerNumber enum, The player that performed the code.)


---
### `SongOptionsChangedMessageCommand`

Called when a player changes the SongOptions through `CodeDetector` (ScreenSelectMusic).

---
### `SelectMenuOpenedMessageCommand / SelectMenuClosedMessageCommand`

Called when updating the select button status on `ScreenSelectMusic`.

Parameters:
- `Player` (PlayerNumber enum, The player that pushed select.)

---
### `ChangeStepsMessageCommand`

Called when changing the current steps.

Parameters:
- `Player` (PlayerNumber enum, The player that changed the steps.)
- `Direction` (integer, The direction the player went.)

---
### `SongChosenMessageCommand`

Called when choosing the steps like in pump pro.

---
### `StepsChosenMessageCommand`

Called when choosing the steps.

Parameters:
- `Player` (PlayerNumber enum, The player that chose the steps.)

---
### `StartSelectingSongMessageCommand / StartSelectingStepsMessageCommand / StartFinalizedMessageCommand`

Called at some point in `ScreenSelectMusic`?

---
### `SelectMultipleMessageCommand`

Called when changing the rows in `ScreenOptions`.

Parameters:
- `PlayerNumber` (PlayerNumber enum, The player that is changing things.)
- `RowIndex` (integer, The current row.)
- `ChoiceInRow` (integer, The current selection in the row.)
- `Selected` (boolean, Is the current item selected?)

---
### `ChangeValueMessageCommand`

Called when changing the value in `ScreenOptions`.

Parameters:
- `PlayerNumber` (PlayerNumber enum, The player that is changing things.)
- `RowIndex` (integer, The current row.)

---
### `ChangeRowMessageCommand`

Called when changing the rows in ScreenOptions in an absolute amount.

Parameters:
- `PlayerNumber` (PlayerNumber enum, The player that is changing things.)
- `RowIndex` (integer, The current row.)
- `ChangedToExit` (boolean, Is the current row an exit?)

---
### `LifeMeterChangedP1MessageCommand / LifeMeterChangedP2MessageCommand`

Called when setting the life meter state for a given point of time.

Parameters:
- `Life` (float, The current amount of life.)
- `StepsSecond` (float, The point of time in the song/course)

---
### `FriendsUpdateMessageCommand`

Called when updating the friends list?

---
### `UsersUpdateMessageCommand`

Called when updating the users list?

---
### `CurrentGameChangedMessageCommand`

Called when the current game changes? Seems unused?

---
### `PlayModeChangedMessageCommand`

Called when the play mode changes? Seems unused?

---
### `CoinsChangedMessageCommand`

Called when the amount of coins changes? Seems unused?

---
### `PreferredSongGroupChangedMessageCommand`

Called when the preferred song group changes? Seems unused?

---
### `PreferredCourseGroupChangedMessageCommand`

Called when the preferred course group changes? Seems unused?

---
### `PreferredStepsTypeChangedMessageCommand`

Called when the preferred steps type changes? Seems unused?

---
### `PreferredDifficultyP1ChangedMessageCommand / PreferredDifficultyP2ChangedMessageCommand`

Called when the preferred difficulty changes? Seems unused?

---
### `PreferredCourseDifficultyP1ChangedMessageCommand / PreferredCourseDifficultyP2ChangedMessageCommand`

Called when the preferred course difficulty changes? Seems unused?

---
### `SortOrderChangedMessageCommand`

Called when the sort order changes?

---
### `CurrentSongChangedMessageCommand`

Called when the current song changes?

---
### `CurrentStepsP1ChangedMessageCommand / CurrentStepsP2ChangedMessageCommand`

Called when the current steps change?

---
### `CurrentCourseChangedMessageCommand`

Called when the current course changes?

---
### `CurrentTrailP1ChangedMessageCommand / CurrentTrailP2ChangedMessageCommand`

Called when the current trail changes?

---
### `GameplayLeadInChangedMessageCommand`

Called when changing the Gameplay lead-in?

---
### `EditStepsTypeChangedMessageCommand`

Called when the edit steps type changes? Seems unused?

---
### `EditCourseDifficultyChangedMessageCommand`

Called when the edit course difficulty changes? Seems unused?

---

### `EditSourceStepsChangedMessageCommand`

Called when the edit source steps changes? Seems unused?

---
### `EditSourceStepsTypeChangedMessageCommand`

Called when the edit source steps type changes? Seems unused?

---
### `EditCourseEntryIndexChangedMessageCommand`

Called when the edit course entry index changes? Seems unused?

---
### `EditLocalProfileIDChangedMessageCommand`

Called when the edit local profile ID changes? Seems unused?

---
### `CurrentStyleChangedMessageCommand`

Called when the current style changes? Seems unused?

<!-- TODO: Mouse (Message)Commands. InputHandler_SDL has them, so does Screen.cpp-->