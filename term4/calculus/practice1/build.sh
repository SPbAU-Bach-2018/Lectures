#!/bin/bash
DIR=$(dirname `realpath $0`)
TEXINPUTS=$DIR/pictures:$SPBAU_BACH_2018_DISK/term4/calculus/practice1 /bin/bash ../../../template/build.sh practice1
