function [Zp, CR, std]=quantized_reconstruction_LBT(X,N,s,q)
[Pf,Pr]=pot_ii(N,s);

t=pre_t(X,N);

ref_bits=256*256*bpp(quantise(X,17));

Xp=X;
Xp(t,:)=colxfm(Xp(t,:),Pf);
Xp(:,t)=colxfm(Xp(:,t)',Pf)';
Z=DCT2d1(Xp,N);


Zp=quantise(Z,q);
Zr=regroup(Zp,N);
e=dctbpp(Zr,16);
CR=ref_bits/e;
Zp=iDCT2d1(Zp,N);

Zp(:,t)=colxfm(Zp(:,t)',Pr')';
Zp(t,:)=colxfm(Zp(t,:),Pr');

std=sd(Zp,X);
end