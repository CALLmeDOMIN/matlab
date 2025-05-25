clear variables;
close all;
clc;

a=-3:0.01:3;
b=-3:0.01:3;
[A,B]=meshgrid(a,b);
X=A+1i*B;

Y = X;
% Y = X.^9;
% Y = X.^X;
imagesc(a,b,abs(Y));
set(gca,"YDir", "normal")
colorbar
figure
imagesc(a,b,angle(Y));
set(gca,"YDir", "normal")
colorbar

figure
h=surf(a,b,abs(Y),angle(Y));
set(h,"EdgeColor", "none");
colorbar

