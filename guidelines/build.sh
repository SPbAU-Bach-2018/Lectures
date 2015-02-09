#!/bin/bash
if [ -e *.aux ]; then
  old_hash=`md5sum *.aux`
fi

while true;
do
	echo -e "\n\e[33m ========== Running XeLaTeX ========== \e[0m"
	xelatex -halt-on-error -8bit -shell-escape guidelines.tex || exit 1
	new_hash=`md5sum *.aux`
	if [ "$old_hash" == "$new_hash" ]; then
	  break;
	fi
	old_hash=$new_hash
done
