clear variables;
close all;
clc;

p=[1, 1, 1];
roots(p)

x = -2:0.1:2;
y = polyval(p, x);
figure("Position", get(0, "ScreenSize"));
plot(x, y, "r", "MarkerSize", 15, "LineWidth", 2);

a = -2:0.1:2;
b = -2:0.1:2;
[A, B] = meshgrid(a, b);
X = A + 1i * B
Y = polyval(p, X);
figure("Position", get(0, "ScreenSize"));
surf(a, b, abs(Y))
xlabel("Re(x)")
ylabel("Im(x)")
zlabel("abs(y)")