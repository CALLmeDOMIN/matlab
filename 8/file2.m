clear variables;
clc;


x = -1:0.1:1;
y = rand(size(x));
plot(x, y, 'rx', 'MarkerFaceColor', 'r');
hold on;

I=zeros(1, length(x));
E=zeros(1, length(x));

xx = -1:0.01:1;

for n=0:length(x)-1
  p = polyfit(x, y, n);
  py=polyval(p, x);
  E(n+1)=mean(abs(y-py));
  I(n+1)=trapz(x, (1+polyval(polyder(p),x).^2).^0.5);
  plot(xx, polyval(p, xx));

end
figure;
subplot(2, 1, 1);
bar(0:length(x)-1,E);
subplot(2, 1, 2);
bar(0:length(x)-1,I);
set(gca, 'YScale', 'log');