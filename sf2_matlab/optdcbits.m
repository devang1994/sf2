function optdcbits = optdcbits(Yq)
%optimal dc bits 

temp=max(abs(Yq(:)));
temp=log(temp+1)/log(2);

optdcbits=ceil(temp)+1;
end
