import "./10_common.asy" as common;
import math;
unitsize(1cm);

pair bl=(-2.5, -2.5);
pair ur=(2.5, 2.5);

path ca = circle((0, 1), 1);
path cb = circle((0, -1), 1);

pair[] dots = new pair[] { (0, 2), (0, -2), (1, 1), (0, 1) };


draw(bl ^^ ur, invisible);
fill(box(bl, ur) ^^ reverse(ca) ^^ reverse(cb), pattern("hatch"));
draw(ca ^^ cb, bordpen);
for (int i = 0; i < dots.length; ++i) {
  mydot(format("$z_%d$", i + 1), dots[i]);
}
finish("p4_a");

pair w1(pair z) {
  return 2 / z;
}

draw(bl ^^ ur, invisible);
fill(box((bl.x, 0), ur), pattern("hatch"));
draw((bl.x, 0) -- (ur.x, 0), bordpen);
finish("p4_b");

draw(bl ^^ ur, invisible);
fill(box((bl.x, -1), (ur.x, 1)), pattern("hatch"));
draw((bl.x, -1) -- (ur.x, -1), bordpen);
draw((bl.x, 1) -- (ur.x, 1), bordpen);
for (int i = 0; i < dots.length; ++i) {
  mydot(format("$z_%d$", i + 1), w1(dots[i]));
}
finish("p4_c");
