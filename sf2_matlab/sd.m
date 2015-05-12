function [ a ] = sd( X1,X2 )

a=std(X1(:)-X2(:));




end

%vertical part of figure 2, take in image and X outputs corresponding Yn
%takes Xn and Xn-1 as arguments