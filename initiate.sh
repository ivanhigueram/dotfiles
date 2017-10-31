#!/usr/bin/env bash
echo Installing required applications - Command Line Tools
sudo xcode-select --install
echo Installing homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo Install Homebrew formulas using the Brewfile

echo Install oh-my-zsh and set-up iTerm2
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"i

#Clean outdated version in the Cellar (Homebrew library)
brew cleanup
