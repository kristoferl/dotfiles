#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Symlink config files in the rc folder, e.g. .gitconfig/.bashrc etc.
cd ~ || exit
for f in $DIR/rc/*; do
  ln -fs "$f" ".$(basename "$f")"
done

# Save old .vim dir before replacing it
cd ~ || exit
mv .vim .vim.bak
ln -fs "$DIR/vim" ".vim"


# Symlink files in the fish folder
mkdir -p ~/.config/fish
cd ~/.config/fish || exit
for f in $DIR/fish/*; do
  ln -fs "$f"
done
