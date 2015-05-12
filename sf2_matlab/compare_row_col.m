h=halfcos(15);
Xfc=conv2se(h,1,X); %done column wise
Xfr=conv2se(1,h,Xfc);%done row wise

diff=abs(Xfc-Xfr);
maxdiff=max(diff(:))
draw(Xf);