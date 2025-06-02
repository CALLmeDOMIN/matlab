clear variables;
clc;
close all;

a = [5, 5];
f = @(x) (x(1)-a(1)).^2 + (x(2)-a(2)).^2;

A = [1, 1;
    -1, 1;
    -1, -1;
    1, -1];

b = [5;
    5;
    5
    5];

x0 = 10 * rand(2, 1) - 5;

[x_opt, y_opt] = fmincon(f, x0, A, b);