clc;
clear variables;
close all;

x = -1:0.1:1;
y = x.^2 + 0.25 * randn(size(x));

sp = spline(x, y);
xx = linspace(min(x), max(x), 200);
yy = ppval(sp, xx);

plot(x, y, 'x', xx, yy, '-');
hold on;

ssn = fitnet(10);
ssn = train(ssn, x, y);

yy2 = sim(ssn, xx);
plot(xx, yy2, '--');

f = @(p, x) x.^2 + p(1) * sin(p(2) * x + p(3));
fun = @(p) sum((y - f(p, x)).^2);

p0 = [0.5, 1, 0];
p_fit = fminsearch(fun, p0);

yy_f = f(p_fit, xx);
plot(xx, yy_f, ':');

dy = diff(yy_f) ./ diff(xx);

legend('Data', 'Spline', 'SSN', 'F+sin');
hold off;
