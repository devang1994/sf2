function [ Zq,e ] = quantized_reconstruction( X,N,q )
%takes X and, blocksize and step size and outputs Zq which is reconstrution with quantized
%stuff

Y=DCT2d1(X,N);
Yq=quantise(Y,q);
Yr=regroup(Yq,N);
e=dctbpp(Yr,8);
Zq=iDCT2d1(Yq,N);


end

