#!/bin/bash
ROOT_FILE=$1

if [ ! -f "$ROOT_FILE.tex" ]; then
	echo "File not found: $ROOT_FILE"
	exit 1
fi

export TEXINPUTS=$TEXINPUTS:$(cd `dirname $0`; pwd):

if [ "$OS" == "Windows_NT" ]; then
	texify --pdf --engine=xetex --tex-option=-8bit --tex-option=-shell-escape $ROOT_FILE.tex
	exit $?
fi

function get_md5cmd() {
  if hash md5sum >/dev/null 2>&1; then
    echo md5sum
  else
    echo md5
  fi
}

MD5CMD=$(get_md5cmd)

if [ -e $ROOT_FILE.aux ]; then
  old_hash=`$MD5CMD $ROOT_FILE.aux`
fi

while true;
do
	echo -e "\n\e[33m ========== Running XeLaTeX ========== \e[0m"
	xelatex -halt-on-error -8bit -shell-escape $ROOT_FILE.tex || exit 1
	new_hash=`$MD5CMD $ROOT_FILE.aux`
	if [ "$old_hash" == "$new_hash" ]; then
	  break;
	fi
	old_hash=$new_hash
done
