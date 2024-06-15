#!/bin/bash

# Path to your Emacs executable
EMACS=/usr/bin/emacs

# Path to your init file
INIT_FILE=~/.emacs.d/init.el
# Path to your literate config file
ORG_FILE=~/.emacs.d/configuration.el

# Run Emacs in batch mode to tangle config file
function tangle {
touch ~/.emacs.d/init.el
$EMACS --batch \
       --eval "(require 'ob-tangle) (org-babel-tangle-file \"$ORG_FILE\")"
}


# Run Emacs in batch mode to install and compile all packages
function compile {
$EMACS --batch -l $INIT_FILE \
       --eval "(straight-pull-all)" \
       --eval "(straight-rebuild-all)" \
       --eval "(byte-recompile-directory (straight--build-dir) 0 t)"
}


tangle
compile
