%freqz()给出转移函数，求频率响应H(e^jw)
%格式：[H,w]:freqz(b,a,N,'whole',Fs)
%N:频率轴的分点数，w:返回频率轴的坐标向量，
%Fs:抽样频率，若Fs为1，则频率轴给出归一化频率，whole指定计算的频率范围是0-Fs，默认是0-Fs/2
clear;
b = [0.001836, 0.007344, 0.011016, 0.007374, 0.001836];%转移函数分子系数
a = [1, -3.0544, 3.8291, -2.2925, 0.55075];%分母系数，第一个必须是1
[H,w] = freqz(b,a,256,'whole',1);

Hr = abs(H);%求幅频响应
Hphase1 = angle(H);%相频响应
Hphase2 = unwrap(Hphase1);
subplot(311);
plot(w,Hr);
xlabel('w/2pi');

subplot(312);
plot(w,Hphase1);
xlabel('w/2pi');

subplot(313);
plot(w,Hphase2);
xlabel('w/2pi');