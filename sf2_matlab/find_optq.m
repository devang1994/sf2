function [q] = find_optq(X,N,s,qin)
%qin is the initial q
%plan is to edit this function for different optimizations
std_target=4.9340;
offset=1;
[Zp,e,std]=quantized_reconstruction_LBT(X,N,s,qin);
while true
    offset=std-std_target;
    step=offset;
    qin = qin - step;
    [Zp,e,std]=quantized_reconstruction_LBT(X,N,s,qin);
    if(abs(offset)<0.001)
        break;
    end
    
end

offset;
q= qin;

end