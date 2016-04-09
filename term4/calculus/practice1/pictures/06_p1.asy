settings.outformat="pdf";
unitsize(2cm);
import graph;
import patterns;

pair bl=(-1, -2);
pair ur=(2.5, 2);

draw(bl ^^ ur, invisible);

add("hatch", hatch(grey));
fill((0, ur.y) -- (0, 0) -- arc((1, 0), 1, 180, -180) -- (0, bl.y) -- (ur.x, bl.y) -- ur -- cycle, pattern("hatch"));

draw((0, bl.y) -- (0, ur.y), linewidth(2bp) + red);
label("$w(x=0)$", (0, 1.5), E, filltype=Fill(white));

draw(circle((1, 0), 1), linewidth(2bp) + red);
label("$w(x=1)$", (1, 1), S);

xaxis(Label("$Re$", align=2*E), LeftTicks, EndArrow);
yaxis(Label("$Im$", align=2*N), LeftTicks, EndArrow);
