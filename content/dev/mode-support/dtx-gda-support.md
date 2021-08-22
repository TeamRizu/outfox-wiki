---
title: DTX & GDA/G2D Support
weight: 1
geekdocCollapseSection: true
---

Project OutFox contains parsers for the DTX and GDA/G2D chart formats, which are the standard formats used in conjunction with the ``gddm`` and ``gdgf`` game types. The following table contains details on the DTX/GDA/G2D channels that Project OutFox currently supports.

## DTX/GDA Notedata support as of Alpha 4.9.9

### Key:
- ✅ Fully supported and used in Mode
- ✓ Fully supported and not used in Mode
- 📝? No Documentation on this channel's support
- ❌ Not Supported / Not Available
- ~ Not Used

### Channel Support Table

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
01|Background Music|✅|Background Music|✅|✅|Supported
02|Measure Multiplication factor|❌|Measure Multiplication factor|❌|✅|Supported / OutFox Channel 2 lasts a measure on DTX
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
20|Guitar OPEN|❌|Guitar OPEN|❌|✅|Not Supported yet on DTX
21|Guitar xxBxx|❌|Guitar xxBxx|❌|✅|Not Supported yet on DTX
22|Guitar xGxxx|❌|Guitar xGxxx|❌|✅|Not Supported yet on DTX
23|Guitar xGBxx|❌|Guitar xGBxx|❌|✅|Not Supported yet on DTX
24|Guitar Rxxxx|❌|Guitar Rxxxx|❌|✅|Not Supported yet on DTX
25|Guitar RxBxx|❌|Guitar RxBxx|❌|✅|Not Supported yet on DTX
26|Guitar RGxxx|❌|Guitar RGxxx|❌|✅|Not Supported yet on DTX
27|Guitar RGBxx|❌|Guitar RGBxx|❌|✅|Not Supported yet on DTX
28|Guitar Wail|❌|Guitar Wail|❌|✅|Not Supported yet on DTX
29|Not Supported|~|Not Supported|~|~|Not Supported
2A|Not Supported|~|Not Supported|~|~|Not Supported
2B|Not Used|~|Not Used|~|~|Not Used
2C|Not Used|~|Guitar Long Note Start/End Point|❌|✅ AL|Not Supported
2D|Not Used|~|Bass Long Note Start/End Point|❌|✅ AL|Not Supported
2E|Not Used|~|Not Used|~|~|Not Used
2F|Guitar Wailing Sound|❌|Guitar Wailing Sound|❌|✅|Not Supported yet on DTX

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
4C|Bonus 04|❌|Bonus 04|❌|✅|Not Supported
4D|Bonus 03|❌|Bonus 03|❌|✅|Not Supported
4E|Bonus 02|❌|Bonus 02|❌|✅|Not Supported
4F|Bonus 01|❌|Bonus 01|❌|✅|Not Supported

---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
50|Bar Line|❌|Bar Line|❌|✅|Not Used
51|Beat Line|❌|Beat Line|❌|✅|Not Supported
52|MIDI Drum Chorus|❌|MIDI Drum Chorus|❌|✅|Not Supported
53|Fill In|~|Fill In|~|~|Not Supported
54|Video Playback|❌|Video Playback|❌|✅|Not Supported
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
61|Sound Effect 01|✅|Sound Effect 01|✅|✅|Supported
62|Sound Effect 02|✅|Sound Effect 02|✅|✅|Supported
63|Sound Effect 03|✅|Sound Effect 03|✅|✅|Supported
64|Sound Effect 04|✅|Sound Effect 04|✅|✅|Supported
65|Sound Effect 05|✅|Sound Effect 05|✅|✅|Supported
66|Sound Effect 06|✅|Sound Effect 06|✅|✅|Supported
67|Sound Effect 07|✅|Sound Effect 07|✅|✅|Supported
68|Sound Effect 08|✅|Sound Effect 08|✅|✅|Supported
69|Sound Effect 09|✅|Sound Effect 09|✅|✅|Supported
6A|Not Used|~|Not Used|~|~|Not Used
6B|Not Used|~|Not Used|~|~|Not Used
6C|Not Used|~|Not Used|~|~|Not Used
6D|Not Used|~|Not Used|~|~|Not Used
6E|Not Used|~|Not Used|~|~|Not Used
6F|Not Used|~|Not Used|~|~|Not Used

---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
70|Sound Effect 10|✅|Sound Effect 10|✅|✅|Supported
71|Sound Effect 11|✅|Sound Effect 11|✅|✅|Supported
72|Sound Effect 12|✅|Sound Effect 12|✅|✅|Supported
73|Sound Effect 13|✅|Sound Effect 13|✅|✅|Supported
74|Sound Effect 14|✅|Sound Effect 14|✅|✅|Supported
75|Sound Effect 15|✅|Sound Effect 15|✅|✅|Supported
76|Sound Effect 16|✅|Sound Effect 16|✅|✅|Supported
77|Sound Effect 17|✅|Sound Effect 17|✅|✅|Supported
78|Sound Effect 18|✅|Sound Effect 18|✅|✅|Supported
79|Sound Effect 19|✅|Sound Effect 19|✅|✅|Supported
7A|Not Used|~|Not Used|~|~|Not Used
7B|Not Used|~|Not Used|~|~|Not Used
7C|Not Used|~|Not Used|~|~|Not Used
7D|Not Used|~|Not Used|~|~|Not Used
7E|Not Used|~|Not Used|~|~|Not Used
7F|Not Used|~|Not Used|~|~|Not Used

---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
80|Sound Effect 20|✅|Sound Effect 20|✅|✅|Supported
81|Sound Effect 21|✅|Sound Effect 21|✅|✅|Supported
82|Sound Effect 22|✅|Sound Effect 22|✅|✅|Supported
83|Sound Effect 23|✅|Sound Effect 23|✅|✅|Supported
84|Sound Effect 24|✅|Sound Effect 24|✅|✅|Supported
85|Sound Effect 25|✅|Sound Effect 25|✅|✅|Supported
86|Sound Effect 26|✅|Sound Effect 26|✅|✅|Supported
87|Sound Effect 27|✅|Sound Effect 27|✅|✅|Supported
88|Sound Effect 28|✅|Sound Effect 28|✅|✅|Supported
89|Sound Effect 29|✅|Sound Effect 29|✅|✅|Supported
8A|Not Used|~|Not Used|~|~|Not Used
8B|Not Used|~|Not Used|~|~|Not Used
8C|Not Used|~|Not Used|~|~|Not Used
8D|Not Used|~|Not Used|~|~|Not Used
8E|Not Used|~|Not Used|~|~|Not Used
8F|Not Used|~|Not Used|~|~|Not Used

---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
90|Sound Effect 30|✅|Sound Effect 30|✅|✅|Supported
91|Sound Effect 31|✅|Sound Effect 31|✅|✅|Supported
92|Sound Effect 32|✅|Sound Effect 32|✅|✅|Supported
93|Not Used|~|Guitar xxxYx|❌|✅|Not Supported
94|Not Used|~|Guitar xxBYx|❌|✅|Not Supported
95|Not Used|~|Guitar xGxYx|❌|✅|Not Supported
96|Not Used|~|Guitar xGBYx|❌|✅|Not Supported
97|Not Used|~|Guitar RxxYx|❌|✅|Not Supported
98|Not Used|~|Guitar RxBYx|❌|✅|Not Supported
99|Not Used|~|Guitar RGxYx|❌|✅|Not Supported
9A|Not Used|~|Guitar RGBYx|❌|✅|Not Supported
9B|Not Used|~|Guitar xxxxP|❌|✅|Not Supported
9C|Not Used|~|Guitar xxBxP|❌|✅|Not Supported
9D|Not Used|~|Guitar xGxxP|❌|✅|Not Supported
9E|Not Used|~|Guitar xGBxP|❌|✅|Not Supported
9F|Not Used|~|Guitar RxxxP|❌|✅|Not Supported

---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
A0|Bass OPEN|❌|Bass OPEN|❌|✅|Not Supported
A1|Bass xxBxx|❌|Bass xxBxx|❌|✅|Not Supported
A2|Bass xGxxx|❌|Bass xGxxx|❌|✅|Not Supported
A3|Bass xGBxx|❌|Bass xGBxx|❌|✅|Not Supported
A4|Bass Rxxxx|❌|Bass Rxxxx|❌|✅|Not Supported
A5|Bass RxBxx|❌|Bass RxBxx|❌|✅|Not Supported
A6|Bass RGxxx|❌|Bass RGxxx|❌|✅|Not Supported
A7|Bass RGBxx|❌|Bass RGBxx|❌|✅|Not Supported
A8|Bass Wail|❌|Bass Wail|❌|✅|Not Supported
A9|Not Used|~|Guitar RxBxP|❌|✅|Not Supported
AA|Not Used|~|Guitar RGxxP|❌|✅|Not Supported
AB|Not Used|~|Guitar RGBxP|❌|✅|Not Supported
AC|Not Used|~|Guitar xxxYP|❌|✅|Not Supported
AD|Not Used|~|Guitar xxBYP|❌|✅|Not Supported
AE|Not Used|~|Guitar xGxYP|❌|✅|Not Supported
AF|Not Used|~|Guitar xGBYP|❌|✅|Not Supported

---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
B0|Not Used|~|Not Used|❌|❌|Not Used
B1|HiHatClose Empty|❌|HiHatClose Empty|❌|✅|Not Supported
B2|Snare Empty|❌|Snare Empty|❌|✅|Not Supported
B3|Bass Drum Empty|❌|Bass Drum Empty|❌|✅|Not Supported
B4|High Tom Empty|❌|High Tom Empty|❌|✅|Not Supported
B5|Low Tom Empty|❌|Low Tom Empty|❌|✅|Not Supported
B6|Cymbal Empty|❌|Cymbal Empty|❌|✅|Not Supported
B7|Floor Tom Empty|❌|Floor Tom Empty|❌|✅|Not Supported
B8|High Hat Open Empty|❌|High Hat Open Empty|❌|✅|Not Supported
B9|Ride Cymbal Empty|❌|Ride Cymbal Empty|❌|✅|Not Supported
BA|Guitar Empty|❌|Guitar Empty|❌|✅|Not Supported
BB|Bass Empty|❌|Bass Empty|❌|✅|Not Supported
BC|Not Used|~|LeftCymbal Empty|❌|✅|Not Supported
BD|Not Used|~|LeftPedal Empty|❌|✅|Not Supported
BE|Not Used|~|LeftBassDrum Empty|❌|✅|Not Supported
BF|Not Used|❌|Not Used|❌|❌|Not Used

---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
C0|Not Used|❌|Not Used|❌|❌|Not Used
C1|Beat Bar Offset|❌|Beat Bar Offset|❌|✅|Not Supported
C2|Hide Beat/Measure bar|❌|Hide Beat/Measure bar|❌|✅|Not Supported
C3|Not Used|❌|Not Used|❌|❌|Not Used
C4|Replacing BGA Layer 1|❌|Replacing BGA Layer 1|❌|✅|Not Supported
C5|Not Used|~|Bass xxxYx|❌|✅|Not Supported
C6|Not Used|~|Bass xxBYx|❌|✅|Not Supported
C7|Replacing BGA Layer 2|❌|Replacing BGA Layer 2|❌|✅|Not Supported
C8|Not Used|~|Bass xGxYx|❌|✅|Not Supported
C9|Not Used|~|Bass xGBYx|❌|✅|Not Supported
CA|Not Used|~|Bass RxxYx|❌|✅|Not Supported
CB|Not Used|~|Bass RxBYx|❌|✅|Not Supported
CC|Not Used|~|Bass RGxYx|❌|✅|Not Supported
CD|Not Used|~|Bass RGBYx|❌|✅|Not Supported
CE|Not Used|~|Bass xxxxP|❌|✅|Not Supported
CF|Not Used|~|Bass xxBxP|❌|✅|Not Supported

---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
D0|Not Used|~|Guitar RxxYP|❌|✅|Not Supported
D1|Not Used|~|Guitar RxBYP|❌|✅|Not Supported
D2|Not Used|~|Guitar RGxYP|❌|✅|Not Supported
D3|Not Used|~|Guitar RGBYP|❌|✅|Not Supported
D4|Not Used|~|Not Used|❌|❌|Not Used
D5|Replacing BGA Layer 3|❌|Replacing BGA Layer 3|❌|✅|Not Supported
D6|Replacing BGA Layer 4|❌|Replacing BGA Layer 4|❌|✅|Not Supported
D7|Replacing BGA Layer 5|❌|Replacing BGA Layer 5|❌|✅|Not Supported
D8|Replacing BGA Layer 6|❌|Replacing BGA Layer 6|❌|✅|Not Supported
D9|Replacing BGA Layer 7|❌|Replacing BGA Layer 7|❌|✅|Not Supported
DA|Not Used|~|Bass xGxxP|❌|✅|Not Supported
DB|Not Used|~|Bass xGBxP|❌|✅|Not Supported
DC|Not Used|~|Bass RxxxP|❌|✅|Not Supported
DD|Not Used|~|Bass RxBxP|❌|✅|Not Supported
DE|Not Used|~|Bass RGxxP|❌|✅|Not Supported
DF|Not Used|~|Bass RGBxP|❌|✅|Not Supported

---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
E0|Replacing BGA Layer 8|❌|Replacing BGA Layer 8|❌|✅|Not Supported
E1|Not Used|~|Bass xxxYP|❌|✅|Not Supported
E2|Not Used|~|Bass xxBYP|❌|✅|Not Supported
E3|Not Used|~|Bass xGxYP|❌|✅|Not Supported
E4|Not Used|~|Bass xGBYP|❌|❌|Not Used
E5|Not Used|~|Bass RxxYP|❌|✅|Not Supported
E6|Not Used|~|Bass RxBYP|❌|✅|Not Supported
E7|Not Used|~|Bass RGxYP|❌|✅|Not Supported
E8|Not Used|~|Bass RGBYP|❌|✅|Not Supported
E9|Not Used|~|Not Used|❌|❌|Not Used
EA|Not Used|~|Not Used|❌|❌|Not Used
EB|Not Used|~|Not Used|❌|❌|Not Used
EC|Metronome|❌|Metronome|❌|✅|Not Supported
ED|Start Sound|❌|Start Sound|❌|✅|Not Supported
EE|Not Used|~|Bass RGxxP|❌|✅|Not Supported
EF|Not Used|~|Bass RGBxP|❌|✅|Not Supported

---

DTX / GDA Channel|GDA Name|OutFox GDA Support|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|------------|-------------|------------|-------------|-------------|-------------
F0|Not Used|~|Not Used|❌|❌|Not Used
F1|Not Used|~|Not Used|❌|❌|Not Used
F2|Not Used|~|Not Used|❌|❌|Not Used
F3|Not Used|~|Not Used|❌|❌|Not Used
F4|Not Used|~|Not Used|❌|❌|Not Used
F5|Not Used|~|Not Used|❌|❌|Not Used
F6|Not Used|~|Not Used|❌|❌|Not Used
F7|Not Used|~|Not Used|❌|❌|Not Used
F8|Not Used|~|Not Used|❌|❌|Not Used
F9|Not Used|~|Not Used|❌|❌|Not Used
FA|Not Used|~|Not Used|❌|❌|Not Used
FB|Not Used|~|Not Used|❌|❌|Not Used
FC|Metronome|❌|Metronome|❌|✅|Not Supported
FD|Start Sound|❌|Start Sound|❌|✅|Not Supported
FE|Not Used|~|Not Used|❌|❌|Not Used
FF|Not Used|~|Not Used|❌|❌|Not Used

----

_Written and Maintained with ♡ by Squirrel, with thanks to the BMS command memo, and Japanese DTX and BandJAM community, and thanks to dridi for the GDA help_
