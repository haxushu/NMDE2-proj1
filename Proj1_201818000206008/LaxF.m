function u = LaxF(u0, xx, dx, dt, Nt)
% LaxF(u0, xx, dx, dt, Nt): u0-initial values; xx-coordinates;
    %tic;
    nx = length(u0);
    r = dt/dx;  a = 1;   ar=a*r;
    u=u0;   un=zeros(size(u0));
    for it = 1:Nt
        for j=2:nx-1
            un(j) = (1-ar)/2 * u(j+1) + (1+ar)/2 * u(j-1);
        end
        
        %jj = 2:nx-1;
        %un(jj) = (1-ar)/2 * u(jj+1) + (1+ar)/2 * u(jj-1);
        t = it*dt;
        un(1) = 1;
        un(nx) = 0;
        u = un;
    end
    %toc;
end
