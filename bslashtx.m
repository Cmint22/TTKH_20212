%Tran Thi Quynh Tien 20205032
%Hoang Mai Thuy Linh 20205093

function x=bslashtx(A,b)
A=[10,-7,0;-3,2,6;5,-1,5]
n=size(A,1);
%Su dung lutx(A);
function [L, U ,p]=lutx(A)
[n,n]=size(A);
p=(1:n);
for k=1:n-1
  [r,m]=max(abs(A(k:n,k)));
  m=m+k-1;
  if(A(m,k)~=0)
      if(m~=k)
          A([k m],:)=A([m k],:);
          p([k m])=p([m k]);
      end
      i=k+1:n;
      A(i,k)=A(i,k)/A(k,k);
      j=k+1:n;
      A(i,j)=A(i,j)-A(i,k)*A(k,j);
  end
end
L=tril(A,-1)+eye(n,n)
U=triu(A)
end

%Khu xuoi
U=[10,-7,0;-3,2,6;5,-1,5]; b = [7;4;6];n=3;x=zeros(n,1)
n=3;
for k=1:n:1
  U(k+1)=U(k+1)-U(k)*(U(k+1,k+1)/U(k,k));
  i=(1:k+1);
end

%The nguoc
U=[3,4,5;0,2,-3;0,0,5]; b = [7;8;11];n=3;x=zeros(n,1)
for k=n:-1:1
  x(k) = b(k)/U(k,k);
  i=(1:k-1);
  b(i) = b(i) - x(k) * U(i,k);
end
end
