%给出转移函数和输入后，filter可求出输出
clear;
x = ones(1,100);
t = [1:100];
b = [0.001836, 0.007344, 0.011016, 0.007374, 0.001836];%转移函数分子系数
a = [1, -3.0544, 3.8291, -2.2925, 0.55075];%分母系数，第一个必须是1

y = filter(b,a,x);
plot(t,x,'g.',t,y,'k-');



