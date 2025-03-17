clear variables;
clc;

% probability of the distance between two points in a circle being greater than
% the side of the triangle (sqrt(3)) when the radius of the circle is 1

N=10000;
ile=0;

for i=1:N 
    a=2*pi*rand;
    x1=cos(a);
    y1=sin(a);
    a=2*pi*rand;
    x2=cos(a);
    y2=sin(a);
    d=norm([x1 y1]-[x2 y2]);
    if d>3^0.5
        ile=ile+1;
    end
end

disp(ile/N);