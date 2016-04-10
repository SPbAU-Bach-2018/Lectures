import "./09_common.asy" as common;
import math;
unitsize(1.5cm);

pair bl=(-2, -1);
pair ur=(2, 1.5);

pen cpen = dashed + linewidth(1bp);
add("smallhatch", hatch(2mm, grey));

pair[] z = new pair[]{ (-pi/2, 0), (0, 0), (pi/2, 0) };
pair[] w = new pair[]{ (-1, 0), (0, 0), (1, 0) };

draw(bl ^^ ur, invisible);
picture mybox;
fill(mybox, box((-pi/2, 0), (pi/2, ur.y)), pattern("hatch"));
draw((-pi/2, bl.y) -- (-pi/2, ur.y), cpen);
draw((pi/2, bl.y) -- (pi/2, ur.y), cpen);
draw((bl.x, 0) -- (ur.x, 0), cpen);
draw(mybox, (-pi/2, ur.y) -- (-pi/2, 0) -- (pi/2, 0) -- (pi/2, ur.y), bordpen);
add(mybox);
for (int i = 0; i < z.length; ++i) {
  mydot(format("$z_%d$", i+1), z[i]);
}
finish("p4_a");

draw(bl ^^ ur, invisible);
fill(box((bl.x, 0), ur), pattern("hatch"));
draw((bl.x, 0) -- (ur.x, 0), bordpen);
for (int i = 0; i < z.length; ++i) {
  mydot(format("$w_%d$", i+1), w[i]);
}
finish("p4_b");

bl=(-0.4, -1);
ur=(3.6, 1.5);

draw(bl ^^ ur, invisible);
add(shift(pi/2, 0) * mybox);
clip(box(bl, ur));
finish("p4_c");

bl=(-1.5, -0.4);
ur=(1, 3.6);
draw(bl ^^ ur, invisible);
add(rotate(90) * shift(pi/2, 0) * mybox);
clip(box(bl, ur));
finish("p4_d");

bl=(-1.2, -0.5);
ur=(1.2, 1.5);
draw(bl ^^ ur, invisible);
path halfc = arc((0, 0), (1, 0), (-1, 0)) -- cycle;
fill(halfc, pattern("smallhatch"));
draw(halfc, bordpen);

pair a[] = new pair[] { -1, 1, 0, (0, 1) };
for (int i = 0; i < a.length; ++i) {
  mydot(format("$a_%d$", i + 1), a[i]);
}
finish("p4_e");

pair w3(pair z) {
   return (z + 1) / (z - 1);
}
pair w4(pair z) {
   return z * z;
}

bl=(-1.5, -1.5);
ur=(0.5, 0.5);
draw(bl ^^ ur, invisible);
fill(box(bl, 0), pattern("hatch"));
draw((0, 0) -- (0, bl.y), bordpen);
draw((0, 0) -- (bl.x, 0), bordpen);
for (int i = 0; i < a.length; ++i) if (a[i] != 1) {
  mydot(format("$b_%d$", i + 1), w3(a[i]));
}
finish("p4_f");

bl=(-1.5, -0.5);
ur=(1.5, 1.5);
draw(bl ^^ ur, invisible);
fill(box((bl.x, 0), ur), pattern("hatch"));
draw((bl.x, 0) -- (ur.x, 0), bordpen);
for (int i = 0; i < a.length; ++i) if (a[i] != 1) {
  mydot(format("$c_%d$", i + 1), w4(w3(a[i])));
}
finish("p4_g");
