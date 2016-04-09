import "./07_common.asy" as common;
unitsize(1.2cm);

pair O=(1, 0);
real R=2;

pair z1 = (1.1, 0.4);
pair z2 = O + dir(z1 - O) * (R^2 / length(z1));

draw(circle(O, R), linewidth(1bp));
label("$\Gamma$", O + dir(45) * R, NE);
dot(z1, L=Label("$z_1$"));
dot(z2, L=Label("$z_2$"));
draw(O--z1--z2--O+dir(z2-O) * 2 * R, dashed);

finish("def");
