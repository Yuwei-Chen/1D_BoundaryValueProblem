% function errg = errorfd(ngrid, gridx, n, uvct, nn, errg, truef);
function errg = errorfd(ngrid, gridx, n, uvct, nn, errg, truef);

if (nargin < 7) truef = 'truevd'; end;
[t1 t2 t3] = feval(truef, gridx);
errg(1, nn) = max(abs(t1-uvct'));
