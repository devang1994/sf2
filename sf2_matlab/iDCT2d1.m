function [ Z ] = iDCT2d1( Y,n )
%iDCT2D1 forms iDCT using Y, blocksize
%   Detailed explanation goes here

C=dct_ii(n);
Z=iDCT2d(Y,C);

end

