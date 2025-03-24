clear variables;
clc;

M=randi(20,5)
% S=sum(M,4);
m=mean(M(:))
nnz(M(M>m))
M(M>m)