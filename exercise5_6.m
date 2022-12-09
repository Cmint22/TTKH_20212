function hoiquy;
x = [-3,2,0,-2,6];
y = [-2,-2,1,3,5];
f = [455,30,6,55,230];
N = length(x);
M = length(y);
SUMX1 = sum(x);
SUMX2 = sum(x.*x);
SUMX3 = sum(x.*x.*x);
SUMX4 = sum(x.*x.*x.*x);
A = [SUMX4,SUMX3,SUMX2;SUMX3,SUMX2,SUMX1;SUMX2,SUMX1,N];
SUMF = sum(f);
SUMFx1 = sum(f.*x);
SUMFx2 = sum(f.*x.*x);
b = [SUMFx2;SUMFx1;SUMF];

SUMY1 = sum(y);
SUMY2 = sum(y.*y);
SUMY3 = sum(y.*y.*y);
SUMY4 = sum(y.*y.*y.*y);
B = [SUMY4,SUMY3,SUMY2;SUMY3,SUMY2,SUMY1;SUMY2,SUMY1,M];
SUMF = sum(f);
SUMFy1 = sum(f.*y);
SUMFy2 = sum(f.*y.*y);
a = [SUMFy2;SUMFy1;SUMF];
%==========
format rat, abc = inv(A)*b
format rat, bcd = inv(B)*a
%==========
plot(x,f,'r*');
hold on;
plot(y,f,'y*');
hold on;
X = 0:1:50;
Y = 0:0.1:5;
FX = @(x)abc(1)*x.^2;
FY = @(y)bcd(1)*y.^2;
FXY = feval(FX,X) + feval(FY,Y);
plot(X,Y,FXY,'b-');
endfunction
