h=halfcos(15);
Xt=conv2se(h,1,X);
Xc1=conv2se(1,h,Xt);


%Xt=conv2se(1,h,X);
%Xc2=conv2se(h,1,Xt);

%diff=max(max(abs(Xc2-Xc1)))

% separate convolutions for doing both row and column wise
%draw(Xf);