clear variables;
clc;
close all;

[t, X] = symulate(2, -3.2);
plot(t, X(:, 1));

function [t, X] = symulate(f1, f2)
m = 1;
b = 0.1;
tEnd = 5;

x0 = [0; 0];

f = @(t) (t <= 2.5) * f1 + (t > 2.5) * f2;

odefun = @(t, X) [X(2); (f(t) - b * X(2)) / m];

T = linspace(0, tEnd, 100);

[t, X] = ode45(odefun, T, x0);
end