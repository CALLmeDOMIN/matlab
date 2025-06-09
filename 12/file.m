clear variables;
close all;
clc;

a = 1;
b = 0.03;
c = 0.01;
d = 0.4;

x0 = 10;
y0 = 10;

X = [x0; y0];

T = [10, 0];

dx = @(t, X) [a * X(1) - b * X(1) * X(2); c * X(1) * X(2) - d * X(2)];

[t, X] = ode45(dx, T, X);
figure;
plot(t, X(:, 1), 'r', t, X(:, 2), 'b');
xlabel('Time');
ylabel('Population');