#!/bin/bash


if [ -f ~/.bash_aliases ];
then
    echo "~/.bash_aliases file found"
else
    echo "creating ~/.bash_aliases file"
    touch ~/.bash_aliases
fi

BASEDIR=$(dirname "$0")
# echo $(pwd)/$BASEDIR

echo "
if [ -f $(pwd)/$BASEDIR/.bash_aliases ];
then
    . $(pwd)/$BASEDIR/.bash_aliases
fi
" >> ~/.bash_aliases
