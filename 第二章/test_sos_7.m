
%tf2sos,sos2tf,sos2zp,zp2sos
%ת�ƺ�����������ϵͳ�������㼫��֮���ת��


B = [0.0201, 0, -0.0402, 0, 0.0201];
A = [1, -1.637, 2.237, -1.307, 0.641];

%sosÿһ�ж��Ƕ�����ϵͳ��ϵ����b0,b1,b2,1,a1,a2
%G��ϵͳ����
[sos,G] = tf2sos(B,A)
[b,a] = sos2tf(sos,G)

[Z,P,K] = tf2zp(B,A)
[sos,G] = zp2sos(Z,P,K)
[z,p,k] = sos2zp(sos,G)


clear;

