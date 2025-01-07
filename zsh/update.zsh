update () {
  echo "Update oh-my-zsh"
  # Instead of running "omz update", run "zsh -i -c 'omz update'", this is because if an update i applied, the shell is restarted and the function is aborted.
  zsh -i -c 'omz update'
  echo "# Upgrading brew"
  echo " >brew update"
  brew update
  echo " >brew upgrade"
  brew upgrade
  echo " >brew cleanup"
  brew cleanup -s
  #echo " >brew doctor"
  #brew doctor

  echo "# Upgrading apm"
  echo " >apm upgrade"
  apm upgrade --no-confirm
  echo " >apm clean"
  apm clean

  echo "# Upgrading cask"
  brew upgrade --cask

  echo "# All done"
}
