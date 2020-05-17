clear;
%用于产生chirp信号，基本形式为exp(jat^2)
%matlab的chirp求出该函数的实部
%chirp(T,F0,T1,F1)   T:横轴时间范围，F0:起始频率，F1:T1时刻所具有的频率

t = 0:0.001:1;
y = chirp(t,0,1,125);
plot(t,y);

