T(1)=1/2*(fan(1)+fan(2));
n=zeros(1,6);
for k=0:5
    n(k+1)=2^k;
end
p=[];
for j=n
    s=0;
    for i=1:j
        s=s+fan(1+(2*i-1)/(2*j));
    end
    T(2*j)=1/2*T(j)+1/(2*j)*s;
    p=[p,sprintf('%.8f',T(2*j))];
end
p
p=[];
for j=n
    s(2*j)=4/3*T(2*j)-1/3*T(j);
    p=[p,  sprintf('%.8f', s(2*j))];
    
end
p
p=[];
for j=1:5
    n=2^j;
    c(2*n)=16/15*s(2*n)-1/15*s(n);
    p=[p,sprintf('%.8f',c(2*n))];
end
p
