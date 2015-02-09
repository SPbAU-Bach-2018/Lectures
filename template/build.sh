#!/bin/bash
ROOT_FILE=$1
if [ -e $ROOT_FILE.aux ]; then
  old_hash=`md5sum $ROOT_FILE.aux`
fi

while true;
do
	echo -e "\n\e[33m ========== Running XeLaTeX ========== \e[0m"
	xelatex -halt-on-error -8bit -shell-escape $ROOT_FILE.tex || exit 1
	new_hash=`md5sum $ROOT_FILE.aux`
	if [ "$old_hash" == "$new_hash" ]; then
	  break;
	fi
	old_hash=$new_hash
done
