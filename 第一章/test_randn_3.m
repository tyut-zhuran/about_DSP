clear;
%randn������ֵΪ0������Ϊ1����˹�ֲ��İ�����
N = 5000;
p = 0.01;
a = sqrt(p);
u = randn(1,N);
u = u*a;
power_u = var(u);
subplot(211);
plot(u(1:100));

subplot(212);
hist(u,50);