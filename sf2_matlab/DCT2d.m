function [ Y ] = DCT2d( X,C )
%DCT2D forms 2d DCT using X,C
%   Detailed explanation goes here
X=X-128;
Y=colxfm(colxfm(X,C)',C)';



end

