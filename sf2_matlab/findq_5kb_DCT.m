function q= findq_5kb_DCT(X,n,m,qin)
%finds q for given image that compresses it to 5kB for given n,m,s

%do a simple search 
i=0;
target=40940; %num required bits
offset=1;

vlc=jpegenc(X,qin,n,m);
disp('here');
while true
    disp('in loop');
    offset=(target-sum(vlc(:,2)))*0.00005;
    
    if(qin>150)
        q=-1;%break after q is too big
        return;
    end
        
    if(abs(offset)<0.001)
        break;
    end
    
    
    off=offset*20
    qin = qin - offset;
       
    vlc=jpegenc(X,qin,n,m);
end

q=qin;

end
    