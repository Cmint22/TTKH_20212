function [  ] = CTHTME (fx,a,b,n)
  Fx = @(x)x^3/3 + x^2/2 +x;
  fa = feval(fx,a);
  fb = feval(fx,b);
  ictht = (fa + fb)*(b - a)/2;
  icx = feval(Fx,b) - feval(Fx,a)
  sum = 0;
  h = (b - a)/n;
  for i = 1:n-1
    sum = sum + feval(fx,a + i*h);
  endfor
  ihtar = (fa + fb + 2*sum)*h/2
endfunction
