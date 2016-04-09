import "./07_common.asy" as common;
import math;

pair bl=(-1.5, -1.5);
pair ur=(1.5, 1.5);

add("nnehatch", hatch(N+NE, grey));
add("holehatch", hatch(2mm, grey));

path ca = circle((0, 1), 1);
path cb = circle((1, 0), 1);

pair[] ips = sort(intersectionpoints(ca, cb), lexorder);
path hup = arc((1, 0), ips[1], ips[0]);
path hdn = arc((0, 1), ips[0], ips[1]);
path hole = hup -- hdn -- cycle;

pen cpen = dashed + linewidth(1bp);


draw(bl ^^ ur, invisible);
fill(hole, pattern("holehatch"));
draw(ca, cpen);
draw(cb, cpen);
draw(hole, bordpen);
finish("p5_a");

draw(bl ^^ ur, invisible);
fill(box((bl.x, 0), ur), pattern("hatch"));
draw((bl.x, 0)--(ur.x, 0), bordpen);
finish("p5_b");

draw(bl ^^ ur, invisible);
draw(ca, cpen);
draw(cb, cpen);
fill(hole, pattern("holehatch"));

picture phup;
draw(phup, hup, red + wpen);
clip(phup, (-10, -10) -- (10, 10) -- (-10, 10) -- cycle);
add(phup);

picture phdn;
draw(phdn, hdn, magenta + wpen);
clip(phdn, (-10, -10) -- (10, 10) -- (10, -10) -- cycle);
add(phdn);
mydot("$z_1$", (0, 0));
mydot("$z_2$", (2, 0));
mydot("$z_3$", (0, 2));
mydot("$z_4$", (0.5, 0.5));
finish("p5_c");

draw(bl ^^ ur, invisible);
fill(bl -- (0, 0) -- (bl.x, ur.y) -- cycle, pattern("nnehatch"));
draw(bl -- ur, red + linewidth(2bp));
draw((bl.x, ur.y) -- (ur.x, bl.y), magenta + linewidth(2bp));
mydot("$w_1$", (0, 0));
mydot("$w_2$", (1, 1));
mydot("$w_3$", (1, -1));
mydot("$w_4$", (-1, 0));
finish("p5_d");
