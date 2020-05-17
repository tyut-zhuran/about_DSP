%conv函数用于计算两个离散序列的卷积
N = 5;
M = 6;
L = N+M-1;
x = [1,2,3,4,5];
nx = 0:N-1;

h = [6,2,3,6,4,2];
nh = 0:M-1;

y = conv(x,h);
ny = 0:L-1;

subplot(131);
stem(nx,x,'.');xlabel('n');ylabel('x(n)');grid on;

subplot(132);
stem(nh,h,'.');xlabel('n');ylabel('h(n)');grid on;

subplot(133);
stem(ny,y,'.');xlabel('n');ylabel('y(n)');grid on;




