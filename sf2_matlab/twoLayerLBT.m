clear;

load lighthouse;

X=X-128;
N=4;
s=1.3;

%very simple scheme not using 16x16 macroblocks

P=(256/N);
Y1=LBT(X,N,s); %done lbt


Yr=regroup(Y1,4);
figure(1);
draw(Yr)


t=1:P;

Y1c(t,t)=Yr(t,t); % gets the smaller DC component image 



Y2=LBT(Y1c,N,s);

figure(2)
draw(regroup(Y2,N)/12);

%line below try with sending r

Yr(t,t)=Y2(t,t); %send back all the coefficients

figure(3)
draw(Yr/8)

Y3=ungroup(Yr,N); %ungroups the image


figure(4)
draw(Y3/8)



%this is where you would encode with 16 by 16 blocks


Y4=regroup(Y3,4);

figure(5)
draw(Y4/8)

Y4c(t,t)=Y4(t,t);


Y5=iLBT(Y4c,4,s);


Y4(t,t)=Y5(t,t);

figure(6);
draw(Y4);

Y4=ungroup(Y4,4);
Y5=iLBT(Y4,4,s);

figure(7);
draw(Y5);
sd(Y5,X)


