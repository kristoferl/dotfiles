function update --description 'Runs various update & upgrade commands'

  echo "# Upgrading brew"
  echo " >brew update"
  brew update
  echo " >brew upgrade"
  brew upgrade
  echo " >brew prune"
  brew prune
  echo " >brew cleanup"
  brew cleanup -sf
  echo " >brew doctor"
  brew doctor

  echo "# Upgrading apm"
  #echo " >apm update"
  #apm update
  echo " >apm upgrade"
  apm upgrade --no-confirm
  echo " >apm clean"
  apm clean

  echo "# Upgrading cask"
  echo " >brew cask update"
  #brew cask update
  # Workaround to update casks
  # Silenced error messages when brew cask installing
  #echo "ATT! Cask upgrade is disabled at the moment. Unclear how to do it then 'brew cask update' should no longer be used"
  set -l CASKLIST (brew cask list 2>/dev/null)
  for cask in $CASKLIST
  # Here it might be better to use 'brew cask reinstall'?
    echo "    > Installing $cask"
    brew cask install $cask 2>/dev/null
  end
  echo " >brew cask cleanup"
  brew cask cleanup


  echo "# Update fish completions"
  fish -c "fish_update_completions"

  echo "# All done"
end
