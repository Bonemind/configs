#!/bin/bash
DIRS=("bash" "fish" "git" "intellij" "qtile" "tmux" "vim")
PARENT=$(dirname "$PWD")

if ! hash stow 2>/dev/null; then
	echo 'Missing stow, please install GNU Stow first'
	exit 1
fi

echo Stow will stow to $PARENT

read -p "Are you sure? [y/N] " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	for dir in "${DIRS[@]}"
	do
		echo Stowing $dir
		stow $dir
	done
	echo Done
else
	echo Aborting...
fi