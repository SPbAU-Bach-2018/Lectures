import "./08_common.asy" as common;
import math;
unitsize(0.7cm);

pair bl=(-1.5, -3.5);
pair ur=(6.5, 3.5);

add("nnehatch", hatch(N+NE, grey));
add("holehatch", hatch(2mm, grey));

path ca = circle((0, 0), 1);
path cb = circle((3, 0), 3);

pair[] ips = sort(intersectionpoints(ca, cb), lexorder);
path hup = arc((3, 0), ips[1], ips[0]);
path hdn = arc((0, 0), ips[0], ips[1]);
path hole = hup -- hdn -- cycle;

pen cpen = dashed + linewidth(1bp);

draw(bl ^^ ur, invisible);
fill(hole, pattern("holehatch"));
draw(ca, cpen);
draw(cb, cpen);
draw(hole, bordpen);
finish("p3_a");

draw(bl ^^ ur, invisible);
fill(box((bl.x, 0), ur), pattern("hatch"));
draw((bl.x, 0)--(ur.x, 0), bordpen);
finish("p3_b");

unitsize(1.2cm);

draw(bl ^^ ur, invisible);
draw(ca, cpen);
draw(cb, cpen);
fill(hole, pattern("holehatch"));

pair z[] = { (0, 0), ips[0], ips[1], (-1, 0), (6, 0), (0.5, 0) };

draw(hup, red + wpen);
draw(hdn, magenta + wpen);
for (int i = 1; i < z.length; ++i) {
  mydot(format("$z_%d$", i), z[i]);
}
finish("p3_c");

pair f(pair x) {
  return (x - z[2]) / (x - z[1]);
}
pair w3 = f(z[3]), w4 = f(z[4]);

draw(bl ^^ ur, invisible);
fill(w4 * -10 -- (0, 0) -- w3 * -10 -- cycle, pattern("nnehatch"));
draw(w4 * 10 -- w4 * -10, red + linewidth(2bp));
draw(w3 * 10 -- w3 * -10, magenta + linewidth(2bp));
for (int i = 1; i < z.length; ++i) {
  if (i != 1) {
    mydot(format("$w_%d$", i), f(z[i]));
  }
}
clip(box(bl, ur));
finish("p3_d");
