function update --description 'Runs various update & upgrade commands'

  echo "Upgrading brew"
  brew update
  brew upgrade
  brew prune
  brew cleanup -sf
  brew doctor

  echo "Upgrading apm"
  apm update
  apm upgrade --no-confirm
  apm clean

  echo "Upgrading cask"
  brew cask update
  # Workaround to update casks
  # Silenced error messages when brew cask installing
  set -l CASKLIST (brew cask list 2>/dev/null)
  for cask in $CASKLIST
    #brew cask install $cask
    brew cask install $cask 2>/dev/null
  end
  brew cask cleanup


  echo "Update fish completions"
  fish -c "fish_update_completions"

  echo "All done"
end
