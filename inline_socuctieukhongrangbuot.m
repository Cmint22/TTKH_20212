function [  ] = inline( f, x1, x2 )
f = inline(’100*(x(2)-x(1)∧2)∧2 + (1-x(1))∧1’);
gf = inline(’[100*2*(x(2)-x(1)∧2)*(-2*x(1)) +2*x(1)-2;200*(x(2)-x(1)∧2)]’);
hf = inline(’[1200*x(1)∧2 - 400*x(2)+ 2,-400*x(1);-400*x(1),200]’);
fval = f(x);
gval = gf(x);
H = hf(x);
ng = norm(gval);
nf = 1;
tol =0.05;
iter = 0;
alpha = 1;
while ng >= tol
  iter = iter + 1;
  nf = 0;alpha = 1;
  p = -inv(H)*gval;
  pass = 0;
  while pass == 0
    ftest = f(x+alpha*p);
    nf = nf+1;
    if ftest <= fval + 0.01*alpha*gval’*p
      pass = 1;
      x = x+alpha*p;
      fval = ftest;
      gval = gf(x);
      H = hf(x);
      ng = norm(gval);
    else
      alpha = alpha/2;
    endif
  endwhile
  fprintf('%3i %3.2e %3.2e %3.2e %3.2e%i',iter,fval,ng,norm(x-xstart),alpha,nf);
end


