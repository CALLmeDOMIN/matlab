clear variables;
clc;

w = [1, -3, 2, 0, -1, 3, -4];

x = -1.2:0.01:2.2;

y = polyval(w, x);

r = roots(w);
dw = polyder(w);
dr = roots(dw);
d2w = polyder(dw);
d2r = roots(d2w);

r = r(imag(r)==0);
dr = dr(imag(dr)==0);
d2r = d2r(imag(d2r)==0);

for u = unique(dr)
    if mod(nnz(u==dr), 2) == 0
        dr(dr==u) = [];
    end
end

for u = unique(d2r)
  if mod(nnz(u==d2r), 2) == 0
      dr(d2r==u) = [];
  end
end

r = unique(r);
dr = unique(dr);
d2r = unique(d2r);

disp("miejsca zerowe:")
disp(r);
disp("Punkty ekstremalne:");
disp(dr);
disp("Punkty przegiecia");
disp(d2r);

figure;
hold on;
plot(x, y);
plot(r, zeros(size(r)), 'rx');
plot(dr, polyval(w, dr), 'g*');
plot(d2r, polyval(w, d2r), 'b+');
xlabel('x');
ylabel('w(x)');
set(gca, 'FontSize', 12, 'XLim', [min(x), max(x)])


I=trapz(x, (1+polyval(polyder(w),x).^2).^0.5);
title=['I = ', num2str(I)];
