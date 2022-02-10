#!/bin/bash
# dotfiles install

cd "$( cd "$( dirname "$0" )" && pwd )"

if [ $SPIN ]; then
  echo 'Installing dotfiles for spin...'

  cp -v ~/dotfiles/.gitconfig ~/.gitconfig
else
  echo "Don't know how to install for this OS or env."
  exit 1
fi
