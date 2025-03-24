clear variables;
clc;

M=randi(100, 4, 5)
min(M(:))
[i, j]=find(M==min(M(:)), 1)
M1=M(max(i-1, 1):min(i+1, size(M, 1)), max(j-1, 1):min(j+1, size(M, 2)))