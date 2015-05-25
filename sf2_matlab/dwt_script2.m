clear;
load lighthouse;
X=X-128;


m=256;Y=dwt(X);draw(Y);

m=m/2;t=1:m;Y(t,t)=dwt(Y(t,t));draw(Y);


