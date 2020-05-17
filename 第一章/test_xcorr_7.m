clear;

%xcorr用于计算信号互相关
N = 500;
p1 = 1;
p2 = 0.1;
f = 1/8;%频率
Mlag = 60;%rx的单边长度，不懂什么意思，但计算完后自相关函数的长度为2Mlag+1（所以可能是-60-60的意思）

u = randn(1,N);%u方差为1
u2 = u*sqrt(p2);%u2方差为0.1
n = [0:N-1];
s = sin(2*pi*f*n);%正弦采样

x1 = u(1:N)+s;
rx1 = xcorr(x1,Mlag,'biased');
subplot(221);
plot(x1)
subplot(222);
plot([-Mlag:Mlag],rx1(1:2*Mlag+1));

x2 = u2(1:N)+s;
rx2 = xcorr(x2,Mlag,'biased');
subplot(223);
plot(x2);
subplot(224);
plot([-Mlag:Mlag],rx2(1:2*Mlag+1));



