clear variables;
close all;
clc;

alpha = 0:0.1:pi/2;
Xmax = zeros(size(alpha));

function [t, X] = symulate(alpha)
m = 1;
b = 0.2;
k = 2;
g = 9.81;

dX = @(t, X) [X(2); (m * g * sin(alpha) - b * X(2) - k * X(1))/ m];

[t, X] = ode45(dX, [0, 50], [0, 0]);
end

for i=1:length(alpha)
    [~, X] = symulate(alpha(i));
    Xmax(i) = max(X(:, 1));
end

figure;
plot(alpha, Xmax, 'r');
xlabel('Angle (radians)');
ylabel('Maximum Displacement');
title('Maximum Displacement vs Angle');
grid on;
