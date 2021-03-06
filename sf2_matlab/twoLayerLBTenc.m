function Y= twoLayerLBTenc(X,N,s)

X=X-mean(X(:));


P=(256/N);


Y1=LBT(X,N,s); %done lbt

Yr=regroup(Y1,N);
%figure(1);
%draw(Yr)


t=1:P;

Y1c(t,t)=Yr(t,t); % gets the smaller DC component image 



Y2=LBT(Y1c,N,s);

%figure(2)
%draw(regroup(Y2,N)/12);

%line below try with sending regrouped or not

Yr(t,t)=Y2(t,t); %send back all the coefficients

%figure(3)
%draw(Yr/8)

Y3=ungroup(Yr,N); %ungroups the image


%figure(4)
%draw(Y3/8)

Y=Y3;