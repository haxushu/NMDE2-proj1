function u = LaxW(u0, xx, dx, dt, Nt)
% LaxW(u0, xx, dx, dt, Nt): u0-initial values; xx-coordinates;
    nx = length(u0);
    r = dt/dx;  a = 1;   ar=a*r;
    u=u0;   un=zeros(size(u0));
    for it = 1:Nt
        for j=2:nx-1
            un(j) = ar*(ar-1)/2 * u(j+1) + (1-ar*ar) * u(j) + ar*(ar+1)/2 * u(j-1);
        end
        t = it*dt;
        un(1) = 1;
        un(nx) = 0;
        u = un;
    end