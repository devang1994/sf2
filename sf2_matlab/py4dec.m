function Z0 = rowdec(X4,Y0,Y1,Y2,Y3, h)

Z3=interpolate1(X4,h)+Y3;
Z2=interpolate1(Z3,h)+Y2;
Z1=interpolate1(Z2,h)+Y1;
Z0=interpolate1(Z1,h)+Y0;

end