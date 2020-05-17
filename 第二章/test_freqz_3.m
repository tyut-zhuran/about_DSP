%freqz()����ת�ƺ�������Ƶ����ӦH(e^jw)
%��ʽ��[H,w]:freqz(b,a,N,'whole',Fs)
%N:Ƶ����ķֵ�����w:����Ƶ���������������
%Fs:����Ƶ�ʣ���FsΪ1����Ƶ���������һ��Ƶ�ʣ�wholeָ�������Ƶ�ʷ�Χ��0-Fs��Ĭ����0-Fs/2
clear;
b = [0.001836, 0.007344, 0.011016, 0.007374, 0.001836];%ת�ƺ�������ϵ��
a = [1, -3.0544, 3.8291, -2.2925, 0.55075];%��ĸϵ������һ��������1
[H,w] = freqz(b,a,256,'whole',1);

Hr = abs(H);%���Ƶ��Ӧ
Hphase1 = angle(H);%��Ƶ��Ӧ
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