function vlc = full_DWT_enc(X,n,q)
%takes an image, find the number of bits required to store its DWT
%transform , also finds the compressed VLC matrix
%q is the amount of quantization done in JPEG enc
%in a later version get it to do optimized
%HYBRID OF dct aND DWT


Y=nleveldwt(X,n);
%Yr=dwtgroup(Y,n);
Yr=Y;
%figure(1);
%draw(Yr);
%b_size = 2^n; %size of the blocks formed by the above

b_size=16;%diagnostic

[vlc bits huffval]=jpegenc(Yr,q,b_size,b_size);



%tbits=sum(vlc(:,2))+(16+max(size(huffval)))*8; %second term is bits for huff table
%first term is for actual in image

tbits=sum(vlc(:,2));


fprintf(1,'total Bits for coded image including table = %d\n', tbits);

end
