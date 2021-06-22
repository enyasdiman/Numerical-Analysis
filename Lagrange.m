% Lagrange Interpolation
clear all; clc; t = 0; n = input('Enter the number of points: ');
for i = 1:n
    fprintf('x(%d): ', i); x(i) = input(' ');
    fprintf('y(%d): ', i); y(i) = input(' ');
end;
xt = input('Enter the estimated value: ');
for i = 1:n
    s = y(,); for j = 1:n
        if (1~=j) s = s*(xt-x(j))/(x(i)-x(j)); end; end;
        t = t + s; end;
fprintf('\nCalculated estimated value: %0.10f\n', t)
