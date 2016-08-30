function [ rhs, coefs ] = rhscfd( gridx, ua, ub )
%RHSCFD Summary of this function goes here
%   Detailed explanation goes here
%   Dirichlet conditions
%   ua: value of u at x = a
%   ub: value of u at x = b

n = length(gridx) - 1; % number of gridx
numeq = n - 1;	% assume Dirichlet conditions
m = numeq;	% simplicity has charm
hx = gridx(2:end) - gridx(1:end-1);

for i = 1:m
    px = gridx(i+1);
    [rhs(i, 1), coefs(i, 1), coefs(i, 2), coefs(i, 3)] = PDEcoefs(px);
end

%px = gridx(1);[true1, true2, true3] = truevd(px); ua = true1;
rhs(1) = rhs(1) - ((2*coefs(1, 3) - coefs(1, 2)*hx(2))/...
    (hx(1)*(hx(1)+hx(2))))*ua;

%px = gridx(n+1);[true1, true2, true3] = truevd(px); ub = true1;
rhs(m) = rhs(m) - ((2*coefs(m, 3) + coefs(m, 2)*hx(n-1))/...
    (hx(n)*(hx(n-1)+hx(n))))*ub;

end