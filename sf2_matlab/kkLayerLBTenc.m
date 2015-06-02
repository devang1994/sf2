function Y= kkLayerLBTenc(X,N,s,q,k)

P=(256/N);

Y1=lbt(X,N,s); %done lbt

Yr=regroup(Y1,N);
%figure(1);
%draw(Yr)

t=1:P;

Y1c(t,t)=Yr(t,t); % gets the smaller DC component image 

Y2=lbt(Y1c,N,s);

%figure(2)
%draw(regroup(Y2,N)/12);

%line below try with sending regrouped or not

Yr(t,t)=Y2(t,t); %send back all the coefficients

%figure(3)
%draw(Yr/8)

for i = 1:N
    for j = 1:N
         Yr((i-1)*P+1:i*P,(j-1)*P+1:j*P) = quant1(Yr((i-1)*P+1:i*P,(j-1)*P+1:j*P),q*k^sqrt(i^2+j^2),q*k^sqrt(i^2+j^2));
    end
end

Y3=ungroup(Yr,N); %ungroups the image


%figure(4)
%draw(Y3/8)

Y=Y3;
