x=0:2:24;
y=[12 9 9 10 18 24 28 27 25 20 18 15 13]
x1=13;
y1=interp1(x,y,x1,'spline');
xi=0:0.1:24;
yi=interp1(x,y,xi,'spline');
plot(x,y,'*',xi,yi)