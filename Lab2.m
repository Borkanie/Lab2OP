[X1,X2]=meshgrid(-5:0.1:5,-5:0.1:5);
contour(X1,X2,f15(X1,X2))
hold on
plot(X1(1,:),-(1-9*X1(1,:))/4)
figure
surf(X1,X2,f15(X1,X2))
%grafic punctul de minim este in (1,0)
syms x1 x2 lambda

sol=solve(20*x1^3+2*x1*x2+8*lambda==0,x1^2-2*x2-3-4*lambda==0,8*x1-4*x2-1==0 ...
    ,[x1,x2,lambda],'Real',true);
x1=round(sol.x1,4)
x2=round(sol.x2,4)
lambda=round(sol.lambda,4)
H=[60*x1+2*x2,2*x1,8;
    2*x1,-2,-4;
    8,-4,0]
eig(H)