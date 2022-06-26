---
Title:Adding/Manipulating notes
---

Â<!-- TODO: Add images demonstrating each note type. -->

In the editor, you can add notes by using the 1-0 keys on the keyboard, which correspond to the column
on the current mode you're in.

Determining the type of note to use is set via the N/M keys, which change the type of notes to the following list:

- Tap
The regular note type, adds tap notes when using the 1-0 keys. While holding left shift, it creates a roll note 
depending on how long you hold the column specific key. Holding the column key alone creates a long note, otherwise
known as a Hold, which requires players to hold the button until the entire hold has transpired.

- Mine
This note should be avoided by the player, as they lose life if they hit it.
Holding Left Shift will create a roll-based MineField, which is a hold note that should be avoided, as any press
can cause the player to lose life.
Holding the column key alone will create a hold-based Minefield, which behaves the same way as the roll version.

- Lift
These notes require the player to release the column when the note arrives to its corresponding receptor.
Creating holds or rolls (Left Shift) in this mode creates a Lift-Hold/Roll, which behaves like a regular hold or roll,
but contains a lift at the end, which requires the player to perform the same action as a lift, releasing at the right time at the
end of the hold/roll.

- Fake
These notes are purely visual, and do not affect score. They can be used to confuse the player or to construct visual gimmicks.
Currently holds/rolls created in this mode will be transformed to regular holds/rolls from the Tap type.

##Â The Alter Menu

### Beat
This option allows you to either compress or expand a selected area in both notes
and timing, which can be useful if you want to create areas that have a faster or slower feeling.

### Stutter segment
Introduced in OutFox Alpha ??, this option generates a "stutter" segment, which comprises of each note including
a stop that retains the original timing of the song, giving the illusion of multiple stops in quick succession.
An option is included to toggle the inclusion of mines in the calculation, if they're off, mines are skipped in the calculation
and are not stopped in playback.

### Play Selection
Plays the currently selected section. Once the cursor has passed the section, it will be looped.

### Record Selection
Allows you to record the currently selected section. This mode enters Record Mode, where you can use the regular keys
to place notes in real time with the music.

### Assign as Preview
Makes the current selection become the music preview that is played while selecting the song. Note that most themes
have a potential fade out of about 3 seconds.

### Convert selection to stop
Converts the selected area into a stop, by compressing the area and placing a stop with the duration of the selection. Keep in mind however that any notes that are included inside the area will be deleted.

### Convert selection to delay
Converts the selected area into a delay, by compressing the area and placing a delay with the duration of the selection. Keep in mind however that any notes that are included inside the area will be deleted.

For information about the difference between stops and delays, check out [Defining Timing Data](./1-Defining-Timing-Data.md).

### :
