%residuez将转移函数分解成简单有理分式的和，也可以反过来求

clear;
b = [1.7, -1.69, 0.39];
a = [1,-1.7,0.8, -0.1];
%k为单独的项，r为相应极点处的留数，p为极点（单项为r(j)/1-p(j)z^-1）
[r,p,k] = residuez(b,a)

%反过来
[b,a] = residuez(r,p,k)



