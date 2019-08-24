#! /bin/bash
sudo apt-get update
sudo apt-get install git

rm -rf ~/.dotfiles

echo 'alias dotgit="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"' >> $HOME/.bash_aliases
source ~/.bashrc
echo ".dotfiles" >> ~/.gitignore
git clone --bare https://www.github.com/thomaskehl/.dotfiles.git $HOME/.dotfiles
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout -f
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no


