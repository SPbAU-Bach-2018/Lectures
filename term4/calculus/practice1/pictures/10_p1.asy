import graph;
import patterns;
import math;
settings.outformat="pdf";

void finish(string name) {
  xaxis(Label("$x$", align=2E), EndArrow);
  yaxis(Label("$y$", align=2N), EndArrow);
  shipout("10_" + name + ".pdf");
  erase();
}

unitsize(1cm);

draw(circle((3, 0), 3));
label("$S$", (6, 0), NW);
draw(circle((1, 0), 1), grey);
label("$S_1$", (1, 1), N);
draw(circle((1, 0), 1), arrow=Arrow, dashed + red);
label("$L$", (2, 0), NE, red);
label("$S_2$", (1, 0), N);
finish("p1");
