%Seidel Method
clear all; clc;
A = input('Enter the coefficient matrix as [a b;c d] !\n');
b = input('Enter the solution vector as [a b c d] !\n');
s = input('Number of Iterations: '); n = length(b); x(1:n) = 0;
fprintf('\nIterations\n-------------\n');
for i = 1:s
  fprintf('\n%d. Iteration\n', i);
  for j = 1:n
    y = b(j); for k = 1:n
                  if ( j~=k) y = y-A(j, k)*x(k); end; end;
    x(j) = y/A(j, j); fprintf('x(%d) = %0.10f\n', j+1, x(j)); end; end
