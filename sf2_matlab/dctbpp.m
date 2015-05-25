function e = dctbpp( Yr,N )
%DCTBPP takes in regrouped image and finds its total bnumber of bits
%   Detailed explanation goes here
 e=0;

 P=length(Yr)/N;
 
for i = 1:N
    for j= 1:N
        e=e+P*P*bpp(Yr([P*(i-1)+1:P*i],[P*(j-1)+1:P*j]));
    end
end


end

