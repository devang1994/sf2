function Y= dwt_recur(X,n)
%n is the number of dwt levels needed

m=256;
Y=dwt(X);

for i=1:(n-1)
    m=m/2;
    t=1:m;
    Y(t,t)=dwt(Y(t,t));
end

end
