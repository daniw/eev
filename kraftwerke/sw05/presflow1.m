%% Konstanten
g = 9.81;
dens = 1000;
%% Parameter
% Bruttohöhe
hbr = 800;
% Bruttoleistung pro Maschine
pbr = 60E6;
% Anzahl Maschinen
n_gen = 6;
% Winkel zwischen Kanal und Druckleitung
angle = 120;
% Geschwindigkeit in Druckleitung
v_druck = 4.5;
% Geschwindigkeit in Kanal
v_kanal = 1;

% Wassermenge
q_unit = pbr / (g * dens * hbr)
q_tot = q_unit * n_gen

% Durchmesser Druckleitung
a_druck = q_tot / v_druck;
d_druck = sqrt(a_druck * 4 / pi)

% Durchmesser Kanal
a_kanal = q_tot / v_kanal;
w_kanal = sqrt(a_kanal)

% Masse der Wassersäule
l = hbr / cos(30/180*pi);
V = a_druck * l;
m = V * dens;
m_ton = m / 1000
