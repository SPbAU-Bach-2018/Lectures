import "./08_common.asy" as common;
import math;
size(4cm);

pair bl=(-1.5, -0.5);
pair ur=(1.5, 4);

pen cpen = blue + linewidth(2bp);

path src = (bl.x, 0) -- (0, 0) -- (0, pi) -- (bl.x, pi);
path dest = arc((0, 0), 1, 0, 180) -- cycle;

draw(bl ^^ ur, invisible);
fill(src -- cycle, pattern("hatch"));
draw(src, bordpen);
finish("p4_a");

draw(bl ^^ ur, invisible);
fill(dest, pattern("hatch"));
draw(dest, bordpen);
finish("p4_b");
