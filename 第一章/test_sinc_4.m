clear;
%����һ��sinc����
%����ʱ��sinc t = sin t/t;
%��ɢʱ��sinc w = sin Nw / sin w;

n = 200;
stept = 4 * pi /n;
t = -2 * pi:stept:2*pi;
y = sinc(t);
plot(t,y,t,zeros(size(t)));