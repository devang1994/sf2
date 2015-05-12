function [Xl] = lowpass1( X ,h)
%LOWPASS Summary of this function goes here
%   Detailed explanation goes here

%h=halfcos(N);
Xt=conv2se(h,1,X);
Xl=conv2se(1,h,Xt);
%draw (Xl);
end
%different argumants
