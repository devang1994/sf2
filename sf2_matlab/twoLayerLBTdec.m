function Z= twoLayerLBTdec(Y,N,s)

P=(256/N);

t=1:P;

Y4=regroup(Y,N);

%figure(5)
%draw(Y4/8)

Y4c(t,t)=Y4(t,t);


Y5=iLBT(Y4c,N,s);


Y4(t,t)=Y5(t,t);

%figure(6);
%draw(Y4);

Y4=ungroup(Y4,N);
Y5=iLBT(Y4,N,s);

%figure(7);
%draw(Y5);

Z=Y5;


