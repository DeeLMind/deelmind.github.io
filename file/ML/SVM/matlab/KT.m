function [ ret ] = KT( x,y )
% Kernel Trick

% Liner   - 1
% Multil  - 2
% Gauss   - 3
% Laplace - 4
% Sigmoid - 5

Type = 3;

% Liner
if (Type == 1)
    ret = x * y;
end

% Multil
if (Type == 2)
    t = 5;
    ret = (x * y) ^ t;
end

% Gauss
if (Type == 3)
    sigm = 1;
    distance = x^2 + y^2;
    ret = exp(-(distance / 2 * sigm ^ 2));
end

% Laplace
if (Type == 4)
    sigm = 5;
    distance = sqrt(x ^ 2 + y ^ 2);
    ret = exp(-(distance / sigm));
end

% Sigmoid
if (Type == 5)
    bt = 1;
    f = pi / 4;
    btNum = bt * (x * y);
    ret = tanh(btNum + f);
end

end

