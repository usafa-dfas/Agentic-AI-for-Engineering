% Cantilever beam tip deflection
E = 200e9;           % Pa, steel
L = 2.0;             % m, length
P = 500.0;           % N, tip load
b = 0.05; h = 0.10;  % m, section
I = b*h^3/12;
delta = P*L^3/(3*E*I);
fprintf('Tip deflection: %.2f mm\n', delta*1e3)
