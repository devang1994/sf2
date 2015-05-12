function [ Xo ] = interpolate1( Xn,h )
%INTERPOLATE Summary of this function goes here
%  just the plain interpolate function should actually be called
%  interpolate

X3=rowint(Xn,2*h);
X4=rowint(X3',2*h);
Xo=X4';

end

