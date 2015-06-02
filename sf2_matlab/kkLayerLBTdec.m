function Z= kkLayerLBTdec(Y,N,s,q,k)


P=(length(Y)/N);

t=1:P;

Y4=regroup(Y,N);

for i = 1:N
    for j = 1:N
        if i~= 0 && j~=0
            Y4((i-1)*P+1:i*P,(j-1)*P+1:j*P) = quant2(Y4((i-1)*P+1:i*P,(j-1)*P+1:j*P),q*k^sqrt(i^2+j^2),q*k^sqrt(i^2+j^2));
        end
    end
end

%figure(5)
%draw(Y4/8)

Y4c(t,t)=Y4(t,t);


Y5=ilbt(Y4c,N,s);


Y4(t,t)=Y5(t,t);

%figure(6);
%draw(Y4);

Y4=ungroup(Y4,N);
Y5=ilbt(Y4,N,s);


%figure(7);
%draw(Y5);

Z=Y5;