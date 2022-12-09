f = @(y,t)-20*y + 7*exp(-0.5*t);
y0 = 5;
t0 = 0;
h = 0.001;

y_chinhxac = @(t)5*exp(-20*t)+(7/19.5)*(exp(-0.5*t)-exp(-20*t));   % chinh xac
x = 0:h:1;
y_cx = feval(y_chinhxac,x);
plot(x,y_cx);
hold on;

%Forwward Euler
for t = t0:h:t1;
  Y = y0 + h*feval(f,y0,t);
  plot(t,Y,'r*');
  y0 = Y;
end

%Runge Kutta bac 2
y0 = 5;
for t = t0:h:t1
  k1 = h*feval(f,y0,t);
  k2 = h*feval(f,y0+k1,t+h);
  Y1 = y0 + 1/2*(k1+k2);
  plot(t,Y1,'y*');
  y0 = Y1;
end

%Runge Kutta bac 3
y0 = 5;
for t = t0:h:t1
  k1 = h*feval(f,y0,t);
  k2 = h*feval(f,y0+1/2*k1,t+1/2*h);
  k3 = h*feval(f,y0-k1+2*k2,t+h);
  Y2 = y0 + 1/6*(k1+4*k2+k3);
  plot(t,Y2,'b*');
  y0 = Y2;
end

%Runge Kutta bac 4
y0 = 5;
for t = t0:h:t1
  k1 = h*feval(f,y0,t);
  k2 = h*feval(f,y0+1/3*k1,t+1/3*h);
  k3 = h*feval(f,y0+1/3*k1+1/3*k2,t+2/3*h);
  k4 = h*feval(f,y0+k1-k2+k3,t+h);
  Y3 = y0 + 1/8*(k1+3*k2+3*k3+k4);
  plot(t,Y3,'g*');
  y0 = Y3;
end

