---
title: Guide to Modifiers
weight: 3
geekdocCollapseSection: true
---

Want your arrows to dance around to the music (as seen in [Pump it Up PRO 2](https://youtu.be/TRsUGt-rp2s?t=16) and the [StepMania/ITG Modfile Community](https://youtu.be/73yEAdnsXfc?t=10))?

Well, if you're a fan of modifiers and attacks, this guide is for you!


## What are Mods/Attacks?

Modifiers (or Mods) apply all kinds of effects to the notes in a song - they can make the notes scroll in different directions, bounce to the beat, and many, *many* more things!

> You can **manually turn on modifiers on any song** by entering the player options menu (press start twice when you pick a song to play), and choosing **Modifiers** then **Exit** at the bottom.
Mods in the **Acceleration, Effects, Appearance, and Scroll** categories work best for attacks - feel free to play around!

![The Modifiers menu](/making-simfiles/mods-attacks-mods-menu.png)

Attacks are one of the easiest ways to add Modifiers to your simfile - Attacks will apply whatever mods you want at specific times you set in the song!

For StepMania 5/Outfox-based arcade cabinets (and SM5-based games like PIU Infinity), Attacks can even be used in USB custom songs and charts (if enabled)!


## Adding Attacks to a Simfile

We'll assume you've already created a simfile, and know a bit about how to use the editor here.

First off:
1. **Open a Simfile** in the Outfox editor **(Title Screen > Edit/Share > Edit Songs/Steps)**. Pick a song, then pick a difficulty (chart).

2. When editing the chart, press **Enter** where you want the Modifier to start.
3. Choose **Modifiy attacks at current beat** at the bottom of the menu.

![The Enter key menu](/making-simfiles/mods-attacks-enter-menu.png)

4. Choose **Add Attack**
5. Here, you'll enter a Modifier to get applied:
   * Many modifiers from the Player Options menu will work (Beat, Drunk, etc), for now just type `Beat` and press **Enter**.
   * Any attacks you add will show up to the right of the notes, both when editing and playing a simfile in the editor.
![Prompting to enter an attack's modifier](/making-simfiles/mods-attacks-mod-prompt.png)

6. Press **P** to play your song - you should see the attack you added scroll up the screen with the notes.
   * When the attack with your `Beat` modifier scrolls to the top of the screen, the arrows will start bouncing to the beat!
   <video src="/making-simfiles/mods-attacks-beat.m4v" controls></video>

## Editing/Removing Attacks

Attacks only last a few seconds by default - to **make it last longer** you'll need to **edit the attack's length**.

### Edit an Attack

1. In the editor, go to the beat where the Attack you want to edit is, and press **Enter**.


2. All Attacks on that beat are listed - pick the one you want to edit (arrow keys/enter).
   * If you don't see the attack you just added, make sure you're lined up to the **Exact** time the Attack is at!


3. From here, press **Enter** on any of these options to change them:

   * Starting time: When this attack starts. It's better to remove/re-add an attack if you want to change when it starts.
   * Seconds Remaining: How long the attack lasts (defalt: 5 seconds)
   * Attack 1: The mod you just added - press enter to change
   * Add Mod: Pick this to add another mod to this attack

![The Attack edit menu](/making-simfiles/mods-attacks-attack-edit-menu.png)

### Remove an Attack

1. In the editor, go to the beat the Attack is on and press **Enter**.

2. Pick the attack you want to remove and press **Enter**.
3. Pick the Mod you want to remove and press **Enter**.
3. When asked for a new Mod, **backspace** all the letters in the mod and press **Enter**.
   * When all Mods in an attack are removed, the Attack is auto-removed.


## Mod Strength/Approach Rate

### Mod Strength

Is Beat too wild? Not wild enough? You can fix that!

> To change how strong a mod is, **add a percentage** before it, like **50% Beat**

By default, any mods you add default to **100%**. You can dial this down if you don't want a mod to be as strong.

Percentages **above 100%** are a-ok if you want *really* strong mods! **Negative percentages** like `-50% Beat` work too if you want to totally invert an effect (it might not be obvious on all mods, but it does work).


Finally: `No` means the same thing as `0%`. Say, if you have a `Beat` attack earlier in the song, you can turn it off with `0% Beat` or `No Beat` - either works!

<video src="/making-simfiles/mods-attacks-beat-strength.m4v" controls>The difference between 50% Beat and 100% Beat</video>

> In the above video - **Left = 40% Beat, Right = 125% Beat**

---

### Mod Approach Rate

Want a mod to **slowly fade in** over time, or **instantly** go to max strength? You can change that too!

> To change how fast/slow a mod is applied, add a **`*`** and a **number** before the mod, like **\*2 Beat**

Higher numbers apply mods faster, lower numbers (decimals included!) make mods apply slower.

**\*0.5 = Half as fast, \*2 = Twice as fast.**

(The default `*1` applies at a rate of 100% of a mod over 1 second)


> Mod approach rate can also combine with **any strength**, including **0%**! If you want to get rid of a mod really fast, you can use an attack like `*50 0% Beat`.

<video src="/making-simfiles/mods-attacks-beat-speed.m4v" controls>The difference between \*0.5 Beat and \*10 Beat</video>

> In the above video - **Left = \*0.5 Beat** (fades in half as fast), **Right = \*10 Beat** (fades in 10x as fast!). They both get to the **same strength** at the end, but the **left side takes longer** to do so.

## Resources/What's Next

Next up is to play around with Modifiers! Experiment with what effects you can get, and discover what you do/don't like!

---

### What Mods Can I Use?

Lots, actually!

> **[Check out the Guide to Mods](/dev/mods/)** in the sidebar for **a list of mods** you can use!

---

### Mods Resources
 
 * **[0b5vr's Flip-Invert site](https://0b5vr.com/flip-invert/)** helps give you combinations of various mods to move the note columns across the screen. Just drag the receptors where you want them on-screen!
    * (You can alternatively use the `MoveX/Y/Zn` mods to move single note columns, like `MoveX1`, `MoveX2`, etc)
 
 * Check out **[WinDEU's Marathon Tutorial](https://www.youtube.com/watch?v=4cHCqwHcKPY&list=PL1joaptC-JIUphz_wcd8WrMCdeSylZmdw&index=3)** series - it focuses on older versions of StepMania (where some mods, like Drunk and Tipsy, have different names), but a lot of the info still applies to SM5/Outfox. The later videos in the series dive *really* deep into how some mods behave!
    * How to set up Mods in Courses in also covered in earlier videos in the series (though again, focusing on older versions of StepMania)
 
 * You can join **[Project Outfox's Discord server](https://discord.gg/cN4TjgQdcA)** for more help from the community - feel free to ask mods/attacks-related questions in channels like `#mods-coding-help`.

---

### My Mods Don't Work!

  * Double check you've spelled your Mod name right - mods from older versions of the game (like OpenITG) may have different names in SM5/Outfox!
  * You may get strange behavior if you add new attacks into a simfile before the last attack in the file.

---

### Mod Behaviors Across Different Themes

Some mods you add (like Drunk, Tornado, Boomerang) *may* change behavior depending on the theme you're currently using.

In older versions (like Stepmania 5.0/5.1), the theme's internal resolution (HD vs non-HD themes, specifically `SCREEN_HEIGHT`) is used in calculations for certain mods. On these versions, these mods will behave differently on themes with different internal resolutions.

In Outfox, [these calculations are performed based on a completely separate theme metric instead](https://github.com/TeamRizu/outfox-wiki/pull/7#discussion_r628777504), `ModifierHeight`. If the theme changes this value, it will affect those calculations (and therefore mod behaviors, and is noted as doing so).

Plan accordingly if you plan on playing your simfiles/chart edits on different versions/themes!

---

### Other Notes

 * Mods obey stops and BPM changes in songs. If your song stops while a mod like Beat is in effect, the notes will freeze in the middle of Beat's animation, skewed to the sides.
 * Earlier versions of StepMania can round the time a mod starts at if you save and exit a simfile in the editor, making it harder/impossible to edit in the future. If this happens, you'll need to manually edit the mod lines under the `#ATTACKS` tag in your simfile's `.sm/.ssc` files.
