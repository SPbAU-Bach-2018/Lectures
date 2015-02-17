#!/bin/bash
templatedir=../template
TEXINPUTS=.:$templatedir: /bin/bash $templatedir/build.sh guidelines
