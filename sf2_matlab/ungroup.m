function Yur= ungroup (Yr,N)
%ungroups a grouped image

P=length(Yr)/N;

Yur=regroup(Yr,P);


