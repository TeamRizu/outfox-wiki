---
title: Announcers
---

Announcers are a set of folders containing audio data for various kinds of situations. These can usually be a voice encouraging the player for their performance, comments about particular songs, among other things.

{{<toc>}}

# Location of Announcers

The default location for announcers are in `Project OutFox/Announcers`, with the following structure:

```
Project OutFox/Announcers/
│
└───────My Announcer
	|
   	└───title menu game name
   		└───Welcome to the game.ogg
		└───OutFox.ogg
```

# Funcionality

Depending on the screen the player is currently on, certain announcer sounds will play. Here we will list the items used in the engine, and talk about custom sounds.

Each item folder on the following list can contain any amount of sounds inside it. The game will pick randomly which one to play.

# Engine-defined sounds

The engine can play certain sounds from the announcer, as long as the name is named correctly based on the following list:

## For ScreenTitleMenu

### `title menu game name`

Plays when entering the title menu. Usually recites the name of the game.

## For ScreenWithMenuElements

As noted on the [Introduction to Theming's guide to creating a custom screen](/dev/theming/Theming-2-Screen-Creation/#creation-of-screen-definitions), almost every screen is inherited on `ScreenWithMenuElements`, meaning that all screens that use this class as a base will play announcers like this, where `<Screen Name>` applies.

### `<Screen Name> intro`

A message played when the player enters this screen.

### `hurry up`

Plays when the timer is running low on time.

## For ScreenSelect

Same rules apply from [ScreenWithMenuElements](#for-screenwithmenuelements), meaning that the `intro` message can also be used here.

### `<Screen Name> IdleComment`

Plays after every specified amount of seconds have passed. This if often used to remind the player to do something in the game.

The amount of time can be changed on the screen's `IdleCommentSeconds` metric.

## For ScreenSelectMaster

ScreenSelectMaster is the name of the class type of several different screens, so these will actually occur on any of the following:
`ScreenTitleMenu`, `ScreenSelectLanguage`, `ScreenUnlockBrowse`, `ScreenSelectStyle`, `ScreenSelectPlayMode`, `ScreenGameInformation`, or any other screen that has `ScreenSelectMaster` as its Class metric.

### `select difficulty challenge`

Plays when the player enters the second page.

{{<hint>}}
Choices on ScreenSelectMaster are split into two pages, all choices after the amount set by the NumChoicesOnPage1 metric are on the second page.
The default is 1024, so this will never play unless the theme sets the metric lower to have a second page.
{{</hint>}}

### `<Screen Name> comment <Choice Name>`

Players when the player has picked their `Choice`.

For example: In ScreenSelectStyle2, a screen that could select the kind of style to play; you are presented with 3 choices: single, versus or double, and the player chooses double. Then the end result would end up looking like this:

- Screen Name: ScreenSelectStyle2
- Choice Name: double

Thus:
```
ScreenSelectStyle2 comment double
```

{{<hint type="important">}}
`<Choice Name>` will be the name field of the gamecommand that defines the choice, so this could be literally anything the themer feels like.

For this example, it ended up being double, which would look something like this:
```ini
# Note here that the 3 can also change, but DOES NOT apply to the scope of announcers, only the name field.
Choice3="name,double"
```
{{</hint>}}

## For ScreenSelectMusic

Rules from [ScreenWithMenuElements](#for-screenwithmenuelements) also apply here.

### `select music intro`

A special rule here for the SelectMusic screen. This is it's opening announcer comment, [`<Screen Name> intro`](#screen-name-intro) will not work here.

### `select music comment repeat`

Plays when a player chooses a song that was already played on this session.

### `select music comment new`

Playes when a player chooses a song that hasn't been played at all on the machine.

### `select music comment hard`

Plays when a player chooses a song that exceeds the value of `ScreenSelectMusic::HardCommentMeter`, which is 10 by default.

### `select music comment general`

Regular comment that plays when a player chooses a song that doesn't apply to the rules from the previous 3 comment types.

### `select course comment general`

Plays when a player chooses a course.

## For ScreenGameplay

The following occur after certain actions.
### `gameplay intro`

The player has entered gameplay. This happens when the gameplay screen begins to fade in.
### `gameplay ready`

The in transition has ended, on some themes, a text saying "Are you ready?" would appear here.
### `gameplay here we go normal`

The ready transition is done. Some themes would display a "Let's go!" text.
### `gameplay here we go extra`

Same aspect as [`gameplay here we go normal`](#gameplay-here-we-go-normal), but in the case the player is currently on an extra stage.
### `gameplay here we go final`

Same aspect as [`gameplay here we go normal`](#gameplay-here-we-go-normal), but in the case the player is on the last stage.
### `gameplay battle damage level3`
### `gameplay extra`

Plays at the end of a final stage if they've reached the Extra Stage criteria. The player has earned the chance to play the extra stage.
### `gameplay cleared`

Plays at the end of a normal stage.
### `gameplay oni failed halfway`

The player has failed at halfway or higher of an Oni course.
### `gameplay oni failed`

The player has failed at <50% of an Oni course.
### `gameplay failed`

The player has failed the stage.

### `gameplay <amount> combo`

The announcer recites the amount of combo the player has achieved without breaking it. The game performs a check for the first 1000 combo, in successions of 100 (100 -> 200 -> 300, etc) in which after that it will then call the [gameplay combo overflow](#gameplay-combo-overflow) sound on every 100 combo.

### `gameplay combo overflow`

Plays every 100 combo after 1000 combo.

### `gameplay combo stopped`

Happens when the player has broken their combo.
The default value for the minimum combo to be broken to play the sound is 50, but can be changed with the metric `Player::ComboStoppedAt`.

### `gameplay battle trick level<n>`

{{<hint type="caution">}}
This is leftover code from In The Groove's alpha inventory system. These have no function today.
{{</hint>}}

Plays when a battle trick occurs. In other terms, when a player as sent a trick to the other player.
Has 3 stages.

### `gameplay battle damage level<n>`

{{<hint type="caution">}}
This is leftover code from In The Groove's alpha inventory system. These have no function today.
{{</hint>}}

Plays when a battle damage occurs. Has 3 stages.

<hr>

The following play on every set amount of seconds defined by the `ScreenGameplay::SecondsBetweenComments` metric.

### `gameplay comment hot`

Plays when a player has their lifebar full.

### `gameplay comment danger`

Player when a player is in danger, which is almost a depleted lifebar.

### `gameplay comment good`

Plays while the player is doing okay in the song. It's the last case from `hot` and `danger`. 

### `gameplay comment oni`

Plays while the player is on a course (either Nonstop, Oni or Endless).

## For ScreenEvaluation

Only one of these sounds will play depending on the condition.

### `evaluation new record`

Plays if any of the players have achieved a record.

### `evaluation full combo W1`

Plays if any of the players has achieved a full combo consisting of only Flawless.

### `evaluation full combo W2`

Plays if any of the players has achieved a full combo consisting of only Excellents.

### `evaluation full combo W3`

Plays if any of the players has achieved a full combo consisting of only Greats.

### `evaluation full combo W4`

Plays if any of the players has achieved a full combo consisting of only Goods.

### `evaluation <Grade>`

Plays if any of the players have achieved any tier related to `<Grade>`. The player with the highest Grade is the one that will be played.

Because of the Tier system in modern SM, the tier is converted into a human readable string, which is represented by an "old grade".
{{<expand "Click here for the list of old grades correspondant to the tier.">}}
| Tier | Old Grade conversion |
| :--: | :------------------: |
Grade_Tier01 | AAAA
Grade_Tier02 | AAA
Grade_Tier03 | AA
Grade_Tier04 | A
Grade_Tier05 | B
Grade_Tier06 | C
Grade_Tier07 | D
Grade_Failed | E
Grade_NoData | N
{{</expand>}}

### `evaluation final <Grade>`

Plays at the summary screen, which is after all stages have been played. Same old grade logic from [evaluation `<Grade>`](#evaluation-grade) applies here.

### `evaluation win`

Plays only on rave mode, when someone wins the match.

### `evaluation lose`

Plays only on rave mode, when someone loses the match.

### `evaluation win`

Plays only on rave mode, when someone wins the match.

{{<hint>}}
There's no internal call to play a sound when the rave match is a draw, but can be added in Lua with [a custom announcer sound](#custom-announcer-sounds).
{{</hint>}}

### `evaluation cheer`

If a player has achieved a grade tier of Tier_03 (A) or higher, after a set amount of seconds, this sound will play. The default is 2.5 seconds.

The amount of time can be changed by editing `ScreenEvaluation::CheerDelaySeconds`.

## For ScreenPlayerOptions

### `player options intro`

A special rule here for the ScreenPlayerOptions screen. This is it's opening announcer comment, [`<Screen Name> intro`](#screen-name-intro) will not work here.

## For ScreenSelectCharacter

### `select group intro`

A special rule here for the ScreenSelectCharacter screen. This is it's opening announcer comment, [`<Screen Name> intro`](#screen-name-intro) will not work here.

## For ScreenNameEntry

### `name entry`

A special rule here for the ScreenNameEntry screen. This is it's opening announcer comment, [`<Screen Name> intro`](#screen-name-intro) will not work here.

## For ScreenEnding

### `music scroll`

A special rule here for the ScreenEnding screen. This is it's opening announcer comment, [`<Screen Name> intro`](#screen-name-intro) will not work here.

# Custom announcer sounds

You may have noticed by peeking into some announcer packs, that they sometimes contain folders that do not follow the naming convention described on [Engine-defined sounds](#engine-defined-sounds). This is because themes can play their any sound from the announcers, without a name limit.

Because of this however, **you need to be wary about compatibility with said announcers on other themes**, as there can be situations where the announcer pack is compatible with the theme it was designed for, and other themes won't play all the sounds that come with the announcer.

An example of custom playback:
```lua
SOUND:PlayAnnouncer("My Custom Sound")
```

If the announcer doesn't contain a folder named `My Custom Sound` with a sound file inside, it will be ignored.