
# Game types
Project OutFox supports a variety of game types, which simulate different types of rhythm games (including button layouts and, where applicable, gameplay behaviours specific to the game type). Game types are further divided into **styles**, which define chart types such as single, double, etc.

![Screenshot of the Project OutFox game selection screen.](./_media/getting-started/select-game-type.png)

As of 5.3.0-alpha-4.9.8, they include:

* **dance** - The default game type. Similar to games such as _Dance Dance Revolution_ and _In the Groove_, it uses four lanes in the cardinal directions (left, down, up, right). It also contains a 6-lane style (``solo``) adding up-left and up-right directions, and a 3-lane style using only up-left, down, and up-right.
* **pump** - A five-lane dance game, which uses four diagional directions and the center rather than cardinal directions.
* **kb7** - A seven-lane game type similar to games such as _O2Jam_, with six keys flanking a centre column (usually mapped by default to the SDF, JKL, and space keys)
* **ez2** - A game type based on the defunct arcade dance game _EZ2Dancer_, which uses three foot panels and a pair of hand sensors.
* **para** - A dance game designed for _para para_ routines, which is typically played with five infrared hand sensors in a semicircular layout, and uses a considerably looser scoring system. It is modelled upon the mechanics of the defunct arcade dance game _Para Para Paradise_.
* **ds3ddx** - A dance game whose format is common among Chinese arcade dance games, which uses four diagional foot panels, and four hand sensors around the pad in the cardinal directions.
* **beat** - A BMS player mode, supporting 5-key and 7-key styles, and the ability to load BMS files.
* **maniax** - A game type based on the defunct arcade dance game _Dance Maniax_, which uses four hand sensors arranged into two columns (upper and lower).
* **techno** - A dance game type designed for pads with nine panels, including 4-lane (similar to ``dance``), 5-lane (similar to ``pump``), 8-lane (using all but the center panel), and 9-panel styles in single and double versions.
* **popn** - A PMS player mode, supporting 3, 4, 5, 7, and 9-button styles, and the ability to load PMS files.
* **gddm** - A drum mode supporting five-drum (with one bass pedal) and seven-drum (two pedals) styles, modelled upon the mechanics of the arcade rhythm game _DrumMania_.
* **gdgf** (formerly **guitar** prior to 5.3.0-alpha-4.9.8) - A guitar mode supporting three-fret and five-fret styles, modelled upon the mechanics of the arcade rhythm game _Guitar Freaks_.
* **gh** - A five-fret guitar mode modelled upon the mechanics of once-popular console games originating from North America.
* **kickbox** - A mode that was originally designed for an exercise setup.