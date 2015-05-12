function [Xd]=decimate(Xin,h)
X1=rowdec(Xin,h);
X1t=X1';
X2=rowdec(X1t,h);
Xd=X2';
%horizontal steps from figure2