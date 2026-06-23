#!/bin/bash
set -e

ZSH_CUSTOM="${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"

echo ">>> Installing Oh My Zsh plugins..."

# zsh-autosuggestions
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]; then
    echo "  - zsh-autosuggestions"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
else
    echo "  - zsh-autosuggestions (already installed)"
fi

# zsh-syntax-highlighting
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
    echo "  - zsh-syntax-highlighting"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
else
    echo "  - zsh-syntax-highlighting (already installed)"
fi

echo ">>> Done."
