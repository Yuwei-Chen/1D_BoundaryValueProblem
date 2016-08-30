% function [true1, true2, true3] = truevd(x)
%
% returns the values of the solution function, 1st and 2nd
% derivatives on x

function [true1, true2, true3] = truevd(x)

global Uno Uname;

o = ones(size(x)); z = zeros(size(x));

switch Uno

case {175}
    Uname ='x.^(15/2)';
true1 = x.^(15/2);  true2 = 15/2*x.^(13/2); true3 = 195/4*x.^(11/2);

case {165}
    Uname ='x.^(13/2)';
true1 = x.^(13/2);  true2 = 13/2*x.^(11/2); true3 = 143/4*x.^(9/2);

case {155}
    Uname ='x.^(11/2)';
true1 = x.^(11/2);  true2 = 11/2*x.^(9/2);  true3 = 99/4*x.^(7/2);

case {145}
    Uname ='x.^(9/2)';
true1 = x.^(9/2);   true2 = 9/2*x.^(7/2);   true3 = 63/4*x.^(5/2);

case {135}
    Uname ='x.^(7/2)';
true1 = x.^(7/2);   true2 = 7/2*x.^(5/2);   true3 = 35/4*x.^(3/2);

case {125}
    Uname ='x.^(5/2)';
true1 = x.^(5/2);   true2 = 5/2*x.^(3/2);   true3 = 15/4*x.^(1/2);
true4 =15/8*x.^(-1/2); true5 =-15/16*x.^(-3/2);

case {115}
    Uname ='x.^(3/2)';
true1 = x.^(3/2);   true2 = 3/2*x.^(1/2);   true3 =  3/4*x.^(-1/2);
true4 =-3/8*x.^(-3/2); true5 = 9/16*x.^(-5/2);

case {109}
    Uname ='exp(x)';
true1 = exp(x);     true2 = exp(x);       true3 = exp(x);

case {51}
    Uname ='x.^6';
true1 = x.^6;       true2 = 6*x.^5;       true3 = 30*x.^4;

case {41}
    Uname ='x.^5';
true1 = x.^5;       true2 = 5*x.^4;       true3 = 20*x.^3;

case {31}
    Uname ='x.^4';
true1 = x.^4;       true2 = 4*x.^3;       true3 = 12*x.*x;

case {21}
    Uname ='x.^3';
true1 = x.^3;       true2 = 3*x.*x;       true3 = 6*x;

case {11}
    Uname ='x.*x';
true1 = x.*x;       true2 = 2*x;          true3 = 2*o;

case {1}
    Uname ='x';
true1 = x;          true2 = o;            true3 = z;

case {0}
    Uname ='1';
true1 = o;          true2 = z;            true3 = z;

otherwise
    error(['truevd: no such function ' num2str(Uno)])
end
