h=halfcos(15);
Xf=zeros(256,256+14);
for i=1:256
    Xf(i, :)=conv(X(i, :),h);
end
%draw (Xf);
draw(Xf(:,[1:256]+7));