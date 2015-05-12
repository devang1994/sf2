h=halfcos(15);
Xf=zeros(256,256);
for i=1:256
    Xf(i, :)=convse(X(i, :),h);
end
draw (Xf);
%draw(Xf(:,[1:256]+7));
%note that edge curl has been corrected by using convse , thenormal draw
%function is used since Xf is now simple 