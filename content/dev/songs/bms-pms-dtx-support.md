---
title: BMS/DTX/DTX compatibility
weight: 1
geekdocCollapseSection: true
---

Project OutFox contains parsers for the BMS, PMS, and DTX chart formats, which are the standard formats used in conjunction with the ``beat``, ``popn``, and ``gddm`` game types. The following table contains details on the BMS/PMS/DTX channels that Project OutFox currently supports.

## BMS/PMS/DTX Notedata support as of Alpha 4.9.9

### Key:
- ✅ Fully supported and used in Mode
- ✓ Fully supported and not used in Mode
- 📝? No Documentation on this channel's support
- ❌ Not Supported / Not Available
- ~ Not Used

### Channel Support Table

BMS / PMS / DTX Channel|BMS Name|OutFox BMS Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|-------------|-------------|-------------|-------------|-------------|------------|-------------|-------------|-------------
1|Background Music|✅|Background Music|✅|Supported|Background Music|✅|✅|Supported
2|Measure Length|✅|Measure length|✅|Supported / OutFox Channel 2 lasts a measure on DTX|Measure Multiplication factor|❌|✅|Supported / OutFox Channel 2 lasts a measure on DTX
3|Set Initial BPM|✅|Set Initial BPM|✅|Supported|Set Initial BPM|✅|✅|Supported
4|BGA Base|✅|BG Base|✅|Supported - needs enabling|BG Layer 1|✅|✅|Supported - needs enabling
5|eXtended Object|✅|eXtended Object|✅|Supported|eXtended Object|✅|📝?|Supported
6|BGA Layer Miss|✅|BGA Poor|✅|Supported - needs enabling|Not Used|✓|~|Supported - needs enabling
7|BGA Layer|✅|BG Layer|✅|Supported - needs enabling sits above channel 4|BG Layer 2|✅|✅|Supported - needs enabling sits above channel 4
8|Extended BPM|✅|Set BPM|✅|Supported - Changes bpm to value|Extended BPM|✅|✅|Supported - Changes bpm to value
9|Stop|✅|Stop|✓|Supported|Not Used|✓|~|Supported
0A|BGA Layer 2|✅|BGA Layer 2|✅|Supported|Not Used|✓|~|Supported
0B|BGA Base Opacity|❌|BGA Base Opacity|❌|Not Supported|Not Used|~|~|Not Supported
0C|BGA Layer Opacity|❌|Not Used|~|Not Supported|Not Used|~|~|Not Supported
0D|BGA Layer 2 Opacity|❌|Not Used|~|Not Supported|Not Used|~|~|Not Supported
0E|BGA Poor Opacity|❌|BGA Poor Opacity|❌|Not Supported|Not Used|~|~|Not Supported
0F|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used

---

BMS / PMS / DTX Channel|BMS Name|OutFox BMS Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|-------------|-------------|-------------|-------------|-------------|------------|-------------|-------------|-------------
10|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
11|P1 Key 1|✅|P1 Left White|✅|Supported|HiHatClose|✅|✅|Supported
12|P1 Key 2|✅|P1 Left Yellow|✅|Supported|Snare|✅|✅|Supported
13|P1 Key 3|✅|P1 Left Green|✅|Supported|Bass Drum|✅|✅|Supported
14|P1 Key 4|✅|P1 Left Blue|✅|Supported|High Tom|✅|✅|Supported
15|P1 Key 5|✅|P1 Red|✅|Supported|Low Tom|✅|✅|Supported
16|P1 Turn/Scratch|✅|Not Used|~|Supported|Cymbal|✅|✅|Supported
17|P1 FootPedal|❌|Not Used|~|Supported|Floor Tom|✅|✅|Supported
18|P1 Key 6|✅|Not Used|~|Supported|High Hat Open|✅|✅|Supported
19|P1 Key 7|✅|Not Used|~|Supported|Ride Cymbal|✅|✅|Supported
1A|Not Used|~|Not Used|~|Supported|Left Cymbal|✅|✅|Supported
1B|Not Used|~|Not Used|~|Supported|Left Pedal|✅|✅|Supported
1C|Not Used|~|Not Used|~|Supported|Left Bass Drum|✅|✅|Supported
1D|Not Used|~|Not Used|~|Supported|Not Used|~|~|Supported
1E|Not Used|~|Not Used|~|Supported|Not Used|~|~|Supported
1F|Not Used|~|Not Used|~|Supported|Drums Fill in Sound|✅|✅|Supported

---

BMS / PMS / DTX Channel|BMS Name|OutFox BMS Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|-------------|-------------|-------------|-------------|-------------|------------|-------------|-------------|-------------
20|Not Used|~|Not Used|~|Not Used|Guitar OPEN|❌|✅|Not Supported yet on DTX
21|P2 Key 1|✅|Not Used|✅|Supported|Guitar xxBxx|❌|✅|Not Supported yet on DTX
22|P2 Key 2|✅|P1 Right Blue|✅|Supported|Guitar xGxxx|❌|✅|Not Supported yet on DTX
23|P2 Key 3|✅|P1 Right Green|✅|Supported|Guitar xGBxx|❌|✅|Not Supported yet on DTX
24|P2 Key 4|✅|P1 Right Yellow|✅|Supported|Guitar Rxxxx|❌|✅|Not Supported yet on DTX
25|P2 Key 5|✅|P1 Right White|✅|Supported|Guitar RxBxx|❌|✅|Not Supported yet on DTX
26|P2 Turn/Scratch|✅|Not Used|~|Supported|Guitar RGxxx|❌|✅|Not Supported yet on DTX
27|P2 FootPedal|❌|Not Used|~|Not Supported yet|Guitar RGBxx|❌|✅|Not Supported yet on DTX
28|P2 Key 6|✅|Not Used|~|Supported|Guitar Wail|❌|✅|Not Supported yet on DTX
29|P2 Key 7|✅|Not Used|~|Supported|Not Supported|~|~|Supported
2A|Not Used|~|Not Used|~|Not Used|Not Supported|~|~|Not Used
2B|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
2C|Not Used|~|Not Used|~|Not Used|Guitar Long Note Start/End Point|~|~ AL|Not Supported
2D|Not Used|~|Not Used|~|Not Used|Bass Long Note Start/End Point|~|~ AL|Not Supported
2E|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Supported
2F|Not Used|~|Not Used|~|Not Used|Guitar Wailing Sound|❌|✅|Not Supported yet on DTX

---

BMS / PMS / DTX Channel|BMS Name|OutFox BMS Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|-------------|-------------|-------------|-------------|-------------|------------|-------------|-------------|-------------
30|Not Used|~|Not Used|~|Not Used|Rate Speed|~|~|Not Used
31|P1 Key 1 Hidden|❌|P1 Left White Hidden|❌|BMS/PMS in 4.9.10 |HiHatClose Hidden Note|✅|✅|Supported
32|P1 Key 2 Hidden|❌|P1 Left Yellow Hidden|❌|BMS/PMS in 4.9.10|Snare Hidden Note|✅|✅|Supported
33|P1 Key 3 Hidden|❌|P1 Left Green Hidden|❌|BMS/PMS in 4.9.10|Bass Drum Hidden Note|✅|✅|Supported
34|P1 Key 4 Hidden|❌|P1 Left Blue Hidden|❌|BMS/PMS in 4.9.10 |High Tom Hidden Note|✅|✅|Supported
35|P1 Key 5 Hidden|❌|Not Used|~|BMS in 4.9.10|Low Tom Hidden Note|✅|✅|Supported
36|P1 Turn/Scratch Hidden|❌|Not Used|~|BMS in 4.9.10|Cymbal Hidden Note|✅|✅|Supported
37|P1 FootPedal Hidden|❌|Not Used|~|BMS in 4.9.10|Floor Tom Hidden Note|✅|✅|Supported
38|P1 Key 6 Hidden|❌|Not Used|~|BMS in 4.9.10|High Hat Open Hidden Note|✅|✅|Supported
39|P1 Key 7 Hidden|❌|Not Used|~|BMS in 4.9.10|Ride Cymbal Hidden Note|✅|✅|Supported
3A|Not Used|~|Not Used|~|Supported|Left Cymbal Hidden Note|✅|✅|Supported
3B|Not Used|~|Not Used|~|Supported|Left Pedal Hidden Note|✅|✅|Supported
3C|Not Used|~|Not Used|~|Supported|Left Bass Drum Hidden Note|✅|✅|Supported
3D|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
3E|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
3F|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used

---

BMS / PMS / DTX Channel|BMS Name|OutFox BMS Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|-------------|-------------|-------------|-------------|-------------|------------|-------------|-------------|-------------
40|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
41|P2 Key 1 Hidden|❌|Not Used|❌|BMS/PMS in 4.9.10|Not Used|~|~|Not Used
42|P2 Key 2 Hidden|❌|P1 Right Blue Hidden|❌|BMS/PMS in 4.9.10|Not Used|~|~|Not Used
43|P2 Key 3 Hidden|❌|P1 Right Green Hidden|❌|BMS/PMS in 4.9.10|Not Used|~|~|Not Used
44|P2 Key 4 Hidden|❌|P1 Right Yellow Hidden|❌|BMS/PMS in 4.9.10|Not Used|~|~|Not Used
45|P2 Key 5 Hidden|❌|P1 Right White Hidden|❌|BMS/PMS in 4.9.10|Not Used|~|~|Not Used
46|P2 Turn/Scratch Hidden|❌|Not Used|~|BMS/PMS in 4.9.10|Not Used|~|~|Not Used
47|P2 FootPedal Hidden|❌|Not Used|~|BMS/PMS in 4.9.10|Not Used|~|~|Not Used
48|P2 Key 6 Hidden|❌|Not Used|~|BMS/PMS in 4.9.10|Not Used|~|~|Not Used
49|P2 Key 7 Hidden|❌|Not Used|~|BMS/PMS in 4.9.10|Not Used|~|~|Not Used
4A|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
4B|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
4C|Not Used|~|Not Used|~|Not Supported|Bonus 04|❌|✅|Not Supported
4D|Not Used|~|Not Used|~|Not Supported|Bonus 03|❌|✅|Not Supported
4E|Not Used|~|Not Used|~|Not Supported|Bonus 02|❌|✅|Not Supported
4F|Not Used|~|Not Used|~|Not Supported|Bonus 01|❌|✅|Not Supported

---

## Long Note Sections #xxx51-69 - #LNTYPE1, #LNTYPE2 (BMS/PMS) 

The original Long Note Implementation is currently not supported in OutFox, though we do support ``#LNTYPE 1``, but the others need to be added to the game. These sections seem to be for BMS specific extensions, however I have not been able to find any modern documented use of them outside of 2005-2009.

I have kept them here mainly due to the fact they exist, and whether or not there is enough of a use case to include them in our support roadmap of the specification.

BMS / PMS / DTX Channel|BMS Name|OutFox BMS Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|-------------|-------------|-------------|-------------|-------------|------------|-------------|-------------|-------------
50|Not Used|~|Not Used|~|Not Supported|Bar Line|❌|✅|Not Supported
51|P1 Key 1 LongNote|📝?|P1 Left While LongNote|📝?|Not Supported|Beat Line|❌|✅|Not Supported
52|P1 Key 2 LongNote|📝?|P1 Left Yellow LongNote|📝?|Not Supported|MIDI Drum Chorus|❌|✅|Not Supported
53|P1 Key 3 LongNote|📝?|P1 Left Green LongNote|📝?|Not Supported|Fill In|~|~|Not Supported
54|P1 Key 4 LongNote|📝?|P1 Left Blue LongNote|📝?|Not Supported|Video Playback|❌|✅|Not Supported
55|P1 Key 5 LongNote|📝?|P1 Red LongNote|📝?|Not Supported|BGA Layer 3|❌|✅|Not Supported
56|P1 Turn/Scratch LongNote|📝?|Not Used|~|Not Supported|BGA Layer 4|~|~|Not Supported
57|P1 FootPedal LongNote|📝?|Not Used|~|Not Supported|BGA Layer 5|~|~|Not Supported
58|P1 Key 6 LongNote|📝?|Not Used|~|Not Supported|BGA Layer 6|~|~|Not Supported
59|P1 Key 7 LongNote|📝?|Not Used|~|Not Supported|BGA Layer 7|~|~|Not Supported
5A|Not Used|~|Not Used|~|Not Used|Background Video Playback|~|~|Not Used
5B|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
5C|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
5D|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
5E|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
5F|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used

---

BMS / PMS / DTX Channel|BMS Name|OutFox BMS Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|-------------|-------------|-------------|-------------|-------------|------------|-------------|-------------|-------------
60|Not Used|~|Not Used|~|Not Used|BGA Layer 8|❌|✅|Not Supported
61|P2 Key 1 LongNote|📝?|Not Used|~|Not Supported|Sound Effect 01|✅|✅|Supported
62|P2 Key 2 LongNote|📝?|P1 Right Blue LongNote|📝?|Not Supported|Sound Effect 02|✅|✅|Supported
63|P2 Key 3 LongNote|📝?|P1 Right Green LongNote|📝?|Not Supported|Sound Effect 03|✅|✅|Supported
64|P2 Key 4 LongNote|📝?|P1 Right Yellow LongNote|📝?|Not Supported|Sound Effect 04|✅|✅|Supported
65|P2 Key 5 LongNote|📝?|P1 Right White LongNote|📝?|Not Supported|Sound Effect 05|✅|✅|Supported
66|P2 Turn/Scratch LongNote|📝?|Not Used|~|Not Supported|Sound Effect 06|✅|✅|Supported
67|P2 FootPedal LongNote|📝?|Not Used|~|Not Supported|Sound Effect 07|✅|✅|Supported
68|P2 Key 6 LongNote|📝?|Not Used|~|Not Supported|Sound Effect 08|✅|✅|Supported
69|P2 Key 7 LongNote|📝?|Not Used|~|Not Supported|Sound Effect 09|✅|✅|Supported
6A|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
6B|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
6C|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
6D|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
6E|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
6F|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used

---

BMS / PMS / DTX Channel|BMS Name|OutFox BMS Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|-------------|-------------|-------------|-------------|-------------|------------|-------------|-------------|-------------
70|Not Used|~|Not Used|~|Not Used|Sound Effect 10|✅|✅|Not Supported
71|Not Used|~|Not Used|~|Not Used|Sound Effect 11|✅|✅|Supported
72|Not Used|~|Not Used|~|Not Used|Sound Effect 12|✅|✅|Supported
73|Not Used|~|Not Used|~|Not Used|Sound Effect 13|✅|✅|Supported
74|Not Used|~|Not Used|~|Not Used|Sound Effect 14|✅|✅|Supported
75|Not Used|~|Not Used|~|Not Used|Sound Effect 15|✅|✅|Supported
76|Not Used|~|Not Used|~|Not Used|Sound Effect 16|✅|✅|Supported
77|Not Used|~|Not Used|~|Not Used|Sound Effect 17|✅|✅|Supported
78|Not Used|~|Not Used|~|Not Used|Sound Effect 18|✅|✅|Supported
79|Not Used|~|Not Used|~|Not Used|Sound Effect 19|✅|✅|Supported
7A|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
7B|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
7C|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
7D|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
7E|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
7F|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used

---

BMS / PMS / DTX Channel|BMS Name|OutFox BMS Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|-------------|-------------|-------------|-------------|-------------|------------|-------------|-------------|-------------
80|Not Used|~|Not Used|~|Not Used|Sound Effect 20|✅|✅|Supported
81|Not Used|~|Not Used|~|Not Used|Sound Effect 21|✅|✅|Supported
82|Not Used|~|Not Used|~|Not Used|Sound Effect 22|✅|✅|Supported
83|Not Used|~|Not Used|~|Not Used|Sound Effect 23|✅|✅|Supported
84|Not Used|~|Not Used|~|Not Used|Sound Effect 24|✅|✅|Supported
85|Not Used|~|Not Used|~|Not Used|Sound Effect 25|✅|✅|Supported
86|Not Used|~|Not Used|~|Not Used|Sound Effect 26|✅|✅|Supported
87|Not Used|~|Not Used|~|Not Used|Sound Effect 27|✅|✅|Supported
88|Not Used|~|Not Used|~|Not Used|Sound Effect 28|✅|✅|Supported
89|Not Used|~|Not Used|~|Not Used|Sound Effect 29|✅|✅|Supported
8A|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
8B|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
8C|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
8D|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
8E|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used
8F|Not Used|~|Not Used|~|Not Used|Not Used|~|~|Not Used

---

BMS / PMS / DTX Channel|BMS Name|OutFox BMS Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|-------------|-------------|-------------|-------------|-------------|------------|-------------|-------------|-------------
90|Not Used|~|Not Used|~|Not Used|Sound Effect 30|✅|✅|Supported
91|Not Used|~|Not Used|~|Not Used|Sound Effect 31|✅|✅|Supported
92|Not Used|~|Not Used|~|Not Used|Sound Effect 32|✅|✅|Supported
93|Not Used|~|Not Used|~|Not Used|Guitar xxxYx|❌|✅|Not Supported
94|Not Used|~|Not Used|~|Not Used|Guitar xxBYx|❌|✅|Not Supported
95|Not Used|~|Not Used|~|Not Used|Guitar xGxYx|❌|✅|Not Supported
96|Not Used|~|Not Used|~|Not Used|Guitar xGBYx|❌|✅|Not Supported
97|Not Used|~|BGM Volume|❌|Not Supported|Guitar RxxYx|❌|✅|Not Supported
98|Not Used|~|KeySound Volume|❌|Not Supported|Guitar RxBYx|❌|✅|Not Supported
99|Not Used|~|TEXT String|❌|Not Supported|Guitar RGxYx|❌|✅|Not Supported
9A|Not Used|~|Not Used|~|Not Used|Guitar RGBYx|❌|✅|Not Supported
9B|Not Used|~|Not Used|~|Not Used|Guitar xxxxP|❌|✅|Not Supported
9C|Not Used|~|Not Used|~|Not Used|Guitar xxBxP|❌|✅|Not Supported
9D|Not Used|~|Not Used|~|Not Used|Guitar xGxxP|❌|✅|Not Supported
9E|Not Used|~|Not Used|~|Not Used|Guitar xGBxP|❌|✅|Not Supported
9F|Not Used|~|Not Used|~|Not Used|Guitar RxxxP|❌|✅|Not Supported

---

BMS / PMS / DTX Channel|BMS Name|OutFox BMS Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|-------------|-------------|-------------|-------------|-------------|------------|-------------|-------------|-------------
A0|Not Used|~|Not Used|~|Not Used|Bass OPEN |❌|✅|Not Supported
A1|Not Used|~|Not Used|~|Not Used|Bass xxBxx|❌|✅|Not Supported
A2|Not Used|~|Not Used|~|Not Used|Bass xGxxx|❌|✅|Not Supported
A3|Not Used|~|Not Used|~|Not Used|Bass xGBxx|❌|✅|Not Supported
A4|Not Used|~|Not Used|~|Not Used|Bass Rxxxx|❌|✅|Not Supported
A5|Not Used|~|Not Used|~|Not Used|Bass RxBxx|❌|✅|Not Supported
A6|Change Option|❌|Change Optoion|❌|This was the mod system for BMS|Bass RGxxx|❌|✅|Not Supported
A7|Not Used|~|Not Used|~|Not Used|Bass RGBxx|❌|✅|Not Supported
A8|Not Used|~|Not Used|~|Not Used|Bass Wail |❌|✅|Not Supported
A9|Not Used|~|Not Used|~|Not Used|Guitar RxBxP|❌|✅|Not Supported
AA|Not Used|~|Not Used|~|Not Used|Guitar RGxxP|❌|✅|Not Supported
AB|Not Used|~|Not Used|~|Not Used|Guitar RGBxP|❌|✅|Not Supported
AC|Not Used|~|Not Used|~|Not Used|Guitar xxxYP|❌|✅|Not Supported
AD|Not Used|~|Not Used|~|Not Used|Guitar xxBYP|❌|✅|Not Supported
AE|Not Used|~|Not Used|~|Not Used|Guitar xGxYP|❌|✅|Not Supported
AF|Not Used|~|Not Used|~|Not Used|Guitar xGBYP|❌|✅|Not Supported

---

BMS / PMS / DTX Channel|BMS Name|OutFox BMS Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|-------------|-------------|-------------|-------------|-------------|------------|-------------|-------------|-------------
B0|Not Used|~|Not Used|~|Not Used|Not Used |❌|❌|Not Used
B1|Not Used|~|Not Used|~|Not Used|HiHatClose Empty|❌|✅|Not Supported
B2|Not Used|~|Not Used|~|Not Used|Snare Empty|❌|✅|Not Supported
B3|Not Used|~|Not Used|~|Not Used|Bass Drum Empty|❌|✅|Not Supported
B4|Not Used|~|Not Used|~|Not Used|High Tom Empty|❌|✅|Not Supported
B5|Not Used|~|Not Used|~|Not Used|Low Tom Empty|❌|✅|Not Supported
B6|Not Used|~|Not Used|~|Not Used|Cymbal Empty|❌|✅|Not Supported
B7|Not Used|~|Not Used|~|Not Used|Floor Tom Empty|❌|✅|Not Supported
B8|Not Used|~|Not Used|~|Not Used|High Hat Open Empty |❌|✅|Not Supported
B9|Not Used|~|Not Used|~|Not Used|Ride Cymbal Empty|❌|✅|Not Supported
BA|Not Used|~|Not Used|~|Not Used|Guitar Empty|❌|✅|Not Supported
BB|Not Used|~|Not Used|~|Not Used|Bass Empty|❌|✅|Not Supported
BC|Not Used|~|Not Used|~|Not Used|LeftCymbal Empty|❌|✅|Not Supported
BD|Not Used|~|Not Used|~|Not Used|LeftPedal Empty|❌|✅|Not Supported
BE|Not Used|~|Not Used|~|Not Used|LeftBassDrum Empty|❌|✅|Not Supported
BF|Not Used|~|Not Used|~|Not Used|Not Used|❌|❌|Not Used

---

BMS / PMS / DTX Channel|BMS Name|OutFox BMS Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|-------------|-------------|-------------|-------------|-------------|------------|-------------|-------------|-------------
C0|Not Used|~|Not Used|~|Not Used|Not Used |❌|❌|Not Used
C1|Not Used|~|Not Used|~|Not Used|Beat Bar Offset|❌|✅|Not Supported
C2|Not Used|~|Not Used|~|Not Used|Hide Beat/Measure bar|❌|✅|Not Supported
C3|Not Used|~|Not Used|~|Not Used|Not Used|❌|❌|Not Used
C4|Not Used|~|Not Used|~|Not Used|Replacing BGA Layer 1|❌|✅|Not Supported
C5|Not Used|~|Not Used|~|Not Used|Bass xxxYx|❌|✅|Not Supported
C6|Not Used|~|Not Used|~|Not Used|Bass xxBYx|❌|✅|Not Supported
C7|Not Used|~|Not Used|~|Not Used|Replacing BGA Layer 2|❌|✅|Not Supported
C8|Not Used|~|Not Used|~|Not Used|Bass xGxYx|❌|✅|Not Supported
C9|Not Used|~|Not Used|~|Not Used|Bass xGBYx|❌|✅|Not Supported
CA|Not Used|~|Not Used|~|Not Used|Bass RxxYx|❌|✅|Not Supported
CB|Not Used|~|Not Used|~|Not Used|Bass RxBYx|❌|✅|Not Supported
CC|Not Used|~|Not Used|~|Not Used|Bass RGxYx|❌|✅|Not Supported
CD|Not Used|~|Not Used|~|Not Used|Bass RGBYx|❌|✅|Not Supported
CE|Not Used|~|Not Used|~|Not Used|Bass xxxxP|❌|✅|Not Supported
CF|Not Used|~|Not Used|~|Not Used|Bass xxBxP|❌|✅|Not Supported

---

BMS / PMS / DTX Channel|BMS Name|OutFox BMS Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|-------------|-------------|-------------|-------------|-------------|------------|-------------|-------------|-------------
D0|Not Used|~|Not Used|~|Not Used|Guitar RxxYP|❌|✅|Not Supported
D1|P1 Key 1 LandMine|📝?|P1 Left While LandMine|📝?|Not Used|Guitar RxBYP|❌|✅|Not Supported
D2|P1 Key 2 LandMine|📝?|P1 Left Yellow LandMine|📝?|Not Used|Guitar RGxYP|❌|✅|Not Supported
D3|P1 Key 3 LandMine|📝?|P1 Left Green LandMine|📝?|Not Used|Guitar RGBYP|❌|✅|Not Supported
D4|P1 Key 4 LandMine|📝?|P1 Left Blue LandMine|📝?|Not Used|Not Used|❌|❌|Not Used
D5|P1 Key 5 LandMine|📝?|P1 Red LandMine|📝?|Not Used|Replacing BGA Layer 3|❌|✅|Not Supported
D6|P1 Turn/Scratch LandMine|📝?|Not Used|~|Not Used|Replacing BGA Layer 4|❌|✅|Not Supported
D7|P1 FootPedal LandMine|📝?|Not Used|~|Not Used|Replacing BGA Layer 5|❌|✅|Not Supported
D8|P1 Key 6 LandMine|📝?|Not Used|~|Not Used|Replacing BGA Layer 6|❌|✅|Not Supported
D9|P1 Key 7 LandMine|📝?|Not Used|~|Not Used|Replacing BGA Layer 7|❌|✅|Not Supported
DA|Not Used|~|Not Used|~|Not Used|Bass xGxxP|❌|✅|Not Supported
DB|Not Used|~|Not Used|~|Not Used|Bass xGBxP|❌|✅|Not Supported
DC|Not Used|~|Not Used|~|Not Used|Bass RxxxP|❌|✅|Not Supported
DD|Not Used|~|Not Used|~|Not Used|Bass RxBxP|❌|✅|Not Supported
DE|Not Used|~|Not Used|~|Not Used|Bass RGxxP|❌|✅|Not Supported
DF|Not Used|~|Not Used|~|Not Used|Bass RGBxP|❌|✅|Not Supported

---

BMS / PMS / DTX Channel|BMS Name|OutFox BMS Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|-------------|-------------|-------------|-------------|-------------|------------|-------------|-------------|-------------
E0|Not Used|~|Not Used|~|Not Used|Replacing BGA Layer 8|❌|✅|Not Supported
E1|P2 Key 2 LandMine|📝?|Not Used|~|Not Used|Bass xxxYP|❌|✅|Not Supported
E2|P2 Key 2 LandMine|📝?|P1 Right Blue LandMine|📝?|Not Used|Bass xxBYP|❌|✅|Not Supported
E3|P2 Key 3 LandMine|📝?|P1 Right Green LandMine|📝?|Not Used|Bass xGxYP|❌|✅|Not Supported
E4|P2 Key 4 LandMine|📝?|P1 Right Yellow LandMine|📝?|~|Not Used|Bass xGBYP|❌|❌|Not Used
E5|P2 Key 5 LandMine|📝?|P1 Right White LandMine|📝?|Not Used|Bass RxxYP|❌|✅|Not Supported
E6|P2 Turn/Scratch LandMine|📝?|Not Used|~|Not Used|Bass RxBYP|❌|✅|Not Supported
E7|P2 FootPedal LandMine|📝?|Not Used|~|Not Used|Bass RGxYP|❌|✅|Not Supported
E8|P2 Key 6 LandMine|📝?|Not Used|~|Not Used|Bass RGBYP|❌|✅|Not Supported
E9|P2 Key 7 LandMine|📝?|Not Used|~|Not Used|Not Used|❌|❌|Not Used
EA|Not Used|~|Not Used|~|Not Used|Not Used|❌|❌|Not Used
EB|Not Used|~|Not Used|~|Not Used|Not Used|❌|❌|Not Used
EC|Not Used|~|Not Used|~|Not Used|Metronome|❌|✅|Not Supported
ED|Not Used|~|Not Used|~|Not Used|Start Sound|❌|✅|Not Supported
EE|Not Used|~|Not Used|~|Not Used|Bass RGxxP|❌|✅|Not Supported
EF|Not Used|~|Not Used|~|Not Used|Bass RGBxP|❌|✅|Not Supported

---

BMS / PMS / DTX Channel|BMS Name|OutFox BMS Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments|DTX Name|OutFox DTX Support|NX/Ver. K Support|OutFox DTX Status Comments
------------|-------------|-------------|-------------|-------------|-------------|------------|-------------|-------------|-------------
F0|Not Used|~|Not Used|~|Not Used|Not Used|❌|❌|Not Used
F1|Not Used|~|Not Used|~|Not Used|Not Used|❌|❌|Not Used
F2|Not Used|~|Not Used|~|Not Used|Not Used|❌|❌|Not Used
F3|Not Used|~|Not Used|~|Not Used|Not Used|❌|❌|Not Used
F4|Not Used|~|Not Used|~|Not Used|Not Used|❌|❌|Not Used
F5|Not Used|~|Not Used|~|Not Used|Not Used|❌|❌|Not Used
F6|Not Used|~|Not Used|~|Not Used|Not Used|❌|❌|Not Used
F7|Not Used|~|Not Used|~|Not Used|Not Used|❌|❌|Not Used
F8|Not Used|~|Not Used|~|Not Used|Not Used|❌|❌|Not Used
F9|Not Used|~|Not Used|~|Not Used|Not Used|❌|❌|Not Used
FA|Not Used|~|Not Used|~|Not Used|Not Used|❌|❌|Not Used
FB|Not Used|~|Not Used|~|Not Used|Not Used|❌|❌|Not Used
FC|Not Used|~|Not Used|~|Not Used|Metronome|❌|✅|Not Supported
FD|Not Used|~|Not Used|~|Not Used|Start Sound|❌|✅|Not Supported
FE|Not Used|~|Not Used|~|Not Used|Not Used|❌|❌|Not Used
FF|Not Used|~|Not Used|~|Not Used|Not Used|❌|❌|Not Used



