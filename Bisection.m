%Bisection Method
clear all; clc; f= inline('x^3-6*x^2-4*x+24); %function can be changed
a = input('Lower Limit: '); b = input('Upper Lower: ');
h = input('Precision: '); x0 = (a+b)/2;
while (abs(f(x0))>h)
  if(f(a)*f(x0)<0) b = x0;
  else a = x0; end;
  x0 = (a+b)/2;
end; fprintf('\nRoot: %0.10f\n', x0);
