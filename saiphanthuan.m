fx = @(x)sin(x);
A = pi/3;
chinh_xac = cos(A)
for i=1:6
  h = 1/10^i;
  gan_dung = (feval(fx,A+h) - feval(fx,A))/h;
  printf('%f \t %f \n',h,gan_dung);
end
