clear;
%产生一个sinc函数
%连续时，sinc t = sin t/t;
%离散时，sinc w = sin Nw / sin w;

n = 200;
stept = 4 * pi /n;
t = -2 * pi:stept:2*pi;
y = sinc(t);
plot(t,y,t,zeros(size(t)));