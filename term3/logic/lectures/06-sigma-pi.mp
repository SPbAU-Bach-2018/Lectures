prologues := 3;
outputtemplate := "%j-%c.ps";
u = 1cm;

vardef scalebox(expr b, x, y) =
  pair center;
  center := 0.5[ulcorner b, lrcorner b];
  b shifted (-center) xscaled x yscaled y shifted center
enddef;

vardef getbox(expr s, p) =
  picture img;
  img := image(label(s, p););
  draw img;
  scalebox((bbox img), 1.5, 1.5)
enddef;

vardef top(expr i) = 0.5[ulcorner i, urcorner i] enddef;
vardef bot(expr i) = 0.5[llcorner i, lrcorner i] enddef;
vardef lft(expr i) = 0.5[ulcorner i, llcorner i] enddef;
vardef rgt(expr i) = 0.5[urcorner i, lrcorner i] enddef;

def main_image = 
  path lbox;
  lbox := getbox(btex $\Sigma_0 = \Pi_0$ etex, (0u, 0u));
  lbox := lbox yscaled 1.5;
  draw bot(lbox){right}..rgt(lbox){up}..top(lbox){left}..lft(lbox){down}..cycle;

  pair a, b;
  a := 0.25[llcorner(lbox), ulcorner(lbox)];
  b := 0.25[lrcorner(lbox), urcorner(lbox)];

  path s[], p[];

  s1 := getbox(btex $\Sigma_1$ etex, (-0.75u, 1u));
  p1 := getbox(btex $\Pi_1$ etex, (0.75u, 1u));
  s2 := getbox(btex $\Sigma_2$ etex, (-1.25u, 1.75u));
  p2 := getbox(btex $\Pi_2$ etex, (1.25u, 1.75u));
  s3 := getbox(btex $\Sigma_3$ etex, (-1.5u, 2.5u));
  p3 := getbox(btex $\Pi_3$ etex, (1.5u, 2.5u));

  draw top(s1){left}..lft(s1){down}..lft(lbox){down}..bot(lbox){right}..rgt(lbox){up}..llcorner(p1)..cycle;
  draw top(p1){right}..rgt(p1){down}..rgt(lbox){down}..bot(lbox){left}..lft(lbox){up}..lrcorner(s1)..cycle;

  draw top(s2){left}..lft(s2){down}..lft(lbox){down}..bot(lbox){right}..rgt(lbox){up}..rgt(p1){up}..llcorner(p2)..cycle;
  draw top(p2){right}..rgt(p2){down}..rgt(lbox){down}..bot(lbox){left}..lft(lbox){up}..lft(s1){up}..lrcorner(s2)..cycle;

  draw top(s3){left}..lft(s3){down}..lft(s2){down}..lft(lbox){down}..bot(lbox){right}..rgt(lbox){up}..rgt(p2){up}..llcorner(p3)..cycle;
  draw top(p3){right}..rgt(p3){down}..rgt(p2){down}..rgt(lbox){down}..bot(lbox){left}..lft(lbox){up}..lft(s2){up}..lrcorner(s3)..cycle;
enddef;

beginfig(1);
  picture temp;
  temp = image (main_image);
  draw temp shifted (llcorner temp scaled -1);
endfig;

end
