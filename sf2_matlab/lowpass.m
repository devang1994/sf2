function [Xl] = lowpass( X ,N)
%LOWPASS Summary of this function goes here
%   Detailed explanation goes here

h=halfcos(N);
Xt=conv2se(h,1,X);
Xl=conv2se(1,h,Xt);
%draw (Xl);
end

