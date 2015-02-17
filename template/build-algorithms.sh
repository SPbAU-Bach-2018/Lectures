if [ "$1"  == "" ] ; then
  echo "usage: <file.tex>"
  exit 1
fi

if [ "$OS" == "Windows_NT" ] ; then
  win="1"
else
  win="0"
fi

for f in $1; do
  name=${f/.*}
  echo Compile $name
  rm $name.{aux,log,out,toc,out.pyg}

  if [ $win == "1" ] ; then
    texify --pdf --tex-option=--shell-escape --tex-option=-8bit --quiet $name.tex 
  else
    pdflatex -shell-escape $name.tex 
    pdflatex -shell-escape $name.tex 
  fi

  rm $name.{aux,log,out,toc,out.pyg}
done
