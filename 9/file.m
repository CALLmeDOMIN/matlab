clear variables;
close all;
clc;

x=-1:0.1:1;
y=x.^2+0.25*rand(size(x));

xx = linspace(min(x), max(x), 200);

SSN=fitnet(10);
SSN=train(SSN,x,y);
SP=spline(x,y);

Fsin=fittype('x.^2+a*sin(b*x+c)');
Fsin=fit(x.',y.', Fsin);

ySSN=SSN(x);
ySP=ppval(SP,x);
yFsin=Fsin(x);

eSSN=mean(abs(y-ySSN));
eSP=mean(abs(y-ySP));
eFsin=mean(abs(y-yFsin));

iSSN=trapz(x(1:end-1), (1+(diff(ySSN)./diff(x)).^2).^0.5);
iSP=trapz(x(1:end-1), (1+(diff(ySP)./diff(x)).^2).^0.5);
iFsin=trapz(x(1:end-1), (1+(diff(yFsin)./diff(x)).^2).^0.5);

ySSN=SSN(xx);
ySP=ppval(SP,xx);
yFsin=Fsin(xx);

figure;
hold on;
plot(x,y,'rx', 'MarkerSize', 10, 'LineWidth', 2);
plot(xx, ySSN);
plot(xx, ySP);
plot(xx, yFsin);

legend('Data', 'SSN', 'Spline', 'F+sin');
set(gca, 'FontSize', 14);

figure
subplot(2,1,1);
bar([eSSN, eSP, eFsin]);
set(gca, 'XTickLabel', {'SSN', 'Spline', 'F+sin'});
title('Blad');
set(gca, 'FontSize', 14);

subplot(2,1,2);
bar([iSSN, iSP, iFsin]);
set(gca, 'XTickLabel', {'SSN', 'Spline', 'F+sin'});
title('Dlugosc');
set(gca, 'FontSize', 14);
