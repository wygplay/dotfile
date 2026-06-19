#!/bin/bash

ln -s $WORK_DIR/ideavim/.ideavimrc $HOME/.ideavimrc
ln -s $WORK_DIR/lunarvim/config.lua $HOME/.config/lvim/config.lua

# AstroNvim user config (only user-customized files)
mkdir -p $HOME/.config/nvim/lua/plugins
ln -sf $WORK_DIR/astrovim/lua/community.lua $HOME/.config/nvim/lua/community.lua
ln -sf $WORK_DIR/astrovim/lua/polish.lua $HOME/.config/nvim/lua/polish.lua
ln -sf $WORK_DIR/astrovim/lua/plugins/user.lua $HOME/.config/nvim/lua/plugins/user.lua
