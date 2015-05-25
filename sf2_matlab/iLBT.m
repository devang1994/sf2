function Zp=iLBT(Z,N,s)
[Pf,Pr]=pot_ii(N,s);

t=pre_t(Z,N);

Zp=iDCT2d1(Z,N);

Zp(:,t)=colxfm(Zp(:,t)',Pr')';
Zp(t,:)=colxfm(Zp(t,:),Pr');

end