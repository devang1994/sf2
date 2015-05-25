function Xp = pre_filter(X,N,s)
[Pf,Pr]=pot_ii(N,s);
t=pre_t(X,N);
Xp=X;
Xp(t,:)=colxfm(Xp(t,:),Pf);
Xp(:,t)=colxfm(Xp(:,t)',Pf)';
end