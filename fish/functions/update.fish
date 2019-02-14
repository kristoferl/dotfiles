function update --description 'Runs various update & upgrade commands'

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
  # https://github.com/jseb/cask-upgrade
  brew cask upgrade

  echo "# Update fish completions"
  fish -c "fish_update_completions"

  echo "# All done"
end
