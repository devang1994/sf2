function Zr=full_DWT_dec(vlc,n,q)
%reconstructs
%in a later version get it to do optimized

%b_size=2^n;
b_size=8;

Z1=jpegdec(vlc,q,b_size,b_size);
figure(33);
draw(Z1);
Z2=dwtgroup(Z1,-n);

%Z2=Z1;
Zr=nlevidwt(Z2,n);

end
