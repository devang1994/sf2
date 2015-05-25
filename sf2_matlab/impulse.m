function inv_imp=impulse(x,y,n)
%finds the inverse of the impulse response from a particular location in
%the DWT pyramid
Yq=zeros(256,256);
Yq(x,y)=1;
Xr=nlevidwt(Yq,n);
inv_imp=(energy(Xr)^0.5)^-1;
end
