x = [1 2 3 4 5 6 7 8];
y = [1 8 27 64 125 216 350 560];
s0 = length(x);
s1 = sum(x);
s2 = sum(x.ˆ2);
s3 = sum(x.ˆ3);
s4 = sum(x.ˆ4);
A = [s4 s3 s2; s3 s2 s1; s2 s1 s0];
b = [sum(x.ˆ2.*y);
sum(x.*y);
sum(y)];
c0 = A\b;
c = polyfit(x,y,2); % Tìm đa thức hồi qui khớp dữ liệu
c0 % Đưa ra hệ số tính được
c % Đưa ra hệ số tìm được bởi polyfit
xx = 1:0.1:8;
yy = polyval(c0,xx);
plot(x,y,'o',xx,yy)
