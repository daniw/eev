%% Konstanten
g = 9.81;
dens = 1000;

%% Parameter
% Höhe Oberwasser
h_ow = 100;
% Höhe Underwasser
h_uw = 4;
% Durchfluss
q = 10;
% Druckverlust in der Leitung
hv = 14;
% Wirkungsgrad
eta = 0.92;
% Durchmesser
d = 0.9;
% Fläche
a = 12

% Turbinenleistung
p_turb = q * dens * g * (h_ow - h_uw - hv)
p_netto = p_turb * eta

v1 = q / (d^2 * pi / 4)
v2 = q / a
p1 = dens * g * (h_ow - hv)
p2 = dens * g * (8 + (10^5 / dens / g) - (v2^2 / 2 / g))
