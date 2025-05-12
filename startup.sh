#!/bin/bash 

WORK_DIR="$HOME/.local/share/dotfile"

rm -rf $WORK_DIR
git clone https://github.com/wygplay/dotfile.git $WORK_DIR >/dev/null 
cd $WORK_DIR
source $WORK_DIR/install.sh
