function Z=LBT(X,N,s)
[Pf,Pr]=pot_ii(N,s);
t=pre_t(X,N);
Xp=X;
Xp(t,:)=colxfm(Xp(t,:),Pf);
Xp(:,t)=colxfm(Xp(:,t)',Pf)';
Z=DCT2d1(Xp,N);
end