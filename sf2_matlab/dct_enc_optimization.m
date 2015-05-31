clear;
load lighthouse;

X=X-128;

n=2;
rMatq=zeros(10);%for q
rMatSS=zeros(10);%for ssim
rMatSD=zeros(10);% for SD
i=0;

k=1;
while n<4
    i=i+1;
    n=n*2;
    m=n*2;
    j=0;
    while m<64
        j=j+1;
        
        [T q]=evalc('findq_5kb_DCT(X,n,m,40);');
        %q=findq_5kb_DCT(X,n,m,30);
        
        if(q==-1)
            
            rMatq(n,m)=-1;
            rMatSS(n,m)=-1;
            rMatSD(n,m)=-1;
            fprintf(1,'Error m= %d n= %d  ', m,n)
        end
        if (q~=-1)
            
            vlc=jpegenc(X,q,n,m);
        
            Xr=jpegdec(vlc,q,n,m);
        
            rMatq(n,m)=q;
            rMatSS(n,m)=psnr(Xr, X);
            rMatSD(n,m)=sd(Xr, X);
            title(' n= ' +num2str(n)+ ' m= '+num2str(m));
            figure(k);
            draw(Xr);
            k++;
            fprintf(1,'Bits for coded image m= %d n= %d   = %d psnr = %d \n', m,n,sum(vlc(:,2)),psnr(Xr, X))
        end
        
        
        m=m*2;
        
    end
end
