#!/usr/bin/env bash

cat src/dotfiles_ascii.txt

#Install Apple CLT (no heavy-ass XCode)
echo Installing required applications - Command Line Tools
sudo xcode-select --install

#Install Homebrew
echo Installing homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Install brew formulas using Brewfile
echo Install Homebrew formulas using the Brewfile
brew bundle Brewfile

#Install zsh bindings and autocomplete
echo Install oh-my-zsh and set-up iTerm2
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"i

#Download/Install Anaconda
echo Install Python - Anaconda Python 3.6
wget https://repo.continuum.io/archive/Anaconda3-5.0.1-MacOSX-x86_64.sh
bash Anaconda3-5.0.1-MacOSX-x86_64.sh
rm ~/Miniconda3-latest-MacOSX-x86_64.sh

#Install Powerline Fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

#Clean outdated version in the Cellar (Homebrew library)
brew cleanup
