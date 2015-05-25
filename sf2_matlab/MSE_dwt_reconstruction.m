function [Xr dwtent]=MSE_dwt_reconstruction(X,q,n)

dwtstep=find_dwtstep(n);

dwtstep=dwtstep*q;
[Xr dwtent]=dwt_reconstruction(X,dwtstep,n);

end

