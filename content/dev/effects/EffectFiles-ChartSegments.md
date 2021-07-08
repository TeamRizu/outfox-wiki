---
title: Chart segments
weight: 2
---

Gimmick charts often involve a large amount of BPM changes or stops to create various effects like stutters, wave-type scrolling or switching notes with other types of notes (ex: notes become mines).

This is done with "segments". One can have many instances of a segment type.

The SSC simfile format has extra "segments", which allow for other effects. The following list notes what is available and what it is supposed to do.

## SM-era segments

These segments can be found in .sm files, but they can also be in .ssc files, too.

### BPM changes (BPMS)

Every chart has a BPM, but it doesn't have to stay at one BPM. Some songs do change BPM throughout, but some charts do this for doing stutters (when combined with stops) or having notes speed towards or slow down. Visually ignored if CMod is used (But may result in weird spacing with regards to note quantization).

In the simfile, it's listed as the beat the change happens, and then the BPM to change to. The BPM listed at beat 0 is the starting BPM.

In SM3.95 and oITG/nITG, negative BPMs can be used to 'warp' through the chart. SM5 converts these to warp segments automatically, but the result may not be perfect. (SM3.95 can use this to make autohit notes, or artificially lower the possible score. SM5 can't)

`#BPMS:0.000=256.000,42.000=128.000,56.000=256.000;`
(ex: a chart that starts at 256 BPM, changes to 128 BPM at beat 42, then changes back to 256 BPM at beat 56)

### Stop segments (STOPS)

Stop segments tell the game to stop scrolling the chart for a given amount of seconds. Visually ignored if CMod is used.

This also makes the beat stop while one is active. (So, if you were printing the beat, it would stop incrementing during the stop segment)

In the simfile, it's listed as the beat the stop happens, and then how long the stop is (in seconds).

<!-- TODO: I think negative stops are a thing in oITG/SM3.95, what does it do??? What does SM5 do with it??? -->

`#STOPS:27.000=3.141;`
(ex: at beat 27, the chart stops scrolling for 3.141 seconds)

### Keysounding (KEYSOUNDS)

<!-- TODO: How does this even work -->

## SSC-era segments

When SSC created the .ssc format, new segment types were added.

### Delay segments (DELAYS)

<!-- TODO: How does this even work -->

### Warp segments (WARPS)

Tells the game to teleport foreward a given number of beats into a chart. Any notes that are skipped get counted as fake.

In simfile, it's listed as the beat it happens, then how many beats foreward to teleport.

```
#WARPS:28.000=4.000;
```
(ex: at beat 28, teleport foreward by 4 beats.)

### Time Signature segments (TIMESIGNATURES)

<!-- TODO: How does this even work -->

### Tick Count segments (TICKCOUNTS)

<!-- TODO: How does this even work -->
Sets how many hold ticks happen in a hold per measure. <!--TODO: Or was it per beat?--> Starting value defaults to 4. Only really used in pump mode, due to other games not having hold checkpoints.

In simfile, it's listed as the beat it happens, then the actual tickcount amount.

```
#TICKCOUNTS:0.000=4,
28.000=8
```
(ex: At beat 28, a hit becomes 2 combo, and a miss becomes 4 misses.)

### Combo segments (COMBOS)

Sets how much combo a hit or miss adds. The default is 1/1, which means a hit gets 1 combo and a miss gets 1 miss.

In simfile, it's listed as the beat it happens, how much combo a hit is and then how much combo a miss is. If a single number is listed, both hits and misses get the same value. Weird behavior, such as underflows can happen if negative values are used.

```
#COMBOS:0.000=1,
28.000=2=4;
```
(ex: At beat 28, a hit becomes 2 combo, and a miss becomes 4 misses.)

### Speed segments (SPEEDS)

Sets the speed of the chart by ratio. 1 is the normal speed. If given a length of 0, the change happens instantly. The default starts with a speed of 1, applying at beat 0 instantly. Visually ignored if CMod is used.

In simfile, it's listed as the beat it happens, the speed to go to, how long the change takes and whether it's in beats or seconds.

```
#SPEEDS:0.000=2.000=0.000=0,
16.000=4.000=1.000=0,
24.000=1.000=2.000=1;
```
(ex: Chart starts at a speed of 2, on beat 16, it turns to a speed of 4 in 1 beat, and on beat 24, it turns to a speed of 1 in 2 seconds.

### Scroll segments (SCROLLS)

Allows one to alter the scrolling factor for a section (as opposed to the whole field). When given a factor of 0, the chart stops visibly scrollnig, but notes can still be hit. Visually ignored if CMod is used.

In simfile, it's listed as the beat it happens, and then the factor to switch to.
```
#SCROLLS:0.000=1.000,
24.000=0.000,
28.000=2.000;
```
(ex: The chart starts with a factor of 1, switches to a factor of 0 at beat 24, and switches to a factor of 2 at beat 28)

### Fake segments (FAKES)

Allows one to mark a section of the chart as fake, which means the notes can't be hit or judged.

In the simfile, it's listed as the beat the fake segment is at, and then how long the section is in beats.

`#FAKES:24.000=8.000;`
(ex: at beat 24, don't judge the notes for 8 beats)

### Label segments (LABELS)

Allows one to mark the start of a section with a name. The default label is "Song Start" at beat 0.

In the simfile, it's listed as the beat the label is at, and then the name of the label.

`#LABELS:0.000=Song Start;`

NotITG has an advanced version called "Spellcards", which have a start beat, end beat, difficulty, name and color
