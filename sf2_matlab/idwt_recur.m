function Xr= idwt_recur(Y,n)
%n is the number of dwt levels needed

m=256/(2^(n-1));


for i=1:(n)
    
    t=1:m;
    
    Y(t,t)=idwt(Y(t,t));
    
    m=2*m;
end

Xr=Y;

end
