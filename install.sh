#!/usr/bin/env zsh

set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

typeset -A FILES_TO_SYMLINK=(
  "zshrc"             "$HOME/.zshrc"
  "ghostty"           "$HOME/Library/Application Support/com.mitchellh.ghostty/config"
  "nvim"              "$HOME/.config/nvim"
  "zed/settings.json" "$HOME/.config/zed/settings.json"
  "zed/keymap.json"   "$HOME/.config/zed/keymap.json"
)

echo "Keys found: ${(k)FILES_TO_SYMLINK}"
echo "Creating symlinks from $DOTFILES_DIR..."

for src in ${(k)FILES_TO_SYMLINK}; do
  dest="${FILES_TO_SYMLINK[$src]}"
  src_path="$DOTFILES_DIR/$src"

  echo "Handling key=$src: linking $src_path -> $dest"

  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    echo "Backing up existing file at $dest to $dest.bak"
    mv "$dest" "$dest.bak"
  fi

  mkdir -p "$(dirname "$dest")"
  ln -sf "$src_path" "$dest"
done

echo "Done!"
