clear variables;
close all;
clc;

P1 = punkt;
P2 = punkt(1);
P3 = punkt(2, 3);
P = [P1, P2, P3];
P = [P; P];

% plot(P);
% plot(P1);
% P2 + P3;

plot(P1:P3)