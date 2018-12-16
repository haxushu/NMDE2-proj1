function u = ExSolu(x, t)
    a = 1;
    u = zeros(size(x));
    u(x-a*t<=0) = 1;
end