---
title: BMS/BME/PMS Support List
weight: 1
geekdocCollapseSection: true
---

Project OutFox contains parsers for the BMS and PMS chart formats, which are the standard formats used in conjunction with the ``beat``, ``popn`` game types. The following table contains details on the BMS/PMS channels that Project OutFox currently supports.

## BMS/BME/PMS Notedata support as of Alpha 4.9.9

### Key:
- ✅ Fully supported and used in Mode
- ✓ Fully supported and not used in Mode
- 📝? No Documentation on this channel's support
- ❌ Not Supported / Not Available
- ~ Not Used

### Channel Support Table

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
1|Background Music|✅|Background Music|✅|Background Music|✅|Supported
2|Measure Length|✅|Measure Length|✅|Measure length|✅|Supported
3|Set Initial BPM|✅|Set Initial BPM|✅|Set Initial BPM|✅|Supported
4|BGA Base|✅|BGA Base|✅|BG Base|✅|Supported - needs enabling
5|eXtended Object|✅|eXtended Object|✅|eXtended Object|✅|Supported
6|BGA Layer Miss|✅|BGA Layer Miss|✅|BGA Poor|✅|Supported - needs enabling
7|BGA Layer|✅|BGA Layer|✅|BG Layer|✅|Supported - needs enabling sits above channel 4
8|Extended BPM|✅|Extended BPM|✅|Set BPM|✅|Supported - Changes bpm to value
9|Stop|✅|Stop|✅|Stop|✓|Supported
0A|BGA Layer 2|✅|BGA Layer 2|✅|BGA Layer 2|✅|Supported
0B|BGA Base Opacity|❌|BGA Base Opacity|❌|BGA Base Opacity|❌|Not Supported
0C|BGA Layer Opacity|❌|BGA Layer Opacity|❌|Not Used|~|Not Supported
0D|BGA Layer 2 Opacity|❌|BGA Layer 2 Opacity|❌|Not Used|~|Not Supported
0E|BGA Poor Opacity|❌|BGA Poor Opacity|❌|BGA Poor Opacity|❌|Not Supported
0F|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
10|Not Used|~|Not Used|~|Not Used|~|Not Used
11|P1 Key 1|✅|P1 Key 1|✅|P1 Left White|✅|Supported
12|P1 Key 2|✅|P1 Key 2|✅|P1 Left Yellow|✅|Supported
13|P1 Key 3|✅|P1 Key 3|✅|P1 Left Green|✅|Supported
14|P1 Key 4|✅|P1 Key 4|✅|P1 Left Blue|✅|Supported
15|P1 Key 5|✅|P1 Key 5|✅|P1 Red|✅|Supported
16|P1 Turn/Scratch|✅|P1 Turn/Scratch|✅|Not Used|~|Supported
17|P1 FootPedal|❌|P1 FootPedal|❌|Not Used|~|Supported
18|P1 Key 6|✅|P1 Key 6|✅|Not Used|~|Supported
19|P1 Key 7|✅|P1 Key 7|✅|Not Used|~|Supported
1A|Not Used|~|Not Used|~|Not Used|~|Not Used
1B|Not Used|~|Not Used|~|Not Used|~|Not Used
1C|Not Used|~|Not Used|~|Not Used|~|Not Used
1D|Not Used|~|Not Used|~|Not Used|~|Not Used
1E|Not Used|~|Not Used|~|Not Used|~|Not Used
1F|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
20|Not Used|~|Not Used|~|Not Used|~|Not Used
21|P2 Key 1|✅|P2 Key 1|✅|Not Used|✅|Supported
22|P2 Key 2|✅|P2 Key 2|✅|P1 Right Blue|✅|Supported
23|P2 Key 3|✅|P2 Key 3|✅|P1 Right Green|✅|Supported
24|P2 Key 4|✅|P2 Key 4|✅|P1 Right Yellow|✅|Supported
25|P2 Key 5|✅|P2 Key 5|✅|P1 Right White|✅|Supported
26|P2 Turn/Scratch|✅|P2 Turn/Scratch|✅|Not Used|~|Supported
27|P2 FootPedal|❌|P2 FootPedal|❌|Not Used|~|Not Supported yet
28|P2 Key 6|✅|P2 Key 6|✅|Not Used|~|Supported
29|P2 Key 7|✅|P2 Key 7|✅|Not Used|~|Supported
2A|Not Used|~|Not Used|~|Not Used|~|Not Used
2B|Not Used|~|Not Used|~|Not Used|~|Not Used
2C|Not Used|~|Not Used|~|Not Used|~|Not Used
2D|Not Used|~|Not Used|~|Not Used|~|Not Used
2E|Not Used|~|Not Used|~|Not Used|~|Not Used
2F|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
30|Not Used|~|Not Used|~|Not Used|~|Not Used
31|P1 Key 1 Hidden|❌|P1 Key 1 Hidden|❌|P1 Left White Hidden|❌|BMS/PMS in 4.9.10
32|P1 Key 2 Hidden|❌|P1 Key 2 Hidden|❌|P1 Left Yellow Hidden|❌|BMS/PMS in 4.9.10
33|P1 Key 3 Hidden|❌|P1 Key 3 Hidden|❌|P1 Left Green Hidden|❌|BMS/PMS in 4.9.10
34|P1 Key 4 Hidden|❌|P1 Key 4 Hidden|❌|P1 Left Blue Hidden|❌|BMS/PMS in 4.9.10
35|P1 Key 5 Hidden|❌|P1 Key 5 Hidden|❌|Not Used|~|BMS in 4.9.10
36|P1 Turn/Scratch Hidden|❌|P1 Turn/Scratch Hidden|❌|Not Used|~|BMS in 4.9.10
37|P1 FootPedal Hidden|❌|P1 FootPedal Hidden|❌|Not Used|~|BMS in 4.9.10
38|P1 Key 6 Hidden|❌|P1 Key 6 Hidden|❌|Not Used|~|BMS in 4.9.10
39|P1 Key 7 Hidden|❌|P1 Key 7 Hidden|❌|Not Used|~|BMS in 4.9.10
3A|Not Used|~|Not Used|~|Not Used|~|Not Used
3B|Not Used|~|Not Used|~|Not Used|~|Not Used
3C|Not Used|~|Not Used|~|Not Used|~|Not Used
3D|Not Used|~|Not Used|~|Not Used|~|Not Used
3E|Not Used|~|Not Used|~|Not Used|~|Not Used
3F|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
40|Not Used|~|Not Used|~|Not Used|~|Not Used
41|P2 Key 1 Hidden|❌|P2 Key 1 Hidden|❌|Not Used|~|BMS/PMS in 4.9.10
42|P2 Key 2 Hidden|❌|P2 Key 2 Hidden|❌|P1 Right Blue Hidden|❌|BMS/PMS in 4.9.10
43|P2 Key 3 Hidden|❌|P2 Key 3 Hidden|❌|P1 Right Green Hidden|❌|BMS/PMS in 4.9.10
44|P2 Key 4 Hidden|❌|P2 Key 4 Hidden|❌|P1 Right Yellow Hidden|❌|BMS/PMS in 4.9.10
45|P2 Key 5 Hidden|❌|P2 Key 5 Hidden|❌|P1 Right White Hidden|❌|BMS/PMS in 4.9.10
46|P2 Turn/Scratch Hidden|❌|P2 Turn/Scratch Hidden|❌|Not Used|~|BMS/PMS in 4.9.10
47|P2 FootPedal Hidden|❌|P2 FootPedal Hidden|❌|Not Used|~|BMS/PMS in 4.9.10
48|P2 Key 6 Hidden|❌|P2 Key 6 Hidden|❌|Not Used|~|BMS/PMS in 4.9.10
49|P2 Key 7 Hidden|❌|P2 Key 7 Hidden|❌|Not Used|~|BMS/PMS in 4.9.10
4A|Not Used|~|Not Used|~|Not Used|~|Not Used
4B|Not Used|~|Not Used|~|Not Used|~|Not Used
4C|Not Used|~|Not Used|~|Not Used|~|Not Supported
4D|Not Used|~|Not Used|~|Not Used|~|Not Supported
4E|Not Used|~|Not Used|~|Not Used|~|Not Supported
4F|Not Used|~|Not Used|~|Not Used|~|Not Supported

---

## Long Note Sections #xxx51-69 - #LNTYPE1, #LNTYPE2 (BMS/PMS) 

The original Long Note Implementation is currently not supported in OutFox, though we do support ``#LNTYPE 1``, but the others need to be added to the game. These sections seem to be for BMS specific extensions, however I have not been able to find any modern documented use of them outside of 2005-2009.

I have kept them here mainly due to the fact they exist, and whether or not there is enough of a use case to include them in our support roadmap of the specification.

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
50|Not Used|~|Not Used|~|Not Used|~|Not Supported
51|P1 Key 1 LongNote|📝?|P1 Key 1 LongNote|📝?|P1 Left While LongNote|📝?|Not Supported
52|P1 Key 2 LongNote|📝?|P1 Key 2 LongNote|📝?|P1 Left Yellow LongNote|📝?|Not Supported
53|P1 Key 3 LongNote|📝?|P1 Key 3 LongNote|📝?|P1 Left Green LongNote|📝?|Not Supported
54|P1 Key 4 LongNote|📝?|P1 Key 4 LongNote|📝?|P1 Left Blue LongNote|📝?|Not Supported
55|P1 Key 5 LongNote|📝?|P1 Key 5 LongNote|📝?|P1 Red LongNote|📝?|Not Supported
56|P1 Turn/Scratch LongNote|📝?|P1 Turn/Scratch LongNote|📝?|Not Used|~|Not Supported
57|P1 FootPedal LongNote|📝?|P1 FootPedal LongNote|📝?|Not Used|~|Not Supported
58|P1 Key 6 LongNote|📝?|P1 Key 6 LongNote|📝?|Not Used|~|Not Supported
59|P1 Key 7 LongNote|📝?|P1 Key 7 LongNote|📝?|Not Used|~|Not Supported
5A|Not Used|~|Not Used|~|Not Used|~|Not Used
5B|Not Used|~|Not Used|~|Not Used|~|Not Used
5C|Not Used|~|Not Used|~|Not Used|~|Not Used
5D|Not Used|~|Not Used|~|Not Used|~|Not Used
5E|Not Used|~|Not Used|~|Not Used|~|Not Used
5F|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
60|Not Used|~|Not Used|~|Not Used|~|Not Used
61|P2 Key 1 LongNote|📝?|P2 Key 1 LongNote|📝?|Not Used|~|Not Supported
62|P2 Key 2 LongNote|📝?|P2 Key 2 LongNote|📝?|P1 Right Blue LongNote|📝?|Not Supported
63|P2 Key 3 LongNote|📝?|P2 Key 3 LongNote|📝?|P1 Right Green LongNote|📝?|Not Supported
64|P2 Key 4 LongNote|📝?|P2 Key 4 LongNote|📝?|P1 Right Yellow LongNote|📝?|Not Supported
65|P2 Key 5 LongNote|📝?|P2 Key 5 LongNote|📝?|P1 Right White LongNote|📝?|Not Supported
66|P2 Turn/Scratch LongNote|📝?|P2 Turn/Scratch LongNote|📝?|Not Used|~|Not Supported
67|P2 FootPedal LongNote|📝?|P2 FootPedal LongNote|📝?|Not Used|~|Not Supported
68|P2 Key 6 LongNote|📝?|P2 Key 6 LongNote|📝?|Not Used|~|Not Supported
69|P2 Key 7 LongNote|📝?|P2 Key 7 LongNote|📝?|Not Used|~|Not Supported
6A|Not Used|~|Not Used|~|Not Used|~|Not Used
6B|Not Used|~|Not Used|~|Not Used|~|Not Used
6C|Not Used|~|Not Used|~|Not Used|~|Not Used
6D|Not Used|~|Not Used|~|Not Used|~|Not Used
6E|Not Used|~|Not Used|~|Not Used|~|Not Used
6F|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
70|Not Used|~|Not Used|~|Not Used|~|Not Used
71|Not Used|~|Not Used|~|Not Used|~|Not Used
72|Not Used|~|Not Used|~|Not Used|~|Not Used
73|Not Used|~|Not Used|~|Not Used|~|Not Used
74|Not Used|~|Not Used|~|Not Used|~|Not Used
75|Not Used|~|Not Used|~|Not Used|~|Not Used
76|Not Used|~|Not Used|~|Not Used|~|Not Used
77|Not Used|~|Not Used|~|Not Used|~|Not Used
78|Not Used|~|Not Used|~|Not Used|~|Not Used
79|Not Used|~|Not Used|~|Not Used|~|Not Used
7A|Not Used|~|Not Used|~|Not Used|~|Not Used
7B|Not Used|~|Not Used|~|Not Used|~|Not Used
7C|Not Used|~|Not Used|~|Not Used|~|Not Used
7D|Not Used|~|Not Used|~|Not Used|~|Not Used
7E|Not Used|~|Not Used|~|Not Used|~|Not Used
7F|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
80|Not Used|~|Not Used|~|Not Used|~|Not Used
81|Not Used|~|Not Used|~|Not Used|~|Not Used
82|Not Used|~|Not Used|~|Not Used|~|Not Used
83|Not Used|~|Not Used|~|Not Used|~|Not Used
84|Not Used|~|Not Used|~|Not Used|~|Not Used
85|Not Used|~|Not Used|~|Not Used|~|Not Used
86|Not Used|~|Not Used|~|Not Used|~|Not Used
87|Not Used|~|Not Used|~|Not Used|~|Not Used
88|Not Used|~|Not Used|~|Not Used|~|Not Used
89|Not Used|~|Not Used|~|Not Used|~|Not Used
8A|Not Used|~|Not Used|~|Not Used|~|Not Used
8B|Not Used|~|Not Used|~|Not Used|~|Not Used
8C|Not Used|~|Not Used|~|Not Used|~|Not Used
8D|Not Used|~|Not Used|~|Not Used|~|Not Used
8E|Not Used|~|Not Used|~|Not Used|~|Not Used
8F|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
90|Not Used|~|Not Used|~|Not Used|~|Not Used
91|Not Used|~|Not Used|~|Not Used|~|Not Used
92|Not Used|~|Not Used|~|Not Used|~|Not Used
93|Not Used|~|Not Used|~|Not Used|~|Not Used
94|Not Used|~|Not Used|~|Not Used|~|Not Used
95|Not Used|~|Not Used|~|Not Used|~|Not Used
96|Not Used|~|Not Used|~|Not Used|~|Not Used
97|Not Used|~|Not Used|~|BGM Volume|❌|Not Supported
98|Not Used|~|Not Used|~|KeySound Volume|❌|Not Supported
99|Not Used|~|Not Used|~|TEXT String|❌|Not Supported
9A|Not Used|~|Not Used|~|Not Used|~|Not Used
9B|Not Used|~|Not Used|~|Not Used|~|Not Used
9C|Not Used|~|Not Used|~|Not Used|~|Not Used
9D|Not Used|~|Not Used|~|Not Used|~|Not Used
9E|Not Used|~|Not Used|~|Not Used|~|Not Used
9F|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
A0|Not Used|~|Not Used|~|Not Used|~|Not Used
A1|Not Used|~|Not Used|~|Not Used|~|Not Used
A2|Not Used|~|Not Used|~|Not Used|~|Not Used
A3|Not Used|~|Not Used|~|Not Used|~|Not Used
A4|Not Used|~|Not Used|~|Not Used|~|Not Used
A5|Not Used|~|Not Used|~|Not Used|~|Not Used
A6|Change Option|❌|Change Option|❌|Change Option|❌|This was the mod system for BMS and PMS.
A7|Not Used|~|Not Used|~|Not Used|~|Not Used
A8|Not Used|~|Not Used|~|Not Used|~|Not Used
A9|Not Used|~|Not Used|~|Not Used|~|Not Used
AA|Not Used|~|Not Used|~|Not Used|~|Not Used
AB|Not Used|~|Not Used|~|Not Used|~|Not Used
AC|Not Used|~|Not Used|~|Not Used|~|Not Used
AD|Not Used|~|Not Used|~|Not Used|~|Not Used
AE|Not Used|~|Not Used|~|Not Used|~|Not Used
AF|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
B0|Not Used|~|Not Used|~|Not Used|~|Not Used
B1|Not Used|~|Not Used|~|Not Used|~|Not Used
B2|Not Used|~|Not Used|~|Not Used|~|Not Used
B3|Not Used|~|Not Used|~|Not Used|~|Not Used
B4|Not Used|~|Not Used|~|Not Used|~|Not Used
B5|Not Used|~|Not Used|~|Not Used|~|Not Used
B6|Not Used|~|Not Used|~|Not Used|~|Not Used
B7|Not Used|~|Not Used|~|Not Used|~|Not Used
B8|Not Used|~|Not Used|~|Not Used|~|Not Used
B9|Not Used|~|Not Used|~|Not Used|~|Not Used
BA|Not Used|~|Not Used|~|Not Used|~|Not Used
BB|Not Used|~|Not Used|~|Not Used|~|Not Used
BC|Not Used|~|Not Used|~|Not Used|~|Not Used
BD|Not Used|~|Not Used|~|Not Used|~|Not Used
BE|Not Used|~|Not Used|~|Not Used|~|Not Used
BF|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
C0|Not Used|~|Not Used|~|Not Used|~|Not Used
C1|Not Used|~|Not Used|~|Not Used|~|Not Used
C2|Not Used|~|Not Used|~|Not Used|~|Not Used
C3|Not Used|~|Not Used|~|Not Used|~|Not Used
C4|Not Used|~|Not Used|~|Not Used|~|Not Used
C5|Not Used|~|Not Used|~|Not Used|~|Not Used
C6|Not Used|~|Not Used|~|Not Used|~|Not Used
C7|Not Used|~|Not Used|~|Not Used|~|Not Used
C8|Not Used|~|Not Used|~|Not Used|~|Not Used
C9|Not Used|~|Not Used|~|Not Used|~|Not Used
CA|Not Used|~|Not Used|~|Not Used|~|Not Used
CB|Not Used|~|Not Used|~|Not Used|~|Not Used
CC|Not Used|~|Not Used|~|Not Used|~|Not Used
CD|Not Used|~|Not Used|~|Not Used|~|Not Used
CE|Not Used|~|Not Used|~|Not Used|~|Not Used
CF|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
D0|Not Used|~|Not Used|~|Not Used|~|Not Used
D1|P1 Key 1 LandMine|📝?|P1 Key 1 LandMine|📝?|P1 Left White LandMine|📝?|Not Used
D2|P1 Key 2 LandMine|📝?|P1 Key 2 LandMine|📝?|P1 Left Yellow LandMine|📝?|Not Used
D3|P1 Key 3 LandMine|📝?|P1 Key 3 LandMine|📝?|P1 Left Green LandMine|📝?|Not Used
D4|P1 Key 4 LandMine|📝?|P1 Key 4 LandMine|📝?|P1 Left Blue LandMine|📝?|Not Used
D5|P1 Key 5 LandMine|📝?|P1 Key 5 LandMine|📝?|P1 Red LandMine|📝?|Not Used
D6|P1 Turn/Scratch LandMine|📝?|P1 Turn/Scratch LandMine|📝?|Not Used|~|Not Used
D7|P1 FootPedal LandMine|📝?|P1 FootPedal LandMine|📝?|Not Used|~|Not Used
D8|P1 Key 6 LandMine|📝?|P1 Key 6 LandMine|📝?|Not Used|~|Not Used
D9|P1 Key 7 LandMine|📝?|P1 Key 7 LandMine|📝?|Not Used|~|Not Used
DA|Not Used|~|Not Used|~|Not Used|~|Not Used
DB|Not Used|~|Not Used|~|Not Used|~|Not Used
DC|Not Used|~|Not Used|~|Not Used|~|Not Used
DD|Not Used|~|Not Used|~|Not Used|~|Not Used
DE|Not Used|~|Not Used|~|Not Used|~|Not Used
DF|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
E0|Not Used|~|Not Used|~|Not Used|~|Not Used
E1|P2 Key 1 LandMine|📝?|P2 Key 1 LandMine|📝?|Not Used|~|Not Used
E2|P2 Key 2 LandMine|📝?|P2 Key 2 LandMine|📝?|P1 Right Blue LandMine|📝?|Not Used
E3|P2 Key 3 LandMine|📝?|P2 Key 3 LandMine|📝?|P1 Right Green LandMine|📝?|Not Used
E4|P2 Key 4 LandMine|📝?|P2 Key 4 LandMine|📝?|P1 Right Yellow LandMine|📝?|Not Used
E5|P2 Key 5 LandMine|📝?|P2 Key 5 LandMine|📝?|P1 Right White LandMine|📝?|Not Used
E6|P2 Turn/Scratch LandMine|📝?|P2 Turn/Scratch LandMine|📝?|Not Used|~|Not Used
E7|P2 FootPedal LandMine|📝?|P2 FootPedal LandMine|📝?|Not Used|~|Not Used
E8|P2 Key 6 LandMine|📝?|P2 Key 6 LandMine|📝?|Not Used|~|Not Used
E9|P2 Key 7 LandMine|📝?|P2 Key 7 LandMine|📝?|Not Used|~|Not Used
EA|Not Used|~|Not Used|~|Not Used|~|Not Used
EB|Not Used|~|Not Used|~|Not Used|~|Not Used
EC|Not Used|~|Not Used|~|Not Used|~|Not Used
ED|Not Used|~|Not Used|~|Not Used|~|Not Used
EE|Not Used|~|Not Used|~|Not Used|~|Not Used
EF|Not Used|~|Not Used|~|Not Used|~|Not Used

---

BMS / BME / PMS Channel|BMS Name|OutFox BMS Support|BME Name|OutFox BME Support|PMS Name|OutFox PMS Support|OutFox BMS/PMS Status Comments
------------|-------------|-------------|-------------|-------------|-------------|-------------|-------------
F0|Not Used|~|Not Used|~|Not Used|~|Not Used
F1|Not Used|~|Not Used|~|Not Used|~|Not Used
F2|Not Used|~|Not Used|~|Not Used|~|Not Used
F3|Not Used|~|Not Used|~|Not Used|~|Not Used
F4|Not Used|~|Not Used|~|Not Used|~|Not Used
F5|Not Used|~|Not Used|~|Not Used|~|Not Used
F6|Not Used|~|Not Used|~|Not Used|~|Not Used
F7|Not Used|~|Not Used|~|Not Used|~|Not Used
F8|Not Used|~|Not Used|~|Not Used|~|Not Used
F9|Not Used|~|Not Used|~|Not Used|~|Not Used
FA|Not Used|~|Not Used|~|Not Used|~|Not Used
FB|Not Used|~|Not Used|~|Not Used|~|Not Used
FC|Not Used|~|Not Used|~|Not Used|~|Not Used
FD|Not Used|~|Not Used|~|Not Used|~|Not Used
FE|Not Used|~|Not Used|~|Not Used|~|Not Used
FF|Not Used|~|Not Used|~|Not Used|~|Not Used


---


