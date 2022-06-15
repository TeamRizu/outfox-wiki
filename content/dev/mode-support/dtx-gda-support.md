---
title: DTX & GDA/G2D Support
weight: 1
geekdocCollapseSection: true
---

_Preview shot of this mode from Alpha 4.9.8 with fallback theme_
![gddm](https://user-images.githubusercontent.com/11047768/115624151-1e5b0900-a2f2-11eb-86db-1e0ad0283214.png)


Project OutFox contains parsers for the DTX and GDA/G2D chart formats, which are the standard formats used in conjunction with the ``gddm`` and ``gdgf`` game types. The following table contains details on the DTX/GDA/G2D channels that Project OutFox currently supports.

We have recently added parsing support for the guitar/bass side of this chart format, and we will also look at creating a new easier to use format for gdgf in the future which supports 3/5 and 6 fret which has been requested by our community.

## DTX/GDA Notedata support as of Alpha 4.12.0

---
## New for Alpha 4.12.0 - SHIFT-JIS, UTF8 and UTF16LE Support!

This alpha includes complete support for all types of dtx/gda files, no matter which creator made it, including the newer standards. You do not need to change locale on windows, nor convert the encoding, the game will just load them up.

### Table of Symbols
---
Key: | Comment
---|---
 ✅   | Fully supported and used in Mode
 ✓    | Fully supported, but not used in this Mode
 📝?  | No Documentation on this channel's support
 ⌛   | Game Supports this, but awaiting on documentation
 ❌	 | Not Supported / Not Available
 ~ |Not Used

---
### Channel Support Table
---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
01|Background Music|✅|Background Music|✅|✅|Supported
02|Measure Multiplication factor|✅|Measure Multiplication factor|✅|✅|Supported in 4.10.0
03|Set Initial BPM|✅|Set Initial BPM|✅|✅|Supported
04|BG Layer 1|✅|BG Layer 1|✅|✅|Supported - needs enabling
05|eXtended Object|✅|eXtended Object|✅|📝?|Supported
06|Not Used|✓|Not Used|✓|~|Supported - needs enabling
07|BG Layer 2|✅|BG Layer 2|✅|✅|Supported - needs enabling sits above channel 4
08|Extended BPM|✅|Extended BPM|✅|✅|Supported - Changes bpm to value
09|Not Used|✓|Not Used|✓|~|Supported
0A|Not Used|✓|Not Used|✓|~|Supported
0B|Not Used|~|Not Used|~|~|Not Used
0C|Not Used|~|Not Used|~|~|Not Used
0D|Not Used|~|Not Used|~|~|Not Used
0E|Not Used|~|Not Used|~|~|Not Used
0F|Not Used|~|Not Used|~|~|Not Used
10|Not Used|~|Not Used|~|~|Not Used
11|HiHatClose|✅|HiHatClose|✅|✅|Supported
12|Snare|✅|Snare|✅|✅|Supported
13|Bass Drum|✅|Bass Drum|✅|✅|Supported
14|High Tom|✅|High Tom|✅|✅|Supported
15|Low Tom|✅|Low Tom|✅|✅|Supported
16|Cymbal|✅|Cymbal|✅|✅|Supported
17|Floor Tom|✅|Floor Tom|✅|✅|Supported
18|High Hat Open|✅|High Hat Open|✅|✅|Supported
19|Ride Cymbal|✅|Ride Cymbal|✅|✅|Supported
1A|Not Used|~|Left Cymbal|✅|✅|Supported
1B|Not Used|~|Left Pedal|✅|✅|Supported
1C|Not Used|~|Left Bass Drum|✅|✅|Supported
1D|Not Used|~|Not Used|~|~|Not Used
1E|Not Used|~|Not Used|~|~|Not Used
1F|Drums Fill in Sound|✅|Drums Fill in Sound|✅|✅|Supported

---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
20|Guitar OPEN|✅|Guitar OPEN|✅|✅|Supported in 4.10.0
21|Guitar xxBxx|✅|Guitar xxBxx|✅|✅|Supported in 4.10.0
22|Guitar xGxxx|✅|Guitar xGxxx|✅|✅|Supported in 4.10.0
23|Guitar xGBxx|✅|Guitar xGBxx|✅|✅|Supported in 4.10.0
24|Guitar Rxxxx|✅|Guitar Rxxxx|✅|✅|Supported in 4.10.0
25|Guitar RxBxx|✅|Guitar RxBxx|✅|✅|Supported in 4.10.0
26|Guitar RGxxx|✅|Guitar RGxxx|✅|✅|Supported in 4.10.0
27|Guitar RGBxx|✅|Guitar RGBxx|✅|✅|Supported in 4.10.0
28|Guitar Wail|✅|Guitar Wail|✅|✅|Supported in 4.10.0
29|Not Supported|~|Not Supported|~|~|Not Supported
2A|Not Supported|~|Not Supported|~|~|Not Supported
2B|Not Used|~|Not Used|~|~|Not Used
2C|Not Used|~|Guitar Long Note Start/End Point|⌛|✅ AL|Not Supported
2D|Not Used|~|Bass Long Note Start/End Point|⌛|✅ AL|Not Supported
2E|Not Used|~|Not Used|~|~|Not Used
2F|Guitar Wailing Sound|✅|Guitar Wailing Sound|✅|✅|Supported in 4.10.0

---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
30|Rate Speed|~|Rate Speed|~|~|Not Used
31|HiHatClose Hidden Note|✅|HiHatClose Hidden Note|✅|✅|Supported
32|Snare Hidden Note|✅|Snare Hidden Note|✅|✅|Supported
33|Bass Drum Hidden Note|✅|Bass Drum Hidden Note|✅|✅|Supported
34|High Tom Hidden Note|✅|High Tom Hidden Note|✅|✅|Supported
35|Low Tom Hidden Note|✅|Low Tom Hidden Note|✅|✅|Supported
36|Cymbal Hidden Note|✅|Cymbal Hidden Note|✅|✅|Supported
37|Floor Tom Hidden Note|✅|Floor Tom Hidden Note|✅|✅|Supported
38|High Hat Open Hidden Note|✅|High Hat Open Hidden Note|✅|✅|Supported
39|Ride Cymbal Hidden Note|✅|Ride Cymbal Hidden Note|✅|✅|Supported
3A|Not Used|~|Left Cymbal Hidden Note|✅|✅|Supported
3B|Not Used|~|Left Pedal Hidden Note|✅|✅|Supported
3C|Not Used|~|Left Bass Drum Hidden Note|✅|✅|Supported
3D|Not Used|~|Not Used|~|~|Not Used
3E|Not Used|~|Not Used|~|~|Not Used
3F|Not Used|~|Not Used|~|~|Not Used

---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
40|Not Used|~|Not Used|~|~|Not Used
41|Not Used|~|Not Used|~|~|Not Used
42|Not Used|~|Not Used|~|~|Not Used
43|Not Used|~|Not Used|~|~|Not Used
44|Not Used|~|Not Used|~|~|Not Used
45|Not Used|~|Not Used|~|~|Not Used
46|Not Used|~|Not Used|~|~|Not Used
47|Not Used|~|Not Used|~|~|Not Used
48|Not Used|~|Not Used|~|~|Not Used
49|Not Used|~|Not Used|~|~|Not Used
4A|Not Used|~|Not Used|~|~|Not Used
4B|Not Used|~|Not Used|~|~|Not Used
4C|Bonus 04|✅|Bonus 04|✅|✅|Supported in 4.10.0
4D|Bonus 03|✅|Bonus 03|✅|✅|Supported in 4.10.0
4E|Bonus 02|✅|Bonus 02|✅|✅|Supported in 4.10.0
4F|Bonus 01|✅|Bonus 01|✅|✅|Supported in 4.10.0

---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
50|Show Beat Line|❌|Show Beat Line|⌛|✅|Not Supported
51|Show Measure Line|❌|Show Measure Line|⌛|✅|Not Supported
52|MIDI Drum Chorus|❌|MIDI Drum Chorus|❌|✅|Not Supported
53|Fill In|~|Fill In|~|~|Not Supported
54|Video Playback|✅|Sync Video Playback|✅|✅|Supported in 4.11.0
55|BGA Layer 3|❌|BGA Layer 3|❌|✅|Not Supported
56|BGA Layer 4|❌|BGA Layer 4|❌|✅|Not Supported
57|BGA Layer 5|❌|BGA Layer 5|❌|✅|Not Supported
58|BGA Layer 6|❌|BGA Layer 6|❌|✅|Not Supported
59|BGA Layer 7|❌|BGA Layer 7|❌|✅|Not Supported
5A|Background Video Playback|~|Background Video Playback|~|~|Not Used
5B|Not Used|~|Not Used|~|~|Not Used
5C|Not Used|~|Not Used|~|~|Not Used
5D|Not Used|~|Not Used|~|~|Not Used
5E|Not Used|~|Not Used|~|~|Not Used
5F|Not Used|~|Not Used|~|~|Not Used

---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
60|BGA Layer 8|❌|BGA Layer 8|❌|✅|Not Supported
61|Sound Effect 01|✅|Sound Effect 01|✅|✅|Supported in 4.11.0
62|Sound Effect 02|✅|Sound Effect 02|✅|✅|Supported in 4.11.0
63|Sound Effect 03|✅|Sound Effect 03|✅|✅|Supported in 4.11.0
64|Sound Effect 04|✅|Sound Effect 04|✅|✅|Supported in 4.11.0
65|Sound Effect 05|✅|Sound Effect 05|✅|✅|Supported in 4.11.0
66|Sound Effect 06|✅|Sound Effect 06|✅|✅|Supported in 4.11.0
67|Sound Effect 07|✅|Sound Effect 07|✅|✅|Supported in 4.11.0
68|Sound Effect 08|✅|Sound Effect 08|✅|✅|Supported in 4.11.0
69|Sound Effect 09|✅|Sound Effect 09|✅|✅|Supported in 4.11.0
6A|Not Used|~|Not Used|~|~|Not Used
6B|Not Used|~|Not Used|~|~|Not Used
6C|Not Used|~|Not Used|~|~|Not Used
6D|Not Used|~|Not Used|~|~|Not Used
6E|Not Used|~|Not Used|~|~|Not Used
6F|Not Used|~|Not Used|~|~|Not Used

---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
70|Sound Effect 10|✅|Sound Effect 10|✅|✅|Supported in 4.11.0
71|Sound Effect 11|✅|Sound Effect 11|✅|✅|Supported in 4.11.0
72|Sound Effect 12|✅|Sound Effect 12|✅|✅|Supported in 4.11.0
73|Sound Effect 13|✅|Sound Effect 13|✅|✅|Supported in 4.11.0
74|Sound Effect 14|✅|Sound Effect 14|✅|✅|Supported in 4.11.0
75|Sound Effect 15|✅|Sound Effect 15|✅|✅|Supported in 4.11.0
76|Sound Effect 16|✅|Sound Effect 16|✅|✅|Supported in 4.11.0
77|Sound Effect 17|✅|Sound Effect 17|✅|✅|Supported in 4.11.0
78|Sound Effect 18|✅|Sound Effect 18|✅|✅|Supported in 4.11.0
79|Sound Effect 19|✅|Sound Effect 19|✅|✅|Supported in 4.11.0
7A|Not Used|~|Not Used|~|~|Not Used
7B|Not Used|~|Not Used|~|~|Not Used
7C|Not Used|~|Not Used|~|~|Not Used
7D|Not Used|~|Not Used|~|~|Not Used
7E|Not Used|~|Not Used|~|~|Not Used
7F|Not Used|~|Not Used|~|~|Not Used

---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
80|Sound Effect 20|✅|Sound Effect 20|✅|✅|Supported in 4.11.0
81|Sound Effect 21|✅|Sound Effect 21|✅|✅|Supported in 4.11.0
82|Sound Effect 22|✅|Sound Effect 22|✅|✅|Supported in 4.11.0
83|Sound Effect 23|✅|Sound Effect 23|✅|✅|Supported in 4.11.0
84|Sound Effect 24|✅|Sound Effect 24|✅|✅|Supported in 4.11.0
85|Sound Effect 25|✅|Sound Effect 25|✅|✅|Supported in 4.11.0
86|Sound Effect 26|✅|Sound Effect 26|✅|✅|Supported in 4.11.0
87|Sound Effect 27|✅|Sound Effect 27|✅|✅|Supported in 4.11.0
88|Sound Effect 28|✅|Sound Effect 28|✅|✅|Supported in 4.11.0
89|Sound Effect 29|✅|Sound Effect 29|✅|✅|Supported in 4.11.0
8A|Not Used|~|Not Used|~|~|Not Used
8B|Not Used|~|Not Used|~|~|Not Used
8C|Not Used|~|Not Used|~|~|Not Used
8D|Not Used|~|Not Used|~|~|Not Used
8E|Not Used|~|Not Used|~|~|Not Used
8F|Not Used|~|Not Used|~|~|Not Used

---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
90|Sound Effect 30|✅|Sound Effect 30|✅|✅|Supported in 4.11.0
91|Sound Effect 31|✅|Sound Effect 31|✅|✅|Supported in 4.11.0
92|Sound Effect 32|✅|Sound Effect 32|✅|✅|Supported in 4.11.0
93|Not Used|~|Guitar xxxYx|✅|✅|Supported in 4.10.0
94|Not Used|~|Guitar xxBYx|✅|✅|Supported in 4.10.0
95|Not Used|~|Guitar xGxYx|✅|✅|Supported in 4.10.0
96|Not Used|~|Guitar xGBYx|✅|✅|Supported in 4.10.0
97|Not Used|~|Guitar RxxYx|✅|✅|Supported in 4.10.0
98|Not Used|~|Guitar RxBYx|✅|✅|Supported in 4.10.0
99|Not Used|~|Guitar RGxYx|✅|✅|Supported in 4.10.0
9A|Not Used|~|Guitar RGBYx|✅|✅|Supported in 4.10.0
9B|Not Used|~|Guitar xxxxP|✅|✅|Supported in 4.10.0
9C|Not Used|~|Guitar xxBxP|✅|✅|Supported in 4.10.0
9D|Not Used|~|Guitar xGxxP|✅|✅|Supported in 4.10.0
9E|Not Used|~|Guitar xGBxP|✅|✅|Supported in 4.10.0
9F|Not Used|~|Guitar RxxxP|✅|✅|Supported in 4.10.0

---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
A0|Bass OPEN|✅|Bass OPEN|✅|✅|Supported in 4.10.0
A1|Bass xxBxx|✅|Bass xxBxx|✅|✅|Supported in 4.10.0
A2|Bass xGxxx|✅|Bass xGxxx|✅|✅|Supported in 4.10.0
A3|Bass xGBxx|✅|Bass xGBxx|✅|✅|Supported in 4.10.0
A4|Bass Rxxxx|✅|Bass Rxxxx|✅|✅|Supported in 4.10.0
A5|Bass RxBxx|✅|Bass RxBxx|✅|✅|Supported in 4.10.0
A6|Bass RGxxx|✅|Bass RGxxx|✅|✅|Supported in 4.10.0
A7|Bass RGBxx|✅|Bass RGBxx|✅|✅|Supported in 4.10.0
A8|Bass Wail|✅|Bass Wail|✅|✅|Supported in 4.10.0
A9|Not Used|~|Guitar RxBxP|✅|✅|Supported in 4.10.0
AA|Not Used|~|Guitar RGxxP|✅|✅|Supported in 4.10.0
AB|Not Used|~|Guitar RGBxP|✅|✅|Supported in 4.10.0
AC|Not Used|~|Guitar xxxYP|✅|✅|Supported in 4.10.0
AD|Not Used|~|Guitar xxBYP|✅|✅|Supported in 4.10.0
AE|Not Used|~|Guitar xGxYP|✅|✅|Supported in 4.10.0
AF|Not Used|~|Guitar xGBYP|✅|✅|Supported in 4.10.0

---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
B0|Not Used|~|Not Used|~|~|Not Used
B1|HiHatClose Empty|⌛|HiHatClose Empty|✅|✅|Supported in 4.11.0
B2|Snare Empty|⌛|Snare Empty|✅|✅|Supported in 4.11.0
B3|Bass Drum Empty|⌛|Bass Drum Empty|✅|✅|Supported in 4.11.0
B4|High Tom Empty|⌛|High Tom Empty|✅|✅|Supported in 4.11.0
B5|Low Tom Empty|⌛|Low Tom Empty|✅|✅|Supported in 4.11.0
B6|Cymbal Empty|⌛|Cymbal Empty|✅|✅|Supported in 4.11.0
B7|Floor Tom Empty|⌛|Floor Tom Empty|✅|✅|Supported in 4.11.0
B8|High Hat Open Empty|⌛|High Hat Open Empty|✅|✅|Supported in 4.11.0
B9|Ride Cymbal Empty|⌛|Ride Cymbal Empty|✅|✅|Supported in 4.11.0
BA|Guitar Empty|⌛|Guitar Empty|✅|✅|Supported in 4.11.0
BB|Bass Empty|⌛|Bass Empty|✅|✅|Supported in 4.11.0
BC|Not Used|~|LeftCymbal Empty|✅|✅|Supported in 4.11.0
BD|Not Used|~|LeftPedal Empty|✅|✅|Supported in 4.11.0
BE|Not Used|~|LeftBassDrum Empty|✅|✅|Supported in 4.11.0
BF|Not Used|~|Not Used|~|~|Not Used

---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
C0|Not Used|~|Not Used|~|~|Not Used
C1|Beat Bar Offset|❌|Beat Bar Offset|❌|✅|Not Supported
C2|Hide Beat/Measure bar|⌛|Hide Beat/Measure bar|⌛|✅|Not Supported
C3|Not Used|~|Not Used|~|~|Not Used
C4|Replacing BGA Layer 1|❌|Replacing BGA Layer 1|❌|✅|Not Supported
C5|Not Used|~|Bass xxxYx|✅|✅|Supported in 4.10.0
C6|Not Used|~|Bass xxBYx|✅|✅|Supported in 4.10.0
C7|Replacing BGA Layer 2|❌|Replacing BGA Layer 2|❌|✅|Not Supported
C8|Not Used|~|Bass xGxYx|✅|✅|Supported in 4.10.0
C9|Not Used|~|Bass xGBYx|✅|✅|Supported in 4.10.0
CA|Not Used|~|Bass RxxYx|✅|✅|Supported in 4.10.0
CB|Not Used|~|Bass RxBYx|✅|✅|Supported in 4.10.0
CC|Not Used|~|Bass RGxYx|✅|✅|Supported in 4.10.0
CD|Not Used|~|Bass RGBYx|✅|✅|Supported in 4.10.0
CE|Not Used|~|Bass xxxxP|✅|✅|Supported in 4.10.0
CF|Not Used|~|Bass xxBxP|✅|✅|Supported in 4.10.0

---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
D0|Not Used|~|Guitar RxxYP|✅|✅|Supported in 4.10.0
D1|Not Used|~|Guitar RxBYP|✅|✅|Supported in 4.10.0
D2|Not Used|~|Guitar RGxYP|✅|✅|Supported in 4.10.0
D3|Not Used|~|Guitar RGBYP|✅|✅|Supported in 4.10.0
D4|Not Used|~|Not Used|~|~|Not Used
D5|Replacing BGA Layer 3|❌|Replacing BGA Layer 3|❌|✅|Not Supported
D6|Replacing BGA Layer 4|❌|Replacing BGA Layer 4|❌|✅|Not Supported
D7|Replacing BGA Layer 5|❌|Replacing BGA Layer 5|❌|✅|Not Supported
D8|Replacing BGA Layer 6|❌|Replacing BGA Layer 6|❌|✅|Not Supported
D9|Replacing BGA Layer 7|❌|Replacing BGA Layer 7|❌|✅|Not Supported
DA|Not Used|~|Bass xGxxP|✅|✅|Supported in 4.10.0
DB|Not Used|~|Bass xGBxP|✅|✅|Supported in 4.10.0
DC|Not Used|~|Bass RxxxP|✅|✅|Supported in 4.10.0
DD|Not Used|~|Bass RxBxP|✅|✅|Supported in 4.10.0
DE|Not Used|~|Bass RGxxP|✅|✅|Supported in 4.10.0
DF|Not Used|~|Bass RGBxP|✅|✅|Supported in 4.10.0

---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
E0|Replacing BGA Layer 8|❌|Replacing BGA Layer 8|❌|✅|Not Supported
E1|Not Used|~|Bass xxxYP|✅|✅|Supported in 4.10.0
E2|Not Used|~|Bass xxBYP|✅|✅|Supported in 4.10.0
E3|Not Used|~|Bass xGxYP|✅|✅|Supported in 4.10.0
E4|Not Used|~|Bass xGBYP|✅|✅|Supported in 4.10.0
E5|Not Used|~|Bass RxxYP|✅|✅|Supported in 4.10.0
E6|Not Used|~|Bass RxBYP|✅|✅|Supported in 4.10.0
E7|Not Used|~|Bass RGxYP|✅|✅|Supported in 4.10.0
E8|Not Used|~|Bass RGBYP|✅|✅|Supported in 4.10.0
E9|Not Used|~|Not Used|~|~|Not Used
EA|Not Used|~|Not Used|~|~|Not Used
EB|Not Used|~|Not Used|~|~|Not Used
EC|Metronome|⌛|Metronome|✅|✅|Supported in 4.11.0
ED|Start Sound|⌛|Start Sound|✅|✅|Supported in 4.11.0
EE|Not Used|~|Bass RGxxP|✅|✅|Supported in 4.10.0
EF|Not Used|~|Bass RGBxP|✅|✅|Supported in 4.10.0

---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
F0|Not Used|~|Not Used|~|~|Not Used
F1|Not Used|~|Not Used|~|~|Not Used
F2|Not Used|~|Not Used|~|~|Not Used
F3|Not Used|~|Not Used|~|~|Not Used
F4|Not Used|~|Not Used|~|~|Not Used
F5|Not Used|~|Not Used|~|~|Not Used
F6|Not Used|~|Not Used|~|~|Not Used
F7|Not Used|~|Not Used|~|~|Not Used
F8|Not Used|~|Not Used|~|~|Not Used
F9|Not Used|~|Not Used|~|~|Not Used
FA|Not Used|~|Not Used|~|~|Not Used
FB|Not Used|~|Not Used|~|~|Not Used
FC|Metronome|⌛|Metronome|✅|✅|Supported in 4.11.0
FD|Start Sound|⌛|Start Sound|✅|✅|Supported in 4.11.0
FE|Not Used|~|Not Used|~|~|Not Used
FF|Not Used|~|Not Used|~|~|Not Used

----

_Written and Maintained with ♡ by Squirrel, with thanks to the BMS command memo, the Japanese DTX and BandJAM community, ``APPROVED`` and ``sub`` from DTXMania's Discord community, ``dridi`` for the GDA help and to ``Kangalioo`` for the VSRG docs_
