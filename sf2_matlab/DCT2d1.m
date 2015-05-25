function [ Y ] = DCT2d1( X,n )
%DCT2D1 forms DCT using X, blocksize
%   Detailed explanation goes here

C=dct_ii(n);
Y=DCT2d(X,C);

end

