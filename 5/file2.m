clear variables;
close all;
clc;

x = -1:0.25:1;
y = x.^2;

% plot(x, y)
% plot(x, y, 'x')
% plot(x, y, '+')
% plot(x, y, 'r+');
plot(x, y, 'r+', 'MarkerSize', 15)
% hold on; % retain plots on one canvas
% figure; % open new figure