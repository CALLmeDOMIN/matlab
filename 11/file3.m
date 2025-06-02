clear variables;
clc;
close all;

function [c, ceq] = nonlcon(x)
ceq = [];

if x(2) > 0
    if abs(x(1)) < 1
        c = abs(x(1) + x(2)) - 1;
    else
        c = x(2);
    end
else
    c = -1;
end

end

a = [1, 1];
f = @(x) (x(1) - a(1)).^2 + (x(2) - a(2)).^2;

x0 = [0.5, 0.5];
A = [0.5, -1;
    -0.5, -1];
b = [1;
    1];

[x_opt, y_opt] = fmincon(f, x0, A, b, [], [], [], [], @nonlcon)
