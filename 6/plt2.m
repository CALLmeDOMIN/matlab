clear variables;
close all;
clc;

x = 0:0.1:6*pi;
y = exp(1i*x);
figure("Position", get(0, "ScreenSize"));
plot(x, y)
figure("Position", get(0, "ScreenSize"));
plot(x, real(y))
hold on;
plot(x, imag(y))
legend("RE", "IM")
figure("Position", get(0, "ScreenSize"));
subplot(1, 2, 1);
plot(x, abs(y))
subplot(1, 2, 2);
plot(x, angle(y))
figure("Position", get(0, "ScreenSize"));
plot3(x, real(y), imag(y))
xlabel("x")
ylabel("RE(y)")
zlabel("IM(y)")
axis equal;