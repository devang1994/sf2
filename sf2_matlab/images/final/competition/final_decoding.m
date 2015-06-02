function Zr = final_decoding1 (vlc,bits,huffval,q,dcbits)

%final decoding

N=4;
M=16;


Zr=jpegdecTwoLBT(vlc, q, N, M, bits, huffval, dcbits);



vlctest(vlc) +1424 

%figure(1)
%draw(Zr);
Zr=Zr - mean(Zr(:));
figure(2)
draw(Zr);



end