clear variables;
clc;
close all;

f1 = randi(3000) + 1000;
f2 = randi(3000) + 1000;

fs = 4 * 8192;
L = 8192;
t = (0:L-1) / fs;
y = sin(2 * pi * f1 * t) + sin(2 * pi * f2 * t);

plot(t(t<0.01), y(t<0.01))

n = 2^nextpow2(L);
s = fft(y, n)/L;
s = 2 * abs(s(1:n / 2 + 1));
f = linspace(0, 1, n / 2 + 1) * fs/2;

figure;
bar(f, s)
xlabel("Frequency (Hz)")
ylabel("Amplitude")
title("FFT of the signal")

F = f(s > 0.5)
fo = mean(F);

[l, m] = butter(12, 2 * fo / fs, 'low');
y1 = filter(l, m, y);
figure;
plot(t(t<0.01), y1(t<0.01));