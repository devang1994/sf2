function [vlc bits huffval q dcbits] = final_coding1 (X)
%for the final competition

X=X-mean(X(:));

N=4;
M=16;

dcbits=8;

opthuff=true;

try

    q=findq_5kb_twoLBT(X,N,M,1.3,35,opthuff,dcbits);


    [vlc bits huffval] = jpegencTwoLBT(X, q, N, M,opthuff, dcbits);

catch
    
    dcbits=9;
    try
        q=findq_5kb_twoLBT(X,N,M,1.3,35,opthuff,dcbits);


        [vlc bits huffval] = jpegencTwoLBT(X, q, N, M,opthuff, dcbits);
    catch
        dcbits =10;
        q=findq_5kb_twoLBT(X,N,M,1.3,35,opthuff,dcbits);


        [vlc bits huffval] = jpegencTwoLBT(X, q, N, M,opthuff, dcbits);
    end

end












