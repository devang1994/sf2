n=3;

qc=find_optq_const(X,n,5)
qm=find_optq_mse(X,n,7)

ref_bits=256*256*bpp(quantise(X,17));

[Xrc dwtentc]=const_dwt_reconstruction(X,qc,n);

[Xrm dwtentm]=MSE_dwt_reconstruction(X,qm,n);

Crc=ref_bits/sum(sum(dwtentc))

Crm=ref_bits/sum(sum(dwtentm))
figure(1);
draw(Xrc);
figure(2);

draw(Xrm);
