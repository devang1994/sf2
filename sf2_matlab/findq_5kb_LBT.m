function q= findq_5kb_LBT(X,n,m,s,qin,opthuff,dcbits)
%finds q for given image that compresses it to 5kB for given n,m,s

%do a simple search 

if(opthuff)
    target=40940-1424;%num required bits
else
    target=40940;
end
offset=1;

vlc=jpegencLBT(X,qin,n,m,opthuff,dcbits);
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
       
    vlc=jpegencLBT(X,qin,n,m,opthuff,dcbits);
end

q=qin;

end
    