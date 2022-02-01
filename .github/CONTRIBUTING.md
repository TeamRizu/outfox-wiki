Thanks for taking your time to report issues or contribute to Project OutFox Wiki. As our target is to make this documentation as accurate as possible, we also hope its yours, that's why we created such document.

## Creating issues

If you want to request an specific section to be documented (e.g: "I wish course files had proper documentation about how to create one and what it can do") you may do such request an a issue using the "Request" issue template. Otherwise, if you wish to report possible misinformation, please create a issue providing information including how our information is incorrect and a correct replacement.

## Preparing for pull requests

Be sure to follow the tutorial about editing our wiki, included [here](../README.md#editing-this-wiki). Before pushing your changes and creating a pull request, be sure to locally host a server to check if there's no issue when rendering your page/edits.

### Having problems hosting your server?

Be sure to edit the following line in `config.toml`:

```TOML
baseURL = "https://outfox.wiki"
```

when local hosting, you usually want it to have the following value:

```TOML
baseURL = "http://localhost"
```

### Creating pull request

If everything is working and ready, create a pull request and detail what changes it brings, make sure the wording is appropriate with our code of conduct and informative.