---
title: TXT Compatibility
weight: 1
geekdocCollapseSection: true
---

Project OutFox is working on support on the parser for the Karaoke TXT (UltraStar) chart format, which is the standard format used in conjunction with the ``karaoke`` game types. The following page contains details on the Karaoke file parsing options that Project OutFox will support. This is a living document - it will be incomplete as Squirrel finds time to update and confirm/clarify items that are missing or unknown.

---

## TXT Notedata support as of Alpha 0.5.0 - ``TBC``

---

## Headers

---

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
>* ``#GAP`` (Offset)
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

```: 21 2 2 We've```

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

## ``#BPM:bpm [0.0-1400.00]``
``Status: ✅ Supported``

Usage Example:
```
#BPM:140.000
```
This setting allows the chart to specify the beginning (or starting) Beats per minute (BPM) of a song. This value will also be shown in the music wheel. This value used to require a whole number. _Project OutFox_ allows for floats here - you are limited to 6 decimal places - so ``143.000290`` as an example.

This value sets the speed at which the lyrics will display, a high bpm means they will show quickly, and a lower bpm will be slower. Chart creators can use 'double' or 'half' bpm to adjust the lyric speed to help the singer, or to add a slightly different level of difficulty. 

---

## ``#MP3:songfile [string]``
``Status: ✅ Supported``

Usage Example:
```
#MP3:Into My Dream.ogg
```

The ``#MP3`` tag is a bit misleading here; it actually should just be ``#SONG`` as it can load several different formats. It will support ogg, .mp3, .m4a, .FLAC, and on OutFox .opus. If you plan to make your Karaoke file support other simulators, remember not all of them support opus!

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

```: 21 2 2 We've```

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
This value tells the game the time in _milliseconds_ to play the preview section of the song in the music wheel.

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

---

## ``#END:end [float]``
``Status: ⌛ TBC``

Usage Example:
```
#END:187.488
```
This value tells the game the time in _seconds_ when to end the song playback. This is usually used in chart creation, as it can stop playing at a specific part of the song. We haven't decided yet on this one, as many of the charts we have found do not use these commands, as we have the end data in the 'NoteData' section below. 

---

## ``#RELATIVE:relative [0/1]``
``Status: ❌ Not Supported``

Usage Example:
```
#RELATIVE:0
```

This value defaults to 0 if it is not added to the header part of the chart. _Project OutFox_ does not support this value, as it was used some time ago as an alternative method of charting. What this command does is it makes each line set _relative_ to itself. The _timestamp_ is reset to 0 for each line. The engine would need to keep a 'running tally' of the beats/time separately in this mode. We have spoken to a few people in regards to supporting this value, but most say it is deprecated/legacy and it is not used often enough to warrant adding the code for it.

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
## NoteData
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
Note Type|Beat start|Beat Length|Pitch / MIDI note|Lyrics
-------|--------|--------|--------|--------|
_:_ |0 |2 |2 |Some

---
### Line Break Column Commands

A Line break is arranged as so:

Line Break|Beat start|(Beat End)|
-------|--------|--------|
 _-_ |36 |

Note it is optional to include the beat end, as for the line break, the first number sets when the _previous_ line disappears and the second one when included, sets when the _next_ line appears. This is useful for controlling lyric lines on fast songs, or when you want to control slower lyrics that may disappear too soon, or too slowly. 


Line Break|Beat start|(Beat End)|
-------|--------|--------|
 _-_ |132 |264|

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

## Column One 

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

>* ``P3`` = _Both Players note_. Set Lyrics to BOTH players (Duet only). This allows for songs that require two singers to have a distinct colour that signifies both player 1 and player 2 should be singing. This note sets the chart to a _duet_ (see below), which means it is more like a 'doubles' or 'couples' song in the _Project OutFox_ engine.

>* ``E`` = _End Chart note_. This character is placed as the end of the chart to set the ending time of the song, and on some versions of _UltraStar_ can be overwritten by ``#END``, though this is uncommonly used by modern charters these days.

---

## Column Two

This column value is in _beats_ and sets the time in the chart when the lyric or syllable appears. This is dependent on BPM, with higher BPM songs showing the note sooner, and lower BPM will take longer to show. Although _Project OutFox_ supports BPM changes and gimmicks, the format itself provides no options for this at all.

---

## Column Three

```
: 0 2 2 Some
: 3 3 2 body
: 7 4 2  once
```

This column value is in _beats_ and specifies the length of time the lyric or syllable lasts. In the example above, the syllable of 'Some' lasts for 2 beats, with 'body' coming in on beat 3. This is important to remember as technically you cannot sing two notes at the same time, and it will be impossible to score this. 

Many simulators will either throw an error or crash on badly formed charts if syllables overlap, for example if 'Some' finished on beat 2, but 'body' started on beat 1, this would be considered an overlap. However, 'body' could start on beat 2 as 'Some' would be considered complete, this is accepted. Just ensure that you never overlap your syllables! 

---

## Column Four




_Written and Maintained with ♡ by Squirrel, with thanks to My Little Karaoke and the UltraStar community, and Kokairu for their blog at https://thebrickyblog.wordpress.com_