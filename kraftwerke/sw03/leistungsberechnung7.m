% Konstanten
g = 9.81;
dens = 1000;
% Einzugsgebiet
a = 5; % km^2
% Abflussfaktor
f = 8; % ltr/sec/km^2
%Mittlerer Abfluss
v_ltr = f * a; % ltr/sec
v = v_ltr / 1000;
% Bruttohöhe
hbr =  14;

% Aufgaben:
% Mögliche Ausbauwassermenge
disp(strcat('Mögliche Ausbauwassermenge: ', num2str(v), 'm^3/sec'));

% Natürliche hydraulische Leistung bei mittlerem Abfluss
p = v * dens * g * hbr;
disp(strcat('Natürliche hydraulische Leistung bei mittlerem Abfluss: ', num2str(p), 'W'));

% Leistung ab Generator, Gesamtwirkungsgrad bei 0.8 bei mittlerem Abfluss
eta = 0.8;
p_gen = p * eta;
disp(strcat('Leistung ab Generator, Gesamtwirkungsgrad bei 0.8 bei mittlerem Abfluss: ', num2str(p_gen), 'W'));

% Jährlicher Energieoutput 
% - bei mittlerem Abfluss
w_jahr = p_gen * 24 * 365 / 1000000;
disp(strcat('Jährlicher Energieoutput bei mittlerem Abfluss: ', num2str(w_jahr), 'MWh'));
% - bei Abfluss + 10%
w_jahr_max = p_gen * 24 * 365 / 1000000 * 1.1;
disp(strcat('Jährlicher Energieoutput bei Abfluss + 10%: ', num2str(w_jahr_max), 'MWh'));
% - bei Abfluss - 20%
w_jahr_min = p_gen * 24 * 365 / 1000000 * 0.8;
disp(strcat('Jährlicher Energieoutput bei Abfluss - 20%: ', num2str(w_jahr_min), 'MWh'));

% Möglicher Ertrag bei Vergütung KEV (Kostendeckende EinspeiseVergütung)

