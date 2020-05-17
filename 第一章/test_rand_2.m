clear;
%产生功率为0.01，均值为0的白噪声
N = 5000;
p = 0.01;
u = rand(1,N);
u = u-mean(u);
u = sqrt(12*p)*u;
power_u = var(u);
plot(u(1:100));
grid on;