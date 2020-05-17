
%tf2sos,sos2tf,sos2zp,zp2sos
%转移函数、二阶子系统级联、零极点之间的转换


B = [0.0201, 0, -0.0402, 0, 0.0201];
A = [1, -1.637, 2.237, -1.307, 0.641];

%sos每一行都是二阶子系统的系数，b0,b1,b2,1,a1,a2
%G是系统增益
[sos,G] = tf2sos(B,A)
[b,a] = sos2tf(sos,G)

[Z,P,K] = tf2zp(B,A)
[sos,G] = zp2sos(Z,P,K)
[z,p,k] = sos2zp(sos,G)


clear;

