function [ Xo ] = interpolate( Xn,Xnm,h )
%INTERPOLATE Summary of this function goes here
%   interpolate is possibly not the best name, as it find the high pass
%   filter by interpolation then substraction

X3=rowint(Xn,2*h);
X4=rowint(X3',2*h);
Xo=X4';

Xo=Xnm-X4'; %diagnostic



end

%vertical part of figure 2, take in image and X outputs corresponding Yn
%takes Xn and Xn-1 as arguments