h=[0.25;0.5;0.25];

X1=decimate(X,h);
X2=decimate(X1,h);
X3=decimate(X2,h);
X4=decimate(X3,h);

Y0=interpolate(X1,X,h);
Y1=interpolate(X2,X1,h);
Y2=interpolate(X3,X2,h);
Y3=interpolate(X4,X3,h);




%draw(Y0,beside(Y1,beside(Y2,beside(Y3,X4))))
draw(beside(Y0,beside(Y1,beside(Y2,beside(Y3,X4)))))




