## Copyright (C) 2022 HI
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} ppcattuyen (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: HI <HI@LAPTOP-UFSCIGUU>
## Created: 2022-04-12

function retval = ppcattuyen (fx,x0,x1,epsilon)
   saisothucte = 1;
  step = 0;
  while saisothucte > epsilon
    step = step + 1;
    fx0 = feval(fx,x0);
    fx1 = feval(fx,x1);
    dfx1 = (fx1 - fx0)/(x1 - x0);
    x2 = x1 - fx1/dfx1;
    saisothucte = abs(feval(fx,x2));
    x0 = x1;
    x1 = x2;
  end
  nghiem = x2
  sai so = saisothucte
  so vong lap = step
endfunction
