function [Xr dwtent]=const_dwt_reconstruction(X,q,n)

dwtstep=ones(3,n+1);
dwtstep=dwtstep*q;

[Xr dwtent]=dwt_reconstruction(X,dwtstep,n);

end

