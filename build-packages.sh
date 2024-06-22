#!/bin/bash

# Path to your Emacs executable
EMACS=/usr/bin/emacs

# Path to your init  file
INIT=~/.emacs.d/configuration.el

# Run Emacs in batch mode to install and compile all packages

$EMACS --batch -l $INIT \
       --eval "(straight-pull-all)" \
       --eval "(straight-rebuild-all)" \
       --eval "(byte-recompile-directory (straight--build-dir) 0 t)"


