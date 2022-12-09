function [u] = TichphanLargian(n, x, y, z)
fx=@(x)x^2+sin(x)+1;
for k=1:length(z)
        pn = 0;
        for i=1:n+1
            q = y(i);
            for j=1:n+1
                if i~= j
                    q = q*(z(k) - x(j))/(x(i) - x(j));
                end
            end
            pn = pn + q;
        end
        kq(k) = pn;
    end
    u = kq';
    z = [z(:), u(:)]';
    disp('Ket qua:')
    disp('     Xi       Yi')
    fprintf('%5.2f%5.2f\n',z)
end
