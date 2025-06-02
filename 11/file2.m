clear variables;
clc;
close all;

function [c, ceq] = nonlcon(x)
ceq = [];

if x(2) > 0
    c = x(1).^2 + x(2).^2 - 1;
else
    c = -1;
end

end

a = [1, 1];
f = @(x) (x(1) - a(1)).^2 + (x(2) - a(2)).^2;

x0 = [0.5, 0.5];
A = [1, -1];
b = 1;
lb = [-1, -1];


[x_opt, y_opt] = fmincon(f, x0, A, b, [], [], lb, [], @nonlcon)

