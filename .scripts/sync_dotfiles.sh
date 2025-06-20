#!/bin/bash
mkdir -p ~/dotfiles
rsync -av \
  --include='alacritty/' --include='alacritty/***' \
  --include='fastfetch/' --include='fastfetch/***' \
  --include='gtk-3.0/' --include='gtk-3.0/***' \
  --include='gtk-4.0/' --include='gtk-4.0/***' \
  --include='htop/' --include='htop/***' \
  --include='i3/' --include='i3/***' \
  --include='i3blocks/' --include='i3blocks/***' \
  --include='nvim/' --include='nvim/***' \
  --include='picom/' --include='picom/***' \
  --include='rofi/' --include='rofi/***' \
  --include='pavucontrol/' --include='pavucontrol/***' \
  --exclude='*' \
  ~/.config/ ~/dotfiles/.config/
rsync -av ~/.fonts/ ~/dotfiles/.fonts/
rsync -av ~/.scripts/ ~/dotfiles/.scripts/
rsync -av ~/.bashrc ~/dotfiles/.bashrc
