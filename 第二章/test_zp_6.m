%相关的几个m文件
%tf2zp,zp2tf,
%roots()求一个多项式的根
%poly()给出根求系数
%sort将求出的根按绝对值大小排序
clear;
B = [1, -3.3, 7.25, -6.7, 3, -0.8];%多项式的系数，转移函数的分子

L = length(B);
A = zeros(1,L);
A(1) = 1;%转移函数分子除1外都是0

[Z,P,K] = tf2zp(B,A)
%Z和P是同维向量，so as B A


sort(Z);%有什么意义？

[b,a] = zp2tf(Z,P,K)

Z1 = roots(B)
poly(Z1)

