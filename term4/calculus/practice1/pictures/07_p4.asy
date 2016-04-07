import "./07_common.asy" as common;

pair bl=(-1.5, -1.5);
pair ur=(1.5, 1.5);

path pup = arc((0, 0), 1, 0, 180);
path pdn = (-1, 0) -- (1, 0);
path p = pup -- pdn -- cycle;

draw(bl ^^ ur, invisible);
fill(p, pattern("hatch"));
draw(p, bordpen);
finish("p4_a");

draw(bl ^^ ur, invisible);
fill(box((bl.x, 0), ur), pattern("hatch"));
draw((bl.x, 0)--(ur.x, 0), bordpen);
finish("p4_b");

draw(bl ^^ ur, invisible);
fill(p, pattern("hatch"));
draw(pdn, red + wpen);
draw(pup, magenta + wpen);
mydot("$z_1$", (-1, 0));
mydot("$z_2$", (0, 0));
mydot("$z_3$", (1, 0));
mydot("$z_4$", (0, 0.5));
finish("p4_c");

draw(bl ^^ ur, invisible);
fill(box((0, 0), ur), pattern("hatch"));
draw((0, 0)--(ur.x, 0), red + wpen);
draw((0, 0)--(0, ur.y), magenta + wpen);
mydot("$w_1$", (0, 0));
mydot("$w_2$", (1, 0));
mydot("$w_4$", (3/5, 4/5));
finish("p4_d");
