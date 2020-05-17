clear;

%xcorr���ڼ����źŻ����
N = 500;
p1 = 1;
p2 = 0.1;
f = 1/8;%Ƶ��
Mlag = 60;%rx�ĵ��߳��ȣ�����ʲô��˼���������������غ����ĳ���Ϊ2Mlag+1�����Կ�����-60-60����˼��

u = randn(1,N);%u����Ϊ1
u2 = u*sqrt(p2);%u2����Ϊ0.1
n = [0:N-1];
s = sin(2*pi*f*n);%���Ҳ���

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



