clear;
%��������Ϊ0.01����ֵΪ0�İ�����
N = 5000;
p = 0.01;
u = rand(1,N);
u = u-mean(u);
u = sqrt(12*p)*u;
power_u = var(u);
plot(u(1:100));
grid on;