clear;

load flamingo;

matSS=zeros(10);
i=1;
j=1;

Xt=X-mean(X(:));

for i=2:3
    for j=i:4
        try
            Zr=Two_LBT_enc_dec(X,(2^i), (2^j),false, 8);
        catch
            try
                Zr=Two_LBT_enc_dec(X,(2^i), (2^j),false, 9);
            catch
                Zr=Two_LBT_enc_dec(X,(2^i), (2^j),false, 10);
            end
        end
        matSS(i,j)=ssim(Zr,Xt);
    end
end

        
        
    