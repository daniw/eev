% Konstanten
g = 9.81;
dens = 1000;
% Bruttohöhe
hbr =  650;
% Leistungsabgabe
p1 = 42e6;
p2 = 21e6
tp1 = 80;
tp2 = 220;
eta = 0.8;
% Anzahl entleerungen pro Jahr
n = 2;
% Berechnungen
w_out_el_1 = p1 * tp1 * 24 * 3600;
w_out_el_2 = p2 * tp2 * 24 * 3600;
w_out_el = w_out_el_1 + w_out_el_2;
w_out_el_mwh = w_out_el / 3600 / 1e6;
disp(strcat('Jahres-Energieoutput in MWh: ', num2str(w_out_el_mwh), 'MWh'));

w_brutto = w_out_el / n / eta;
w_brutto_mwh = w_brutto / 3600 / 1e6;
disp(strcat('Bruttoenergieinhalt des Stausees: ', num2str(w_brutto_mwh), 'MWh'));

m_brutto = w_brutto / hbr / g;
v_brutto = m_brutto / dens;
disp(strcat('Bruttoinhalt des Stausees: ', num2str(v_brutto), 'm^3'));

l_cube = v_brutto ^ (1 / 3);
disp(strcat('Seitenlänge eines entsprechenden Würfels: ', num2str(l_cube), 'm'));

v_avg_year = v_brutto * n / 365 / 24 / 3600;
disp(strcat('Mittlerer Zufluss: ', num2str(v_avg_year), 'm^3'));
