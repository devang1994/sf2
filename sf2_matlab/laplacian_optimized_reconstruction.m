function Z0 = laplacian_optimized_reconstruction(X4,Y0,Y1,Y2,Y3, h,q)
%bad name yet again since this is interpolated 
X4=quantise(X4,q/1192);
Y0=quantise(Y0,q/100);
Y1=quantise(Y1,q/150);
Y2=quantise(Y2,q/275);
Y3=quantise(Y3,q/537);

Z3=interpolate1(X4,h)+Y3;
Z2=interpolate1(Z3,h)+Y2;
Z1=interpolate1(Z2,h)+Y1;
Z0=interpolate1(Z1,h)+Y0;

a=1;

end

%q generally used as 17