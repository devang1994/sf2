clear;
load lighthouse;

X=X-mean(X(:));
opthuff=false;
dcbits=10;
n=2;
rMatq=zeros(10);%for q
rMatSS=zeros(10);%for ssim
rMatSD=zeros(10);% for SD
i=0;
k=1;
while n<17
    i=i+1;
    n=n*2;
    m=n;
    j=0;
    while m<32
        j=j+1;
        
                   
        [T q]=evalc('findq_5kb_LBT(X,n,m,1.3,45,opthuff,dcbits);');
        %q=findq_5kb_DCT(X,n,m,30);
        ni=log(n)/log(2);
        mi=log(m)/log(2);
        
        if(q==-1)
            
            rMatq(n,m)=-1;
            rMatSS(n,m)=-1;
            rMatSD(n,m)=-1;
            fprintf(1,'Error m= %d n= %d  ', m,n)
        end
        if (q~=-1)
            
            [vlc bits huffval]=jpegencLBT(X,q,n,m,opthuff,dcbits);
        
            Xr=jpegdecLBT(vlc,q,n,m,bits,huffval,dcbits);
            Xr=Xr-mean(Xr(:));
            figure;
            draw([X Xr]);
            
            rMatq(n,m)=q;
            rMatSS(n,m)=ssim(Xr, X);
            rMatSD(n,m)=sd(Xr, X);
            fprintf(1,'Bits for coded image m= %d n= %d   = %d ssim = %d \n', m,n,sum(vlc(:,2)),ssim(Xr, X))
            k=k+1;
        end
        
        
        
        m=m*2;
    end
end
