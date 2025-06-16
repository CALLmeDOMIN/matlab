clear variables;
clc;
close all;

[t, X, te, Xe] = symulate(0.5);
plot(t, X(:, 1));
hold on;
plot(te, Xe(:, 1), 'r*');
hold off;

k = 0.1:0.1:10;
T = zeros(length(k), 1);

for i = 1:length(k)
    [t, X, te, Xe] = symulate(k(i));
    T(i) = mean(diff(te));
end

plot(k, T, '-');

function [v, ister, dir] = event(t, X)
v = X(2);
ister = 0;
dir = -1;
end

function [t, X, te, Xe, ie] = symulate(k)

m = 1;
b = 0.1;
f = 1;
tEnd = 50;
x0 = [0; 0];

odefun = @(t, X) [X(2); (f - b * X(2) - k * X(1)) / m];

T = linspace(0, tEnd, 1000);

options = odeset('Events', @event);

[t, X, te, Xe, ie] = ode45(odefun, T, x0, options);

end
