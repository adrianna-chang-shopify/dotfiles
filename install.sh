#!/bin/bash
# dotfiles install

cd "$( cd "$( dirname "$0" )" && pwd )"

if [ $SPIN ]; then
  echo 'Installing dotfiles for spin...'

  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  cp -v ~/dotfiles/.zshrc ~/.zshrc
  cat ~/dotfiles/.gitconfig >> ~/.gitconfig
else
  echo "Don't know how to install for this OS or env."
  exit 1
fi
