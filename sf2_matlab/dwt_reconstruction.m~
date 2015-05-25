function [Xr dwtent]=dwt_reconstruction(X,dwtstep,n)

%dwtstep=ones(3,n+1);%diagnostic measure
%dwtstep=dwtstep*27;

Y=nleveldwt(X,n);

[Yq, dwtent]=quantdwt(Y,dwtstep,n);

Xr=nlevidwt(Yq,n);

end

