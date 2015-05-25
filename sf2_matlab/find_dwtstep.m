function dwtstep=find_dwtstep(n)
%find dwt step for differen n

m=256/(2^n);

t=1:m;


dwtstep(1,n+1)=impulse(m/2,m/2,n);

for i=1:n
    t=1:m;
    
    t1=(m+1):(2*m);
    
    dwtstep(1,n+1-i)=impulse(m/2,1.5*m,n);
    
    dwtstep(2,n+1-i)=impulse(1.5*m,1.5*m,n);
    
    dwtstep(3,n+1-i)=impulse(1.5*m,m/2,n);
       
    m=m*2;
end

dwtstep=dwtstep/dwtstep(1,1);

