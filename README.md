Don't Starve Polish Translation
=============

Polish translations for Don't Starve. Based on (http://steamcommunity.com/sharedfiles/filedetails/?id=370290669)

Working with:

* Don't Starve
* Don't Starve RoG
* Don't Starve Shipwrecked

### Polish fonts

Currenly Don't Starve does not support UTF-8 encoding (only ASCII). In `src` directory
you can find `polish.po` file with UTF-8 string. This file is ready to edit in any PO editor.

To make it work with Don't Starve we need to change all polish special characters to these available in
ASCII table. You can do this with `rake release` command. In will prepare all files in `dist` folder.

### Distribute

You can install mod from Steam Workshop or build on your computer with `rake distribute`. Before that you need to set
`MODS_DIRECTORY` ENV variable.

```
MODS_DIRECTORY="dontstarve_steam.app/Contents/mods" rake distribute
```

### Useful commands

```
rake distribute  # Copy release to mods directory
rake release     # Create release
```
