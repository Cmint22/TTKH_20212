fx = @(x)sin(x);
A = pi/3;
chinh xac = cos(A)
for i=1:6
  h = 1/10^i;
  gan dung = (feval(fx,A+h) - feval(fx,a)/h;
  printf('%f\t %f\n',h, gan dung);
end
