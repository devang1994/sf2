Xt=X';
h=halfcos(15);
Xf=zeros(256,256);
for i=1:256
    Xf(i, :)=convse(X(i, :),h);
end
draw (Xf);
%TRASBNPOSED while convoluting and disaplaying to do column wise 
% doesnt work use conv2se