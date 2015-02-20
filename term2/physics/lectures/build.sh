#!/bin/bash
templatedir=../../../template
TEXINPUTS=.:$templatedir:$SPBAU_BACH_2018_DISK/term2/physics/lectures: /bin/bash $templatedir/build.sh lectures
