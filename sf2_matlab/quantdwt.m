function [Yq dwtent] = quantdwt (Y,dwtstep,n)
%quantise the image
Yq=zeros(256,256);
m=256/(2^n);
t=1:m;
Yq(t,t)=quantise(Y(t,t),dwtstep(1,n+1));
dwtent(1,n+1)=bpp(Yq(t,t))*m*m;

for i=1:n
    t=1:m;
    t1=(m+1):(2*m);
    Yq(t,t1)=quantise(Y(t,t1),dwtstep(1,n-i+1));
    dwtent(1,n+1-i)=bpp(Yq(t,t1))*m*m;
    
    Yq(t1,t1)=quantise(Y(t1,t1),dwtstep(2,n-i+1));
    dwtent(2,n+1-i)=bpp(Yq(t1,t1))*m*m;
    
    Yq(t1,t)=quantise(Y(t1,t),dwtstep(3,n-i+1));
    dwtent(3,n+1-i)=bpp(Yq(t1,t))*m*m;
   
    m=m*2;
end

end



