clear;
%rand�����İ���������ƽ���ֲ�
N = 5000;
u = rand(1,N);
u_mean = mean(u);
power_u = var(u);%��������ʣ�����������ԼΪ1/12
subplot(211);
plot(u(1:100));
grid on;
ylabel('u(n)');

subplot(212);
hist(u,50);%ֱ��ͼ��50�����0-1�ֽ����Ŀ
grid on;
ylabel('histogram of u(n)');