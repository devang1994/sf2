function Xr = simplePCA(X,N)


l=1:N;
[U S V]=svd(X);

Sc(l,l)=S(l,l);

Sc=[Sc,zeros(N,256-N);zeros(256-N,256)];

Xr=U*Sc*V';
draw(Xr);


