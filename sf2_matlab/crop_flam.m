function Xc=crop_flam(X)
%crops flaminggo and returns cropped image
%mainly for reports

t1=166:256;
t2=85:175;

Xc=X(t2,t1);
draw(Xc);
end
