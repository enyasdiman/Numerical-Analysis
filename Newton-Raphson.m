%Newton Raphson Method
clear all; clc;
f = inline('x^3-6*x^2-4*x+24');
f1 = inline('3*x^2-12*x-4');
x0 = input('Initial value of iteration: ');
h = input('Precision: ');
x1 = x0 - f(x0)/f1(x0);
while (abs(f(x1))>h)
  x0 = x1; x1 = x0-f(x0)/f1(x0);
end;
fprintf('\nRoot: %0.10f\n', x1);
