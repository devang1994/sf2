clear;

load flamingo;

matf=zeros(11,1);
Xt=X-mean(X(:));

n=4;
m=16;

global rfactor;
for i=1:11
    rfactor = 0.3+0.1*i;
    try
        Zr=Two_LBT_enc_dec(X,n, m,false, 8);
        catch
            try
                Zr=Two_LBT_enc_dec(X,n, m,false, 9);
            catch
                Zr=Two_LBT_enc_dec(X,n, m,false, 10);
            end
        end
        matf(i)=ssim(Zr,Xt);
end

k=0.4:0.1:1.4;
plot(k,matf);

