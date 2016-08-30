function [rhs, coefu, coefux, coefuxx ] = PDEcoefs( x )
%coefficients returns the values of the PDE coefficient functions
%             and RHS function f(x)
%   DEs p(x)*u_xx + q(x)*u_x + r(x)*u = f(x), Dirichlet BCs

coefu     = 1+1./(1+x); % 1+1./(1+x);
coefux    = cos(x); % cos(x);
coefuxx   = -exp(x); % -exp(x);

% rhs = rhsfunc(x); %self-defined RHS function of PDE

% rhs used to test when knowing the true value of functions
[true1, true2, true3] = truevd(x);
rhs = coefu*true1 + coefux*true2 + coefuxx*true3;
end