import "./07_common.asy" as common;

pair bl=(-1.5, -1.5);
pair ur=(1.5, 1.5);

draw(bl ^^ ur, invisible);
fill(unitcircle, pattern("hatch"));
draw(unitcircle, bordpen);
mydot("$z_1$", (0, 1));
mydot("$z_2$", (1, 0));
mydot("$z_3$", (0, -1));
mydot("$z_4$", (0, 0));
finish("p3_a");

draw(bl ^^ ur, invisible);
fill(box((bl.x, 0), ur), pattern("hatch"));
draw((bl.x, 0)--(ur.x, 0), bordpen);
mydot("$w_1$", (1, 0));
mydot("$w_2$", (0, 0));
mydot("$w_3$", (-1, 0));
mydot("$w_4$", (0, 1));
finish("p3_b");
