%Runge Kutta Method 3rd and 4th Degrees
clear all; clc;
f = inline('-y/(2+x)');
x0 = input('x(0): '); y0 = input('y(0): ');
h = input('Number of iterations: '); n = input('Number of values: ');
x = x0; y = y0; fprintf('\nResults (x,y)\n'); fprintf('%f\t%f\n', x, y);
for i = 1:n
  k1 = f(x,y); k2 = f(x+h/2, y+h*k1/2); k3 = f(x+h, y-h*k1+2*h*k2);
  y = y+h*(k1+4*k2+k3)6; x = x+h; fprintf('%f\t%f\n', x, y);
end


clear all; clc;
f = inline('2*x+y-3*z'); g = inline('3*x-2*y+z');
x0 = input('x(0): '); y0 = input('y(0): '); z0 = input('z(0): ');
h = input('Number of iterations: '); n = input('Number of values: '); x = x0; y = y0; z = z0;
fprintf('\nResults (x,y,z)\n'); fprintf('%f\t%f\n%f\n', x, y, z);
for i = 1:n
  k1 = h*f(x, y, z); l1 = h*g(x, y ,z);
  k2 = h*f(x+h/2, y+k1/2, z+l1/2); l2 = h*g(x+h/2, y+k1/2, z+l1/2);
  k3 = h*f(x+h/2, y+k2/2, z+l2/2); l3 = h*g(x+h/2, y+k2/2, z+l2/2);
  k4 = h*f(x+h, y+k3, z+l3); l4 = h*g(x+h, y+k3, z+l3);
  y = y+(k1+2*k2+2*k3+k4)/6; z = z+(l1+2*l2+2*l3+l4)/6; x = x+h;
  fprintf('%f\t%f\n%f\n', x, y, z);
end
