function hoiquyptbac2;
x = [1,2,3,4,5,6,7,8];
f = [1,8,27,64,125,216,350,560];
N = length(x);
SUMX1 = sum(x);
SUMX2 = sum(x.*x);
SUMX3 = sum(x.*x.*x);
SUMX4 = sum(x.*x.*x.*x);
A = [SUMX4,SUMX3,SUMX2;SUMX3,SUMX2,SUMX1;SUMX2,SUMX1,N];
SUMF = sum(f);
SUMFx1 = sum(f.*x);
SUMFx2 = sum(f.*x.*x);
b = [SUMFx2;SUMFx1;SUMF];
%==========
format rat, abc = inv(A)*b
%==========
plot(x,f,'r*');
hold on;
X = 0:0.1:10;
F = @(x)abc(1)*x.^2 + abc(2)*x + abc(3);
FX = feval(F,X);
plot(X,FX,'b-');
endfunction
