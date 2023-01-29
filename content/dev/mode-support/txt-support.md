---
title: TXT Compatibility
weight: 1
geekdocCollapseSection: true
---

Project OutFox is working on support on the parser for the Karaoke TXT (UltraStar) chart format, which is the standard format used in conjunction with the ``karaoke`` game types. The following page contains details on the Karaoke file parsing options that Project OutFox will support. This is a living document - it will be incomplete as Squirrel finds time to update and confirm/clarify items that are missing or unknown.

---

## TXT Notedata support as of Alpha 0.5.0 - ``TBC``

---

# Headers

The mode uses a selection of headers to set up the song metadata, which appear to be based off of the old BMS style loading mechanisms. We'll list the known ones and whether or not Project OutFox supports them.

_UltraStar_ TXT files only follow the Header metadata of the old BMS system; it uses the ``#COMMAND:KEY`` structure. Something important to note, There are no spaces after the ``:`` in the headers. If you are using a known editor, this won't be a problem. If converting from other karaoke formats, ensure these headers are set up correctly, or most of the simulators will not read your file!

---

An Example Header Section

```
#TITLE:Into My Dream
#ARTIST:Lagoona
#MP3:Into My Dream.ogg
#CREATOR:-YOSEFU- in a Dream
#LANGUAGE:English
#COVER:Into My Dream-bn.mp4
#BACKGROUND:
#VIDEO:Into My Dream-bga.mp4
#BPM:140.000
#GAP:121
#EDITION:OutFox Serenity Volume 2
#GENRE:Trance
#UPDATED:20-oct-2022
#YEAR:2022
#COMMENT:https://projectoutfox.com/
```

---

## NOTE: The chart MUST have the following headers to be considered a valid karaoke file:

>* ``#TITLE``
>* ``#ARTIST``
>* ``#MP3``
>* ``#GAP`` (Offset) (Not all _UltraStar_ versions need this.)
>* ``#BPM``

---

## Common HEADER commands

---

## ``#TITLE:title [string]``
``Status: ✅ Supported``

Usage Example:
```
#TITLE:Into My Dream
```

The title command sets the SongTitle and this will be displayed on the song wheel to be selected, as well on the screen game-play and evaluation screen. It will also be recorded in high scores and on your profile etc.

---

## ``#ARTIST:artist [string]``
``Status: ✅ Supported``

Usage Example:
```
#ARTIST:Lagoona
```
The artist command sets the SongArtist and this is usually displayed on the song wheel when selected and on the evaluation screen. The artist information is usually recorded in high scores and on your profile.

---

## ``#GAP:gap [float]``
``Status: ✅ Supported``

Usage Example:
```
#GAP:121
```
This setting allows the chart to specify the offset to use at the beginning of a song. This has the effect of shifting all the lyrics based on the value entered here. 

The value is in milliseconds, and a positive value will delay the lyrics, a negative value start them sooner. This value is used for songs with instrumentals or lead-ins at the start. 

If the value is not set to 0, then a formula must be used to set the actual time in seconds for the text to be displayed. Using an example line from the lyric (Notedata), we can work it out:

```
: 21 2 2 We've
  ^^
  Second Column
```

(We use the FIRST timestamp and the second column value for this calculation)

The formula to use is:
```
Display Time = Time stamp of first lyric / BPM / 4 * 60 seconds + GAP
```
so replacing this with numbers:
```
21 / 140 / 4 * 60 + 0.121 = 2.371 seconds
```

This means the lyrics will be displayed after 2.371 seconds of the song starting.

Relative files use ``starttime=GAP`` but _Project OutFox_ does not support these files.

---

## ``#BPM:bpm [0.0-1400.00] / [0-1400]``
``Status: ✅ Supported``

Usage Example:
```
#BPM:140.000
#BPM:140
```
This setting allows the chart to specify the beginning (or starting) Beats per minute (BPM) of a song. This value will also be shown in the music wheel. This value used to require a whole number. _Project OutFox_ allows for floats here - you are limited to 6 decimal places - so ``143.000290`` as an example.

This value sets the speed at which the lyrics will display, a high bpm means they will show quickly, and a lower bpm will be slower. Chart creators can use 'double' or 'half' bpm to adjust the lyric speed to help the singer, or to add a slightly different level of difficulty. 

In _UltraStar_ there is sometimes strange behaviour when using ``#BPM`` values of under 120, with the notes moving faster than they should. Most chart creators use a 'double time' BPM to work around this. Bear this in mind! We do not have this issue in _OutFox_, and not all versions of UltraStar have it, so check before you release.

Using floating point values in ``#BPM`` can cause issues with tools and features that work with the txt files, as they can sometimes misinterpret what the `.` or `,` can mean. If possible if you wish to maintain full _UltraStar_ compatibility, use whole number ``#BPM`` values for major support.

---

## ``#MP3:songfile [string]``
``Status: ✅ Supported``

Usage Example:
```
#MP3:Into My Dream.ogg
```

The ``#MP3`` tag is a bit misleading here; it actually should just be ``#SONG`` as it can load several different formats. 

_Project OutFox_ is not limited in wave file bit depth, and supports the following file formats:

wav, ogg, .mp3, .m4a, .FLAC, and .opus. If you plan to make your Karaoke file support other simulators, remember not all of them support these, or have limits on bit depth and sample rates!

For _UltraStar_, if you use audio formats other than mp3, be prepared that those files won't work on all the different systems, and remember any audio format where FFMPEG doesn't need slow indexing for predictive frame access is supported.


---

## ``#GENRE:genre [string]``
``Status: ✅ Supported``

Usage Example:
```
#GENRE:Trance 
```
This command sets the _genre_ or _type_ of music that the chart is going to play. It could be used by the simulator for sorting or grouping charts, or to allow for just more information to be displayed on the song select screen.

---

## ``#EDITION:edition [string]``
``Status: ✅ Supported``

Usage Example:
```
#EDITION:OutFox Serenity Volume 2
```
This command sets the edition of the song, similar to ``ORIGIN`` in SSC files. _UltraStar_ creators often put the game, or TV show, anime etc that the song was originally featured in.

---

## ``#CREATOR:creator [string]`` 
``Status: ✅ Supported``

Usage Example:
```
#CREATOR:-YOSEFU- in a Dream
```

The ``CREATOR`` command simply allows the author that timed the chart to add their credit so it will be displayed in the simulator.

---
## ``#LANGUAGE:language [string]``
``Status: ✅ Supported``

Usage Example:
```
#LANGUAGE:English
```

This command is used to give information on the language of a karaoke chart when a user has international song packs, or plays with different languages installed. _Project OutFox_ at the moment parses this data, but the theme will need to be updated to show this information on the music wheel so it is available to all users.

---

## ``#COVER:cover [string]``
``Status: ✅ Supported``

Usage Example:
```
#COVER:Into My Dream-bn.mp4
```
This command is used to set an image for the song on the music selection screen of the simulator - when the song is scrolled to and is highlighted. 

This can be most image formats, or a video, but remember the limitations, video covers may not work on other karaoke simulations. 

These are usually square in Karaoke, and we will use a theme which uses square covers to ensure compatibility with already created content.

In _Project OutFox_ we call these files _banners_.

---

## ``#VIDEO:videofile [string]``
``Status: ✅ Supported``

Usage Example:
```
#VIDEO:Into My Dream-bga.mp4
```
This command is used to set a video to be played when the song starts on the game-play. It is similar to ``#BACKGROUND`` on SSC files. Remember, OutFox supports BGCHANGES which can be used to add effects and flair to your files, but this would need to be done within an SSC in the editor, when we have added support for karaoke in the future.

This can be most video formats, but remember the limitations, videos may not work on other karaoke simulations!

For _UltraStar_, if you use files with video, be prepared that those files won't work on all the different systems, and remember any video format where FFMPEG doesn't need slow indexing for predictive frame access is supported. It is common for chart creators to use one file for their video which contains the audio for the song within, and this is placed within both the ``#MP3`` and ``#VIDEO`` tags. We will need to add support for these charts in _Project OutFox_.

---

## ``#VIDEOGAP:videogap [float]``
``Status: ❌ Unsupported TBC``

Usage Example:
```
#VIDEOGAP:0.635
```

This setting allows the chart to specify the offset to use for when the video should be started at the beginning of a song. This has the effect of shifting the video playback time.

The value is in seconds, and a positive value will delay the video, a negative value start the video sooner. This value is used for songs which may have a slightly offset video. 

If the value is not set to 0, then a formula must be used to set the actual time in seconds for the text to be displayed. Using an example line from the lyric (Notedata), we can work it out:

```
: 21 2 2 We've
  ^^
  Second Column
```

(We use the FIRST timestamp and the second column value for this calculation)

The formula to use is:
```
Display Time = Time stamp of first lyric / BPM / 4 * 60 seconds + VIDEOGAP
```
so replacing this with numbers:
```
21 / 140 / 4 * 60 + 0.635 = 2.885 seconds
```

This means the video will start after 2.885 seconds of the song starting.

Relative files use ``starttime=VIDEOGAP`` but _Project OutFox_ does not support these files.

It is often that files do not contain the ``VIDEOGAP`` command, when this happens and a video is specified, it will default to start when the song starts, rather than the lyrics.

---

## ``#YEAR:year [int]``
``Status: ✅ Supported``

Usage Example:
```
#YEAR:2022
```

This tag simply sets the year the song was created, and is used as a sort option by other karaoke simulators.

---

## ``#PREVIEWSTART:previewstart [float]``
``Status: ✅ Supported``

Usage Example:
```
#PREVIEWSTART:17.488
```
This value tells the game the time in _seconds_ to play the preview section of the song in the music wheel.

Unlike SM/SSC there is no `#SAMPLELENGTH` in this format that tells the game to loop or reset the point of playback. It will fall back to the default 15 second length when parsing. Most simulators just play from the middle of the song until the end.

As this variable uses the _seconds_ value, it is usable as per the `#SAMPLESTART` SM/SSC variable.

---

## ``#START:start [float]``
``Status: ⌛ TBC``

Usage Example:
```
#START:27.759
```
This value tells the game the time in _seconds_ when to begin the song playback. This is usually used in chart creation, as it can skip a long intro to jump straight to the lyrics/notes, or to test a specific part of the song. 

These are used extensively on 'multi-song' music files that have 'chapters' (One file with different songs inside). These can also be 'parts' of the song, like chorus or verses.

There will usually be one txt file for the complete file, with extra txt files for the 'chapters'.

The main advantage for using this command is not having to create a dozen audio files for the same song, plus merging corrections from the main txt files to the chapter txt files is easier in this method.

---

## ``#END:end [float]``
``Status: ⌛ TBC``

Usage Example:
```
#END:187488
```
This value tells the game the time in _milliseconds_ when to end the song playback. This is usually used in chart creation, as it can stop playing at a specific part of the song. We haven't decided yet on this one, as many of the charts we have found do not use these commands, as we have the end data in the 'NoteData' section below. 

---


## ``#DUETSINGERP1:duetsingerp1 [string]``
## ``#DUETSINGERP2:duetsingerp2 [string]``
``Status: ⌛ TBC``

Usage Example:
```
#DUETSINGERP1:Shrek
#DUETSINGERP2:Donkey
```
These two values tell the game to change the name in _duet_ mode, so instead of just saying ``player1`` and ``player2`` it changes the name listed in that command. Used in charts for a bit of fun. Some _UltraStar_ versions do not support this and will crash, just be warned!


---

## ``#VOCALS:vocalsfile [string]``
``Status: ⌛ TBC``

Usage Example:
```
#VOCALS:song.ogg
```

This command tells the game where vocals version of the song is for the selected chart. I haven't been able to find many uses for this, as many songs seem to have song.ogg in the ``#MP3`` tag, and leave the instrumental (Karaoke) version not used. I guess this is to allow folks to have the vocals in the background when someone is learning the song, or provides an option in game to set either the 'song.ogg' or 'instrumental.ogg' versions.

_Project OutFox_ will likely have an option to select which one to use in time at the music wheel, if these are found, but if you know any other information about the `#VOCALS` tag, please let Squirrel know via our Discord server!

In earlier versions of _UltraStar_ on older files, ``#MP3`` would have the instrumental version, and ``#VOCALS`` would contain an a cappella track with just the vocals, and the game would mix the two together when selected to play the full track.

---

## ``#RESOLUTION:resolution [1-16]``
``Status: ❌ Not Supported``

Usage Example:
```
#RESOLUTION:4
```

This command seems to be an _UltraStar_ editor only value that affects the lines drawn on beats, with every ``#RESOLUTION`` beat being drawn black. It defaults to a value of `4`, and should not be set to `0` as it can make the game unstable.

We have no plans to support this in _Project OutFox_, as our editor is different.

---

## ``#RELATIVE:relative [0/1]``
``Status: ❌ Not Supported``

Usage Example:
```
#RELATIVE:0
```

This value defaults to 0 if it is not added to the header part of the chart. _Project OutFox_ does not support this value, as it was used some time ago as an alternative method of charting. What this command does is it makes each line set _relative_ to itself. The _timestamp_ (Column 2) is reset to 0 for each line. The engine would need to keep a 'running tally' of the beats/time separately in this mode. We have spoken to a few people in regards to supporting this value, but most say it is deprecated/legacy and it is not used often enough to warrant adding the code for it.

If the demand is there, we can look at supporting it, but for the first instance, we will not.

Note data in this mode is also set up differently as it resets on each line as so:

```
: 0 2 2 Some
: 3 3 2 body
: 7 4 2  once
: 12 3 4  told
* 16 9 6  me
- 36
: 0 3 4 the  <-- Resets here to 0
: 4 6 2  world
: 12 7 4  is
: 20 7 6  gon
: 23 4 6 na
```

The timestamp resets to 0 on each line, rather than counting from the beginning of the song. These files are considered legacy in the community, and will be ignored by _Project OutFox_ when parsing. You will see a warning in the log about the file being unsupported, but the game will not crash like some other simulators.

---
# NoteData
---

Example NoteData:

```
: 0 2 2 Some
: 3 3 2 body
: 7 4 2  once
: 12 3 4  told
* 16 9 6  me
- 36
: 40 3 4 the
: 44 6 2  world
: 52 7 4  is
: 60 7 6  gon
: 63 4 6 na
E
```

---

### Lyric / Note Data Column Commands

The note data is arranged in five columns for lyrics, but there are exceptions. When a new line is required, there are only two or three columns, and to set a player or end a song, there is only one. We will go through these below.

For a lyric note it is typically arranged as so:
Column 1|Column 2|Column 3|Column 4|Column 5
--------|--------|--------|--------|--------|
Note Type|Beat Start TimeStamp|Beat Length TimeStamp|Pitch / MIDI note|Lyric / Syllable
 `:` |0 |2 |2 |Some

---
### Line Break Column Commands

A Line break is arranged as so:

Line Break|Beat start|(Beat End)|
--------|--------|--------|
 `-` |36 |

Note it is optional to include the beat end, as for the line break, the first number sets when the _previous_ line disappears and the second one when included, sets when the _next_ line appears. This is useful for controlling lyric lines on fast songs, or when you want to control slower lyrics that may disappear too soon, or too slowly. 


Line Break|Beat start|(Beat End)|
--------|--------|--------|
 `-` |132 |264|

Line breaks with two numbers usually are used when there are songs which have a long instrumental or solo break where there are no lyrics for a time. This prevents the game placing up the next line of words too early, and allows the player to enjoy the solo/instrumental.

---

### Single Column Note Commands 

Note Type|
--------|
P1|
P2|
P3|

These types are for player set lyrics in _duet_ mode. (See below)

Note Type|
--------|
E|

This command sets the ending of the track, placed at the very end of the file. Do not place anything after this, as your file will not be considered clean.

---
## Column One 

```
: 0 2 2 Some
: 3 3 2 body
: 7 4 2  once
^
Column One
```

The first column is usually a single character, except for _duet_ mode (see below). They tell the game how to display the note, or if the note is freestyle, a bonus, or a line break. Every chart also has an 'ending note' which is placed at the end of the chart when the last lyric note is finished.

The table below lists all the note types that _UltraStar_ commonly uses, and a definition of what those notes do in game. Do ensure you follow the correct layouts and setup for your chart, as the simulator will ignore it if there are any errors!

### Karaoke "Note" Types

The file uses line beginnings to set the 'note type' (lyric type) that the player will see on the screen. _UltraStar_ supports a range of these, and they will be detailed below.

>* ``#`` = _Commands_ in the note data section are ignored. Some versions of _UltraStar_ will crash if this character is found, and your chart will not be considered a 'clean' txt with any of these characters at the beginning of a line.

>* ``:`` = _Regular Note_. This is one of the most common things you will see in the chart, as it sets most of the song lyrics to be displayed on the screen. These lyrics can be assigned to either Player 1 or Player 2 if that note type is seen before a block, (see P1/P2 below).

>* ``*`` = _Golden Note_. This note often has a sparkly or glow/shine affect around it in game to show the player it is a special note. The notes hit are set for 'pitch' accuracy and can account for up to 10% of the players' final score if hit correctly. It is worthwhile tuning those vocal chords (or humming chords)!

>* ``F`` = _Freestyle Note_. This note (or syllable) is usually displayed without a 'pitch' value in game. This allows for songs which have 'spoken word' or normal 'dialogue' pieces, where the singer only needs to speak. These notes sometimes show up when a 'clap' is required in the song as well on some rarer charts.

>* ``R`` = _Rap Note_. This note (or syllable) is usually displayed without a 'pitch' value in game. This allows for songs which have rapping or rhyming style sections, which need to finish on time (OutFox special mode), or the player can be punished. Most simulators do not follow the 'finish on time' rules, and just require the singer to reach a specific input loudness when rapping on per beat analysis.

>* ``G`` = _Rap Golden Note_. This note (syllable) is displayed with a sparkly or glow/shine affect around it in game to show the player it is a special note. It has the affects of the _Rap Note_ above.

>* ``-`` = _Line Break 'Note'_. See 'Line Break Column Commands' above for more details.

>* ``P1`` = _Player 1 note_. Set Lyrics to Player 1 (Duet only). This allows for songs that require two singers to have distinct colours that signifies player 1 should be singing. This note sets the chart to a _duet_ (see below), which means it is more like a 'doubles' or 'couples' song in the _Project OutFox_ engine.

>* ``P2`` = _Player 2 note_. Set Lyrics to Player 2 (Duet only). This allows for songs that require two singers to have distinct colours that signifies player 2 should be singing. This note sets the chart to a _duet_ (see below), which means it is more like a 'doubles' or 'couples' song in the _Project OutFox_ engine.

>* ``P3`` = _Both Players note_. Set Lyrics to BOTH players (Legacy Duet charts only). This allows for songs that require two singers to have a distinct colour that signifies both player 1 and player 2 should be singing. The use of ``P3`` is not common, and we want to use ``P3`` as a third player in a future _Harmony_ option for ``karaoke`` mode.

>* ``E`` = _End Chart note_. This character is placed as the end of the chart to set the ending time of the song, and on some versions of _UltraStar_ can be overwritten by ``#END``, though this is uncommonly used by modern charters these days.

### OutFox Specific Player Blocks

>* ``P3`` = _Player 3 note_. Set Lyrics to Player 3 (Harmony only). This allows for songs that require three singers to have distinct colours that signifies player 3 should be singing. This note sets the chart to a _harmony_ chart, and is only supported in _Project OutFox_.

>* ``P4`` = _Player 4 note_. Set Lyrics to Player 4 (Harmony only). This allows for songs that require four singers to have distinct colours that signifies player 4 should be singing. This note sets the chart to a _harmony_ chart, and is only supported in _Project OutFox_.

>* ``P5`` = _Player 5 note_. Set Lyrics to Player 5 (Harmony only). This allows for songs that require five singers to have distinct colours that signifies player 5 should be singing. This note sets the chart to a _harmony_ chart, and is only supported in _Project OutFox_.

---

## Column Two

```
: 0 2 2 Some
: 3 3 2 body
: 7 4 2  once
  ^
  Column Two
```

This column value is in _beats_ and sets the time in the chart when the lyric or syllable appears. This is dependent on BPM, with higher BPM songs showing the note sooner, and lower BPM will take longer to show. Although _Project OutFox_ supports BPM changes and gimmicks, the format itself provides no options for this at all.

---

## Column Three

```
: 0 2 2 Some
: 3 3 2 body
: 7 4 2  once
    ^
    Column Three
```

This column value is in _beats_ and specifies the length of time the lyric or syllable lasts. In the example above, the syllable of 'Some' lasts for 2 beats, with 'body' coming in on beat 3. This is important to remember as technically you cannot sing two notes at the same time, and it will be impossible to score this. 

Many simulators will either throw an error or crash on badly formed charts if syllables overlap, for example if 'Some' finished on beat 2, but 'body' started on beat 1, this would be considered an overlap. However, 'body' could start on beat 2 as 'Some' would be considered complete, this is accepted. Just ensure that you never overlap your syllables! 

---

## Column Four

```
: 0 2 2 Some
: 3 3 2 body
: 7 4 2  once
      ^
      Column Four
```

This column is responsible for the musical _pitch_ of the syllable or lyric that the singer is expected to match or reproduce as the words are displayed on the screen. 

Most _UltraStar_ clients are limited to displaying a single _octave_ on the screen that the singer can see.

![ultrastar client grid](ultrastar.png)

>* Without going into too much musical theory, that is usually `C` -> `C`. (If you remember the _`"doe ray me far so la tea doe"`_ song from the _Sound of Music_ These were the main notes of the _octave_.)

At this moment in time we haven't confirmed how our _pitch grid_ will be constructed, as we do not have the limitations of _UltraStar_ or it's derivatives. If you have any thoughts on this, do pop into the discord and give us them!

The values used in the _UltraStar_ karaoke files start at `0`. I have done a lot of research around the internet, and some people claim that this begins at `C3`, `C1`, `C0`, even `C5` in one case!

But balancing a midi file of several example tracks and then cross referencing those notes with the syllables / lyric notes provided in the karaoke file shows that the `0` almost always runs on _`middle C`_ or _`C4`_. We have learned that the game shifts the notes by `60` (Middle C MIDI Note) and bases the chart parsing of _`C0`_ = `0`.

The following picture shows a standard piano 88 key layout. I have put this here to show how the format works out _pitch_ and where to put the syllable layout on the screen.

![pitch notation C4](pitchnotation.png)
###### A common layout showing C4 (Middle C)

Let's take a few lines from an _UltraStar_ file:

```
: 0 5 4 Hey,
: 9 6 4  hey,
: 18 4 4  eve
: 23 3 4 ry
: 28 4 6 bo
: 33 4 8 dy!
```

Lets take the note values in column four: 
`` 4 4 4 4 6 8 ``.

Using the piano layout above, count right the number of piano keys to match the numbers, remembering to count the sharp `#` black keys as well!

Four notes on from `C4` is `E4`, six notes on from `C4` is `F4#`, and eight notes on from `C4` is `G4#`. So replacing the numbered notes in musical notation:
`` E E E E F4# G4# ``. These are the values the game uses for pitch matching, and to display on the pitch grid on screen.

This notation also works for negative numbers, you simply count backwards from `C4` if the notes required are a lower pitch. Some songs do indeed have the whole base notes below 0, but this is often common with some genres. Be warned not every _UltraStar_ version supports this!

Most songs that have been charted tend to be within a 6 to 12 note range, so the pitch grids are not massive, and also to prevent the issue on some _UltraStar_ clients where a note from a higher _Octave_, for example if the chart starts at `G4` and there is a note for `G5` this higher note would be drawn in the same place as the lower note, as the note would be considered an 'overflow', and would just be in the normal `G4` row on screen.

We will add support to shift key for singers in _Project OutFox_ to make it easier for players to sing in their natural range.

---

## Column Five

```
: 0 2 2 Some
: 3 3 2 body
: 7 4 2  once
        ^
        Column Five
```

As I am sure you have realised by this point, there has been a glaring error in column 5 on this little example song code snippet! ``body`` has two syllables and should be on two different lines!

As you can probably tell by now, this column represents the syllable or 'lyrics' that the player will sing in time to the music.

Each line in the chart specifies a syllable, it's duration, the pitch, and the time (in beats) it is meant to be sung. This format does not support 'pitch bending' during a syllable, to 'support' this, extra lines are often added which have simply a `~` for the syllable, to show that this is a 'long' syllable to the singer. If we were to extend 'Some' above, with a different pitch, the chart would be:

```
: 0 2 2 Some
: 2 2 4 ~
: 4 3 2 body
```

The game would show ``Some~`` which is used to tell the singer that there is a pitch change, and to sing it as a different pitch.

Another important thing to realise is that the words in column 5 will automatically be joined together. If you forget where your spaces are, you will end up having a sentence with no spaces!

Let's take this chart we used for the column four example:
```
: 0 5 4 Hey,
: 9 6 4  hey,
: 18 4 4  eve
: 23 3 4 ry
: 28 4 6 bo
: 33 4 8 dy!
```

You can see that there are spaces added at the _beginning_ of the lines for `" hey,"` this is by design; you must pick your space arrangement when making your charts, some editors use 'space first', and some use 'space last'. 'Space last' places a space after the syllable, so would not begin with one. In the example above, the game would show ``"Hey, hey, everybody!"`` in the lyric section.

If you are creating charts yourself and tend to leave spaces at the end of lines, or use windows a lot, do take care to see where these spaces are in the file. We will write the parser to support both spacing modes, as is commonly done by _UltraStar_ clients.

---

# Duet Mode

This mode is available for songs which have two singers handling different parts of the song, and often singing the chorus together.

Each player sings their words, and are scored as normal on the words they sing only.

In txt files, these are split up with the use of ``P1`` and ``P2`` in the note section of the file, with many charts _repeating_ words which are sung by both players, but there has been a few charts that use ``P3`` for this. 

In _Project OutFox_ we're planning to add a 'Harmony' Mode which could support up to five or six singers at once, and this would require the availability of ``P3`` to P6, so it is likely where we will go on this, as ``P3`` usage does not seem common in almost all charts.




---
_Written and Maintained with ♡ by Squirrel, with updates from barbeque, and support from Twilight from UltraStar Play, with thanks to My Little Karaoke and the UltraStar community, and Kokairu for their blog at https://thebrickyblog.wordpress.com_