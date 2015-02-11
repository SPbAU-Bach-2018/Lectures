for f in lections.tex; do
  name=${f/.*}
  echo $name
  rm $name.{aux,log,out,toc,out.pyg}
  texify --pdf --tex-option=--shell-escape --tex-option=-8bit --quiet $name.tex 
  # --engine=xetex
  rm $name.{aux,log,out,toc,out.pyg}
done
