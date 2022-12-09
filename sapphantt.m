fx = @(x)sin(x);
A = pi/3;
chinh_xac = cos(A)
printf('h \t\t\t sp thuan \t sp nguoc \t sp trungtam');
for i=1:6
  h = 1/10^i;
  SPT = (feval(fx,A+h) - feval(fx,A))/h;
  SPN = (feval(fx,A) - feval(fx,A-h))/h;
  SPTT = (feval(fx,A+h) - feval(fx,A-h))/(2*h);
  printf('%f \t %f  \t %f \t %f \t \n',h,SPT,SPN,SPTT);
end
