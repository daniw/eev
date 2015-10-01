% Konstanten
g = 9.81;
dens = 1000;
% Abmasse
b =  200;
l =  800;
h =  50;
% Bruttohöhe
hbr =  1000;
% Berechnungen
v = b*l*h;
m = v * dens * g;
% Bruttoenergieinhalt des Stausees
w = m * hbr;
disp(strcat('Bruttoenergieinhalt des Stausees: ', num2str(w), 'J'));
disp(strcat('Bruttoenergieinhalt des Stausees: ', num2str(w/3600000000), 'MWh'));
% Bruttoleistung im Jahr
p = w / 365 / 24 / 3600;
disp(strcat('Bruttoleistung im Jahr: ', num2str(p), 'W'));
disp(strcat('Bruttoleistung im Jahr: ', num2str(p/1000000), 'MW'));

