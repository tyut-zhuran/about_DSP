clear;
%���ڲ���chirp�źţ�������ʽΪexp(jat^2)
%matlab��chirp����ú�����ʵ��
%chirp(T,F0,T1,F1)   T:����ʱ�䷶Χ��F0:��ʼƵ�ʣ�F1:T1ʱ�������е�Ƶ��

t = 0:0.001:1;
y = chirp(t,0,1,125);
plot(t,y);

