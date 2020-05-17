%impz(),给出B(z)和A(z)，即转移函数后，求单位抽样响应，即逆z变换

N = 40;
b = [0.001836, 0.007344, 0.011016, 0.007374, 0.001836];%转移函数分子系数
a = [1, -3.0544, 3.8291, -2.2925, 0.55075];%分母系数，第一个必须是1

[h,t] = impz(b,a,N);
stem(t,h,'.');
grid on;

