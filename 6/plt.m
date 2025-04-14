clear variables;
close all;
clc;

x=-1:0.5:1;
f=@(x)1./(1-x);
y=f(x);

figure("Position", get(0, "ScreenSize"));
axes("Color", [0.5, 0.5, 0.5], "FontSize", 32, "NextPlot", "replacechildren");
plot(x, y, "w", "MarkerSize", 15, "LineWidth", 2);