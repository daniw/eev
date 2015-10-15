% Konstanten
g = 9.81;
dens = 1000;
% Bruttohöhe
hbr =  93;
% Wasserabfluss
v = 6000;
% Wirkungsgrad
eta = 0.93;
% gemessene Leistung
p_mess = 5000*1e6;
% Betriebsstunden pro Jahr
t = 5800 * 3600;
% Berechnungen
p = v * dens * g * hbr;
p_mw = p / 1e6;
disp(strcat('reale Leistung: ', num2str(p_mw * eta), 'MW'));

eta_real = p_mess / p;
disp(strcat('tatsächlicher Wirkungsgrad: ', num2str(eta_real), ''));

w = p_mess * t * 3600;
w_gj = w / 1e9;
w_mwh = w / 1e6 / 3600;
disp(strcat('Jährliche Arbeit: ', num2str(w_gj), 'GJ'));
disp(strcat('Jährliche Arbeit: ', num2str(w_mwh), 'MWh'));

v_year = v * t;
disp(strcat('Jährlicher Wasserabfluss: ', num2str(v_year), 'm^3'));
