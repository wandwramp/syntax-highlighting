# WRAMP Assembly Syntax Highlighting Files

This repo contains syntax highlighting definition files for WRAMP assembly, for a few different editors.
The files can be placed in a few places depending on whether the effects should be seen for just one user or for all of them.

## Single-User

Copy the contents of ./vim into ~/.vim such that ~/.vim/syntax/wramp.vim exists.

Copy the contents of ./gedit into ~/.local/share such that ~/.local/share/mime/packages/wramp.xml exists.

## Every user on the system by default

Copy the contents of ./vim into /usr/share/vim/vimfiles such that /usr/share/vim/vimfiles/syntax/wramp.vim exists.

Copy the contents of ./gedit into /usr/share such that /usr/share/mime/packages/wramp.xml exists.
