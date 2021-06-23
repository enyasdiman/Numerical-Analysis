%Inverse Matrix Method
clear all; clc;
A = input('Enter the coefficient matrix as [a b;c d] !\n');
b = input('Enter the solution vector as [a b c d] !\n');
x = inv(A)*b';
fprintf('\nThe solution of the equation system: \n'); disp(x)
