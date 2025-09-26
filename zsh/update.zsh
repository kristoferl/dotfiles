update () {
  echo "Update oh-my-zsh"
  $ZSH/tools/upgrade.sh
  echo "# Upgrading brew"
  echo " >brew update"
  brew update
  echo " >brew upgrade"
  brew upgrade
  echo " >brew cleanup"
  brew cleanup -s
  #echo " >brew doctor"
  brew doctor

  echo "# All done"
}
