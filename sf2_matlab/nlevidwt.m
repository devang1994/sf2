function Xr= nlevidwt(Yq,n)
%n is the number of dwt levels needed

m=256/(2^(n-1));


for i=1:(n)
    
    t=1:m;
    
    Yq(t,t)=idwt(Yq(t,t));
    
    m=2*m;
end

Xr=Yq;

end
