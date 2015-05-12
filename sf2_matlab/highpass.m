function [Xh] = highpass( X ,N)
%HIGHPASS Summary of this function goes here
%   Detailed explanation goes here
X1=lowpass(X,N);
Xh=X-X1;
%draw(X1);
%hold on;
%draw(Xh);

end

