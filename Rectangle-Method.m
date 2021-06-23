%Rectangle Method
clear all; clc; t = 0; f = inline('3*x^2+2*x');
a = input('Lower Line: '); b = input('Upper Line: ');
n = input('Number of pieces: '); h = (b-a)/n;
for k = 1:n
  t = t+h*f(a+k*h);
end; fprintf('\nDefinite Integral: %0.10f\n', t);
