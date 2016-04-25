import "./09_common.asy" as common;
import math;

pair bl=(-1.5, -1.5);
pair ur=(1.5, 1.5);

path ca = circle((0, 0), 1);
path cb = circle((0, 0.5), 0.5);

path hout = rotate(90) * unitcircle;
path hin = reverse(shift(0, 0.5) * scale(0.5) * rotate(90) * unitcircle);
path hole = hout -- hin -- cycle;

pen cpen = dashed + linewidth(1bp);

pair pts[] = new pair[] { (1, 0), (-1, 0)  };

draw(bl ^^ ur, invisible);
fill(hole, pattern("hatch"));
draw(ca, cpen);
draw(cb, cpen);
draw(hole, bordpen);
for (int i = 0; i < pts.length; ++i) {
  dot(pts[i], blue);
}
finish("p3_a");

draw(bl ^^ ur, invisible);
fill(box((-1, bl.y), (1, ur.y)), pattern("hatch"));
draw((-1, bl.y)--(-1, ur.y), bordpen);
draw((1, bl.y)--(1, ur.y), bordpen);
finish("p3_b");

pair w1(pair z) {
  return z / (z - (0, 1));
}

draw(bl ^^ ur, invisible);
fill(box((0, bl.y), (0.5, ur.y)), pattern("hatch"));
draw((0, bl.y)--(0, ur.y), bordpen);
draw((0.5, bl.y)--(0.5, ur.y), bordpen);
for (int i = 0; i < pts.length; ++i) {
  dot(w1(pts[i]), blue);
}
finish("p3_c");
