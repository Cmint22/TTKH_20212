function [ ] = exercise5_5(x,f )
x = [-2,3,5,8,9];
f = [6.3,1.2,7.1,-2.8,-0.05];
n = length(x);
sumx2=sum(sin(x).*sin(x));
sumf2=sum(sin(x).*f);
sumx=sum(sin(x));
sumf=sum(f);
A=[n sumx; sumx sumx2];
b=[sumf; sumf2];
abc=inv(A)*b
plot(exp(x),f,'r*');
hold on;
X=-5:0.1:5;
F=@(x)abc(1).*exp(x)+abc(2);
FX=feval(F,X);
plot(X,FX,'b-');
endfunction

