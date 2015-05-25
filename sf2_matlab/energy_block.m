function Em= energy_block(Y)
%takes regouped image which could have been displayed and calculaes enegies
%of blocks
for i = 1:8
    for j= 1:8
        Em(i,j)=energy(Y([32*(i-1)+1:32*i],[32*(j-1)+1:32*j]));
    end
end
