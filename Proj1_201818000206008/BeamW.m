function u = BeamW(u0, xx, dx, dt, Nt)
% BeamW(u0, xx, dx, dt, Nt): u0-initial values; xx-coordinates;
    nx = length(u0);
    r = dt/dx;  a = 1;   ar=a*r;
    u = u0;   un = zeros(size(u0));
    up = LaxW(u0, xx, dx, dt, 1);
    for it = 1:Nt
        un(2) = ar*(ar-1)/2 * u(3) + (1-ar*ar) * u(2) + ar*(ar+1)/2 * u(1);
        for j=3:nx-1
            un(j) = (1-ar*(3-ar)/2) * u(j) + ar*(2-ar) * u(j-1) - ar*(1-ar)/2 * u(j-2);
        end
        t = it*dt;
        un(1) = 1;
        un(nx) = 0;
        u = un;
    end