function Zr=Two_LBT_enc_dec(X,N, M,opthuff, dcbits)

X=X-mean(X(:));
%all arguments to be provided
%no q step since it is calculated

q=findq_5kb_twoLBT(X,N,M,1.3,35,opthuff,dcbits);

if(q~=-1)
    [vlc bits huffval] = jpegencTwoLBT(X, q, N, M,opthuff, dcbits);
    Zr=jpegdecTwoLBT(vlc, q, N, M, bits, huffval, dcbits);
else
    Zr=zeros(256);
end

%draw(Zr);

Zr=Zr-mean(Zr(:));
%figure(2);
%draw([X Zr]);

fprintf(1, 'SSIM %d\n', ssim(X,Zr));
end
