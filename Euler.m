%Euler Method
clear all; clc; x0 = input('x(0): '); y0 = input('y(0): ');
h = input('Number of iterations: '); n = input('Number of values: ');
x = x0; y = y0; fprintf('\nResults (x,y)/n'); fprintf('%f\t%f\n', x, y);
for i = 1:n y = y+h*(-y/2+x)); x = x+h; fprintf('%f\t%f\n', x, y); end
