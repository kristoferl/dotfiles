#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Symlink config files in the rc folder, e.g. .gitconfig/.bashrc etc.
cd ~ || exit
for f in $DIR/rc/*; do
  ln -fs "$f" ".$(basename "$f")"
done

# If .vim exists and is a symlink, remove the link
# If .vim exists and is a directory, remove it
cd ~ || exit
if [[ -L ~/.vim ]]; then
  # echo ".vim is a Symlink"
  rm ~/.vim
elif [[ -d ~/.vim ]]; then
  # echo ".vim is dir"
  mv ~/.vim ~/.vim.bak
fi
cd ~ || exit
# TODO: Copy directly to .vim
ln -fs "$DIR/vim"
mv ~/vim ~/.vim

# Copy user specific git config file
cp "$DIR/files_to_copy/gitconfig_user" ~/.gitconfig_user

# Symlink files in the fish folder
mkdir -p ~/.config/fish
cd ~/.config/fish || exit
for f in $DIR/fish/*; do
  ln -fs "$f"
done

echo "Edit ~/.gitconfig_user to set your name and email. Eg."
echo "name = Your username"
echo "email = Your email"
