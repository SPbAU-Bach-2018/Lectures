settings.outformat="pdf";
unitsize(1.2cm);
import graph;

pair F(real r, real t) {
  return (0.5 * (r + 1.0 / r) * cos(t), 0.5 * (r - 1.0 / r) * sin(t));
}
real[] vals = {0.2, 0.3, 0.5, 0.7, 0.9};

pair minp = (0, 0), maxp = (0, 0);
for (int i = 0; i < vals.length; ++i) {
  pair curF(real t) { return F(vals[i], t); }
  path p = graph(curF, 0, 2 * pi);
  draw(p, linewidth(0.5bp) + blue);
  label(format("$r_0=%.2f$", vals[i]), (0, max(p).y), align=NE);
  minp = min(minp--min(p));
  maxp = max(maxp--max(p));
}

draw((-1, 0) -- (1, 0), linewidth(1bp) + blue);

xaxis("$Re$", LeftTicks, EndArrow);
yaxis("$Im$", EndArrow);
