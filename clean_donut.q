-1 "\033[2J";
A:B:0;
r:{y*0+til 1+7h$div[x;y]};
j:r[6.28;0.07];
i:r[6.28;0.02];
jj:flip count[i]#enlist j;
ii:count[j]#enlist i;
(l;d):cos@/:(ii;jj);
(c;f):sin@/:(ii;jj);
h:2+d;
while[1b;
    b:1760#" ";
    (e;n):sin@/:(A;B);
    (g;m):cos@/:(A;B);
    D:1%(c*h*e)+(f*g)+5;
    t:(c*h*g)-f*e;
    x:7h$40+30*D*((l*h*m)-t*n);
    y:7h$12+15*D*((l*h*n)+t*m);
    o:7h$x+80*y;
    N:7h$8*((((f*e)-c*d*g)*m)-(c*d*e)-(f*g)-l*d*n);
    cond:where raze (22>y)*(y>0)*(x>0)*(80>x);
    os:group raze[o]@cond;
    locs:{x?min x}each value @[raze[D];cond]@os;
    Ns:{x@y}'[value @[raze[N];cond]@os;locs];
    b[key os]:".,-~:;=!*#$@"{11&(x>0)*x}Ns;
    -1 "\033[H";
    -1@80 cut b;
    A+:0.04;
    B+:0.02];
