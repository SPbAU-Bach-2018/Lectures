#!/bin/bash
for i in *.mp; do mpost $i; done
TEXINPUTS=$SPBAU_BACH_2018_DISK/term3/logic/lectures /bin/bash ../../../template/build.sh lectures
