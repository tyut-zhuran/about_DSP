clear;
%rand产生的白噪声服从平均分布
N = 5000;
u = rand(1,N);
u_mean = mean(u);
power_u = var(u);%方差，即功率，白噪声功率约为1/12
subplot(211);
plot(u(1:100));
grid on;
ylabel('u(n)');

subplot(212);
hist(u,50);%直方图，50代表对0-1分解的数目
grid on;
ylabel('histogram of u(n)');