function [ ] = ppnewton(f,df,x0,epsilon)
  saisothucte = 1;
  step = 0;
  while saisothucte > epsilon
    step = step + 1;
    fx0 = feval(fx,x0);
    dfx0 = feval(dfx,x0);
    x = x0 - fx0/dfx0;
    saisothucte = abs(feval(fx,x));
    x0 = x;
  endwhile
  nghiem = x
  sao so = sáiothucte
  sobuoclap = step
end

