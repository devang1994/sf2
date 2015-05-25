function [Zp, e]=quantized_iLBT(Z,N,s,q)
[Pf,Pr]=pot_ii(N,s);

t=pre_t(Z,N);
Zp=quantise(Z,q);
e=length(Zp)*length(Zp)*bpp(Zp);
Zp=iDCT2d1(Zp,N);

Zp(:,t)=colxfm(Zp(:,t)',Pr')';
Zp(t,:)=colxfm(Zp(t,:),Pr');

end