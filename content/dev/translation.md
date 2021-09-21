---
title: Translation
description: Guide on translating themes on Project OutFox.
weight: 4
---


Are you translating a theme to another language? Reading this might help you.

## Where are language files stored

Inside every theme there'll be a `Languages` folder. Inside that folder is where language files are stored. Example:

```
Languages/
    en.ini
    ja.ini
```

Here we can see 2 language files: **en** for English and **ja** for Japanese. It's a standard to name language files in that format (language-COUNTRY.ini). For example: In this case, there's a Portuguese translation, but since there's also Portuguese from Portugal, the file was named **pt-BR** (BR = Brazil).

### Fallback

You probably already noticed a `_fallback` theme in the themes folder, but in case you didn't: it's where things that are necessary for every theme gets stored, so when someone is making a theme the game doesn't blow up. The same goes for Languages: it's important to also translate the fallback for your language because the theme you're translating might not have every string that it uses on it's own folder.

## Starting a translation

To start your work, create a new file for your language(-COUNTRY, if needed) and don't forget to use the .ini extension. You can do this on Notepad with no problem but it's recommended to use a editor like Visual Studio Code or Notepad++.

Now open en.ini and your new language file, then copy all the content from en.ini to your language file. You can close en.ini now.

### What you should translate

_This is an code example taken from Soundwaves theme._

```ini
[Common]
WindowTitle=Project OutFox
StepMania=Project OutFox
# Dedicated Character Display strings
ModelLoadError=Model for %s (%s) Has a invalid model. Please check if the model.txt file is correctly named and formatted.
ModelAnimLoadError=An animation file for %s's model (%s) is invalid or non-existant. Please check the animation folders and see if there's any file missing.
LocationLoadError=Current Location (%s) is missing its location model. Please check if the model.txt file is correctly named and formatted.
SongLoaderSingleSong=Random Song Play: Current Folder only contains 1 song. OutFox might get confused when picking the song via random. Selecting to index 1.
SongLoaderNoSongs=Random Song Play: No songs were found in your OutFox install folder! Switching back to fallback music.
```

You can see on this image and on your file that every line has a Title=Value, and that's how translation works on OutFox, you need to translate the value of the titles and you're done. The theme does all the work of what string it should use.

Now, you can't just translate literally everything that you see. On ``ModelLoadError`` for example there's a "%s" that means the theme or the game will put a string replacing that %s.

An example of that can be seen on the string ``%d Song Played`` that you'll see on the next image. 

```ini
[Screen]
HelpText=&BACK; Exit &START; Select &SELECT; Options &MENULEFT;&MENURIGHT;&MENUUP;&MENUDOWN; Move

[ScreenWithMenuElements]
HelpText=&BACK; Exit &START; Select &MENULEFT;&MENURIGHT; Move
StageCounter=%s Stage
EventStageCounter=Song %i
```

You'll also see lines like ``&START;``, ``&SELECT;`` etc. They're buttons that will be replaced once the game draws that string. Let's see one of those strings in action?

```ini
[ScreenSelectProfile]
SingularSongPlayed=%d Song Played
SeveralSongsPlayed=%d Songs Played
PressStart=Press &START; to join.
```
![](/translation/profileSongsPlayed.jpeg)

Here we can see that &START; gets replaced by a green square that represents the start button, and %d gets replace by a number that's how many songs that profile played.

Another special string is ``\n``. It creates a line break. For example, ``First Line\nSecondLine`` would result in:

_First Line_

_Second Line_

Here's a example in action from `_fallback/en.ini`:

![](/translation/cauntionWarning.png)

### Text Context

You might also want to translate the theme in a way that someone who has never played before will understand it, instead of expecting everyone to already know what everything is. A new player might not understand what "holds" mean if that word is translated to your language, but if it was kept as "holds" the user would know that it's the literal name of the thing and not something that should make sense in your language.

Another hard example are steps: in OutFox, there are 2 kinds of steps. The ones that you press in gameplay and the steps of the chart made by the author (easy steps, hard steps...). In English, it's easy to only say steps because it makes sense for both, but that isn't the case with every language. That's why it was decided to keep it named "steps" for the pt-BR translation of Soundwaves, for example.

### Community Translations for Soundwaves (OutFox default until Alpha V)

Many folks are already helping translate the new Soundwaves theme for various languages. As requested by one of our translators, we'll mention those projects below in order to give them some visibility and encourage more people to join and help.

° [Polish](https://github.com/Tiny-Foxes/OutFox-PL) - Done by [Moneko](https://github.com/JustMoneko)

° [Japanese](https://github.com/Tiny-Foxes/OutFox-ja) - Done by [はぬべき(hanubeki)](https://github.com/hanubeki)

° [Portuguese-Brazilian](https://github.com/Tiny-Foxes/OutfoxPTBR) - Done by [zerinho6](https://github.com/moruzerinho6), [SHRMP0](https://github.com/SHRMP0) and [SheepyChris](https://github.com/SheepyChris)

° [German](https://github.com/Tiny-Foxes/OutFox-DE) - Done by [DanielRotwind](https://github.com/DanielRotwind)

° [Hebrew](https://github.com/Tiny-Foxes/OutFox-he) - Done by [Snil4](https://github.com/snil4)

° [French](https://github.com/Tiny-Foxes/Outfox-fr) - Done by [Ksempac](https://github.com/Ksempac) and [Kaede573](https://github.com/Kaede573)

° [Español](https://github.com/Tiny-Foxes/OutFox-es) - Done by [JoseVarelaP](https://github.com/JoseVarelaP)

° [Hungarian](https://github.com/Tiny-Foxes/OutFox-hu) - Done by [KaZo75](https://github.com/Tiny-Foxes/OutFox-hu)

° [Italian](https://github.com/Tiny-Foxes/OutFox-IT) - Done by [Gabrimax](https://github.com/Gabrimax98)

---

## Tools and Practices

Translating can be boring and tedious. Sometimes it's hard to locate & remove lines that shouldn't be there or find missing ones. Because of that, translators themselves create tools to make our job easier and faster.

{{< tabs "toolsandpractices" >}}
{{< tab "Translation Toolkit" >}}

[Translation Toolkit](https://github.com/Tiny-Foxes/Translation-Toolkit) is a tool made by [Ksempac](https://github.com/Ksempac) to help remove lines that are not needed anymore, warn about lines that are missing, check your progress, etc. It supports linux, Mac and Windows.

> _This project is intended as a small application to automate some tasks for translators._
>
>_It is able to parse, analyze and fix the OutFox translation files._
![](/translation/translationToolkit.png)
{{< /tab >}}
{{< tab "Stepmania-TranslatorViewMaker" >}}
[Stepmania-TranslatorViewMaker](https://github.com/Tiny-Foxes/Stepmania-TranslatorViewMaker) is a tool made by [Snil4](https://github.com/snil4). It supports any OS that has python 3 installed.

> _Have you ever tried to translate a program like OutFox and wondered "Hmm, now where can I find that line in the .ini?" Now there's no need to wonder! This program will make a translator view file for your translation .ini and make you translation job easier._

![](/translation/translatorView.jpg)
{{< /tab >}}
{{< tab "Tiny-Webini" >}}
[Tiny-Webini](https://github.com/Tiny-Foxes/Tiny-Webini) is a tool made by [zerinho6](https://tiny-foxes.github.io/Tiny-Web/members/moruzerinho6.png) to help with translations of [OutFox Website](https://projectoutfox.com/). While not used to translate OutFox (unless themes adopt HTML in the future), it uses the same translation system as OutFox. It makes less HTML code or none at all being necessary to translate the website. While the souce code might be able to run on other OS by building manually, it only supports Windows officially.

> Translate OutFox website with the same style OutFox uses for its translations.

![](/translation/tinyWebini.png)
{{< /tab >}}
{{< /tabs >}}

### Best practices

#### Be constant with your words

When doing a mention to "Steps", ask yourself: is it clear which "type of Steps" you're referring to? We have the following "types of steps":

* Steps, which means the notes inside of the chart or the note count.
* StepDifficulty, which means the difficulty selected of the chart, such as Novice, Expert, Hard.
* Step, which means the action of stepping in the pad or a single note.
* StepType, which means the quantization (timing/color) of the note (e.g. 4th = red, an entire beat; 8th = blue, half a beat; etc).

**[Soundwaves](https://github.com/Tiny-Foxes/smtheme-soundwaves-community)** does not have this issue as it says "Taps" instead of Steps and directly says the difficulty.

![](/translation/soundwavesMusicWheel.png)

#### Reload translations

![](/translation/cauntionWarning.png)

Imagine you're editing the Soundwaves ScreenCaution and want to see how the translated string looks. You don't need to restart the entire game to see the changes, here's what you should do instead: Exit the screen you just translated, reload the metrics (`Shift + Insert`; or `Shift + F2` on older alpha versions) and enter the screen again.

Some themes might have a problem where not all strings are updated when metrics are reloaded due to how they are made. In that case, unfortunately the only option is restart the game.

---

## OutFox Releases

Now that you have translated the latest alpha, you need to send it to OutFox somehow. This tutorial explains how you can do it!

The first thing to keep in mind is that each OutFox translation is hosted inside [Tiny-Foxes](https://github.com/Tiny-Foxes) to easily maintain and keep track of updates, so contact Team Rizu through any of their available social media profiles to get invited into Tiny-Foxes.

It is also required to know how [git](https://git-scm.com/) and [Github](https://github.com/) works.

Exact steps are:

1. Create a [Github](https://github.com/) account
2. Download and learn basic [git](https://git-scm.com/) commands such as (git status, git push, git pull, git commit and git checkout)
3. Learn how github organization works.

Having an editor such as [Visual Studio Code](https://code.visualstudio.com/) will make git interactions way easier as those commands are available by the interface.
### Repository

OutFox translation repositories adhere to a standard style. Repository title should be: 

"OutFox-[languageFileName[-COUNTRY]]"

_"-COUNTRY" should only be added in special cases (example: there's Portuguese from Portugal and Brazilian Portuguese, so the Portuguese-Brazilian language file is "pt-BR.ini")._

The description of the repository should be: 

"[Language Name] ([languageFileName]) Translation for Project OutFox""

Here's an example:

```
OutFox-ja

Japanese (ja) Translation for Project OutFox
```

#### Repository Format

The repository should have 2 folders: "_fallback" and "default". Inside the _fallback will be the _fallback translation and default translation inside the default folder.

Only the translation file is required to be inside the folders/repository.

#### Keep track

It's recommended that you include the version that the translation is targeting inside the files. Here's an example:

```ini
# Version: 4.9.7 Alpha

[Common]
WindowTitle=Project OutFox
StepMania=OutFox
```

### Submitting to OutFox

So you finished the translation for this alpha before the release? You can then **commit directly to master OR make a Pull Request** with your files to [OutFox-Translations](https://github.com/Tiny-Foxes/OutFox-Translations) so [Jose_Varela](https://github.com/JoseVarelaP) includes them in the next alpha release.

**This all assumes that you're already a member of Tiny-Foxes and the translator team.**

## Webmasters Project

Webmasters is an internal OutFox initiative to translate [OutFox Website](https://projectoutfox.com/). Being a webmaster means: 

- Partial access to the website backend to implement your translation files;
- Closer contact with the OutFox Commmunity team for quick updates and help;
- Having a special role in our Discord Server.

The requirements to join Webmasters are having previous experience as a long-term OutFox translator, being a [Discord Server](https://discord.gg/cN4TjgQdcA) member, and receiving a special invitation from the OutFox Team.

If you meet those requirements, there are already tools to help you:

- [OutFoxWeb](https://github.com/Tiny-Foxes/OutFoxWeb)

    - Constantly updated to represent elements that are possible to be translated in the website. Translating those files would result in translating 80% what is possible to translate in the website already.

- [Tiny-Webini](https://github.com/Tiny-Foxes/Tiny-Webini)

    - A tool created by [zerinho6](https://github.com/moruzerinho6) to make website translation faster, easier, better and more like OutFox. Tiny-Webini removes all need to editing HTML files and uses a single .ini file like OutFox instead, it also has translator tools such as: show what can be translated by highlighting translatable elements, changing all translatable text to show its string key instead of string value and generate the HTML files needed to apply on the website backend.
