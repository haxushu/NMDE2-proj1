function u = Upwind(u0, xx, dx, dt, Nt)
% Upwind(u0, xx, dx, dt, Nt): u0-initial values; xx-coordinates;
    nx = length(u0);
    r = dt/dx;  a = 1;   ar=a*r;
    u=u0;   un=zeros(size(u0));
    for it = 1:Nt
        for j=2:nx-1
            un(j) = (1-ar) * u(j) + ar * u(j-1);
        end
        t = it*dt;
        un(1) = 1;
        un(nx) = 0;
        u = un;
    end