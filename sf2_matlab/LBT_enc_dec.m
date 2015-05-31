function Zr=LBT_enc_dec(X,N, M,opthuff, dcbits)

%all arguments to be provided
%no q step since it is calculated

q=findq_5kb_LBT(X,N,M,1.3,30,opthuff,dcbits);

q=26.19;

[vlc bits huffval] = jpegencLBT(X, q, N, M,opthuff, dcbits);

Zr=jpegdecLBT(vlc, q, N, M, bits, huffval, dcbits);

draw(Zr);

end
