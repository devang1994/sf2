s=1;
a=zeros(10,1);
b=zeros(10,1);
for i=1:11
    s;
    N=8;
    q=find_optq(X,N,s,17);
    [Zp,CR,std]=quantized_reconstruction_LBT(X,N,s,q);
    a(i)=CR;
    b(i)=q;
    s=s+0.1;
    
end