clear variables;
clc;
close all;

S=1;
N=100;
n=1;
p=2;
si=zeros(1,N);
format rational;

for i=2:N
    if si(i-1)<S
        si(i)=si(i-1)+1/n;
        disp(1/n);
        n=n+2;
    else
        si(i)=si(i-1)-1/p;
        disp(-1/p);
        p=p+2;
    end
end

plot(si);

format short;