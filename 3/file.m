clear variables;
clc;

w=randi(100,1,10);
sum(w<50);
nnz(w<50);
mean(w<50);

sum(w(abs(w-mean(w))<10));

i=1;
while i<=length(w)
    if w(i)<50
        w(i)=[];
    else
        i=i+1;
    end
end

disp(w);