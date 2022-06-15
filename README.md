Welcome to the documentation wiki for [Project OutFox](https://projectoutfox.com)! **Project OutFox** is a multi mode mix of rhythm, simulation and parser compatibility to create a unique sandbox experience for players. 

It allows for complete customisation it's 17 simulation modes, allowing for many thousands of choices in how one can play. It was born from a project based on StepMania's 5.1-b2 branch that has massively grown in scope.

This wiki is still a work in progress, so keep checking back for updates on new content. Commit access is limited to the development team, but you can always perform pull requests too!

## Editing this wiki

The site is implemented using the [Hugo](https://gohugo.io/) framework and the [Geekdocs](https://geekdocs.de/) theme. All of the wiki pages (usually stored as markdown or HTML files) are stored in the ``content`` directory, with subfolders for each category. Each category folder must contain a ``_index.md`` file to define titles and determine their order in the table of contents sidebar. These are configured using Hugo _front matter_;

On categories, they are written like this;

```md
---
title: User Guide
weight: -2
geekdocCollapseSection: true
---
```

The ``weight`` parameter determines the order, and ``geekdocCollapseSection`` ensures they will not default to being expanded on the table of contents sidebar. A category's ``_index.md`` can also contain content to act as an index page for its subject.

Article pages must also contain front matter for best results.

```
---
title: Installation
weight: 1
---
```

Other parameters are avaliable, such as ``description``.

Media such as images are stored in the ``static`` directory. When writing pages, you can link to media from the folder like so.

```
![Screenshot of the Project OutFox installation wizard on Windows 10.](/getting-started/installer.png)
```

Internal links work the same way.

```
It is located in the Save [folder](/user-guide/config/folders).
```

When commits are pushed to the main branch, a GitHub workflow will compile the files and deploy them to the ``gh-pages`` branch.
 
## Credits and license
Text available under the <a href="http://creativecommons.org/licenses/by-sa/4.0/" rel="license">CC-BY SA 4.0</a> licence, attributed to Team Rizu unless otherwise noted. Powered by GitHub Pages and <a href="https://docsify.js.org/#/">Docsify</a>
