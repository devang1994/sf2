function [ Z ] = iDCT2d( Y,C )
%iDCT2D forms inverse 2d DCT using X,C
%   Detailed explanation goes here

Z=colxfm(colxfm(Y',C')',C');



end

