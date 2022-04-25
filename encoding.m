clc; clear all; close all;
%% Isaret Olusturma
t = 0:0.0001:2*pi;
xt = 10*sin(t);
figure(1), plot(t,xt);
%% Örnekleme
ts = 4000;
toplamUzunluk = floor(62382/ts);
xSampled = zeros (1,toplamUzunluk);
tSampled = zeros (1,toplamUzunluk);
for i = 1:toplamUzunluk
tSampled(i) = t(i*ts);
xSampled(i) = xt(i*ts);
end
hold on;
stem(tSampled,xSampled,'r');
%% Nicemleme
xQuantized = zeros (1,toplamUzunluk);
Qstep = (10 - (-10))/4;
for i = 1:toplamUzunluk
xQuantized(i) = floor(xSampled(i)/Qstep)*Qstep + Qstep/2;
end
hold on;
stem(tSampled,xQuantized,'k');
