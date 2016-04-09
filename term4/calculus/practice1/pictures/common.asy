settings.outformat="pdf";
unitsize(2cm);
import graph;
import patterns;

pen wpen = linewidth(1.2bp);
pen bordpen = red + wpen;

void _finish(string name, real step, real Step) {
  xaxis(Label("$Re$", align=2E), Ticks(NoZero, step=step, Step=Step), EndArrow);
  yaxis(Label("$Im$", align=2N), Ticks(NoZero, step=step, Step=Step), EndArrow);
  shipout(name);
  erase();
}

add("hatch", hatch(grey));

void mydot(string label, pair pos) {
  dot(Label(label, align=2NE, filltype=Fill(white)), pos, blue);
}
