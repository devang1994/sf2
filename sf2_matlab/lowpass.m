function [Xl] = lowpass( X ,N)
%LOWPASS Summary of this function goes here
%   Detailed explanation goes here

h=halfcos(N);
Xl=conv2se(h,h,X);
%draw (Xl);
end

