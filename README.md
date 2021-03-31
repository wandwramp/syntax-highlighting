# WRAMP Assembly Syntax Highlighting Files

This repo contains syntax highlighting definition files for WRAMP assembly, for a few different editors.
The files can be placed in a few places depending on whether the effects should be seen for just one user or for all of them.

Also check the `vscode` folder for the source of the Visual Studio Code extension, which can be found in the Marketplace.

## Single-User

Copy the contents of ./vim into ~/.vim such that ~/.vim/syntax/wramp.vim exists.

Copy the contents of ./gedit into ~/.local/share such that ~/.local/share/mime/packages/wramp.xml exists.

## Every user on the system by default

Copy the contents of ./vim into /usr/share/vim/vimfiles such that /usr/share/vim/vimfiles/syntax/wramp.vim exists.

Copy the contents of ./gedit into /usr/share such that /usr/share/mime/packages/wramp.xml exists.

## Special note for older distributions

Distributions of Ubuntu older than 20.04 used `/usr/share/gtksourceview-3.0` rather than `/usr/share/gtksourceview-4` to store the gedit language definitions. If the install instructions for gedit for every user on the system do not work, try installing the contents of our `gedit/gtksourceview-4` folder into `/usr/share/gtksourceview-3.0` as well.

This is likely to be the case on other distributions as well, since gtksourceview tends to package versions 3 and 4 separately.
