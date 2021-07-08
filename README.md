Welcome to the documentation wiki for [Project OutFox 5.3](https://projectmoon.dance)! **Project OutFox** is a fork of StepMania with a focus on internal modernization to its code, as well as refurbishing and extending its ability to support various types of rhythm games.

This wiki is still a work in progress, so keep checking back for updates on new content. Commit access is limited to the development team, but you can always perform pull requests too!

## Editing this wiki

The site is implemented using the [Hugo](https://gohugo.io/) framework and the [Geekdocs](https://geekdocs.de/) theme. All of the wiki pages (usually stored as markdown or HTML files) are stored in the ``content`` directory, with subfolders for each category. Each category folder ``_index.md`` file to define titles and determine their order in the table of contents sidebar. These are configured using Hugo _front matter_;

On categories, they are written like this;

```md
---
title: User Guide
weight: -2
geekdocCollapseSection: true
---
```

The ``weight`` parameter determines the order, and ``geekdocCollapseSection`` ensures they will not default to being expanded on.

Article pages must also contain front matter for best results.

```md
---
title: Installation
weight: 1
---
```

Media such as images are stored in the ``static`` directory. When writing pages, you can link to media from the folder like so.

```md
![Screenshot of the Project OutFox installation wizard on Windows 10.](/getting-started/installer.png)
```

Internal links work the same way.

```md
It is located in the Save [folder](/user-guide/config/folders).
```

When commits are pushed to the main branch, a GitHub workflow will compile them and push them to the ``gh-pages`` branch.
 
## Credits and license
Text available under the <a href="http://creativecommons.org/licenses/by-sa/4.0/" rel="license">CC-BY SA 4.0</a> licence, attributed to Team Rizu unless otherwise noted. Powered by GitHub Pages and <a href="https://docsify.js.org/#/">Docsify</a>
