%% Konstanten
g = 9.81;
dens = 1000;

%% Parameter
% Bruttohöhe
hbr = 500;
% Länge Druckleitung
l_druck = 3000;
% Durchmesser Druckleitung
d_druck = 0.4;

% Fliessgeschwindigkeit
v =sqrt(hbr * 2 * g)

% Wassermenge
q = v * d_druck^2 * pi / 4
