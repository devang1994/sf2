function Zr=Two_LBT_enc_dec(X,N, M,opthuff, dcbits)

%all arguments to be provided
%no q step since it is calculated

q=findq_5kb_twoLBT(X,N,M,1.3,35,opthuff,dcbits);


[vlc bits huffval] = jpegencTwoLBT(X, q, N, M,opthuff, dcbits);

Zr=jpegdecTwoLBT(vlc, q, N, M, bits, huffval, dcbits);

draw(Zr);

end
