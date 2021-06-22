% Numerical Differentiation
clear all; clc; n = input('Points of dots: ');
h = input('Step value: '); x(1) = input('x(1): ');
for i = 1:n
  if(i~=1) x(i)=x(i-1)+h; end;
  fprintf('y(%d):', i); y(i)=input(' ');
end; fprintf('\nFirst Derivatives:\n');
for i = 1:n-1
    drv1(i)=(y(i+1)-y(i))/h; fprintf('%f\n', drv1(i));
end; fprintf('\nSecond Derivatives:\n');
for i=1:n-2
    drv2(i)=(y(i+2)-2*y(i+1)+y(i))/(h*h); fprintf('%f\n', drv2(i));
end;

% Numerical Differentiation
clear all; clc;
x = input('Enter the x values as [a b c d] !\n');
y = input('Enter the y values as [a b c d] !\n');
h = x(2)-x(1); fprintf('\nFirst Derivatives:\n');
drv1 = diff(y)./h; fprintf('%f\n', drv1');
fprintf('\nSecond Derivatives:\n');
drv2 = diff(y,2)./h^2; fprintf('%f\n', drv2');
