clear variables;
close all;
clc;

x=-6:1:6;
y=gamma(x)
% disp([x;y]);
% plot(x,y);
my_y = my_gamma(x)
plot(x,my_y)