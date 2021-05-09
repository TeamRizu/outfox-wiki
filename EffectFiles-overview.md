# "Effect" Simfiles

Normal gameplay is as follows: Notes move up or down towards the target on a usually static background, and the player hits the notes when they reach the target. Simple.

Effect simfiles change this up, which can result in interesting gameplay results.

There are multiple 'catagories' of effect files:
- "Gimmick" charts
 - While not really an 'effect', per-say, gimmick charts can change up how one reads a chart.
 - A single BPM or stop doesn't really count as a 'gimmick'.
 - Done with SM or SSC chart segments.

- "BGA" charts
 - Uses BGChanges to load lua or image files to alter the Background of a song. Can be used to add in visual effects as needed.

- "Foreground" charts
 - Uses FGChanges to load lua files that can alter or obstruct the player's view of the notefield
 - Requires one to keep track of notes and the notefield itself.

- "Modifier" charts (or "modcharts"/"modfiles")
 - Usually uses FGChanges or BGChanges to load lua files that can script modifiers to run at given points of the song.
 - Requires one to use various information given, such as column order, note color or direction to figure out what note to hit and when to hit it.
 - Older mod charts tend to use course files or the #ATTACKS field in simfiles to apply scripted modifiers.
 - Newer mod charts tend to hide the UI, which allows for more screen-estate when utilizing modifiers.

These are not mutually exclusive categories. One simfile could be a combination of "Foreground" and "Modifier", while another could be a combination of "Gimmick" and "Foreground".