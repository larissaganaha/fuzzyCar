x = 20;
y = 20;
fi = 0.0;
v = 0;
%theta = 10;
init(x, y);
s1 = readfis('S1');
s2 = readfis('S2');
s3 = readfis('S3');

finalPosition = approachVallet(x,y,fi,v, s1);

x2 = finalPosition(1);
y2 = finalPosition(2);
v2 = -0.5;
fi2 = 0;
finalPosition = park(x2,y2,fi2,v2, s2);

x3 = finalPosition(1);
y3 = finalPosition(2);
v3 = 0.5;
fi3 = 0;
settle(x3,y3,fi3,v3, s3);
