function [q] = find_optq_mse(X,n,qin)
%qin is the initial q
%plan is to edit this function for different optimizations
std_target=4.9340;
offset=1;
[Xr dwtent]=const_dwt_reconstruction(X,qin,n);
std=sd(Xr,X);
while true
    offset=std-std_target;
    step=offset;
    qin = qin - step;
    
    [Xr dwtent]=MSE_dwt_reconstruction(X,qin,n);
    std=sd(Xr,X);
    if(abs(offset)<0.01)
        break;
    end
    
end

offset;
q= qin;

end