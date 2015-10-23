clc;
clear;
close all;

%% Parameter
g = 9.81;
rho = 1000;

h_ow = 503.50;
h_uw = 497.07;

q = 2 * 30;
V = 516 * 10^6;

hbr_max = 686;
hbr_min = 618;

p_gen = 2 * 185 * 10^6;

e_out_gwh = 1500;

%% Berechnung
p_nat_max = q * rho * g * hbr_max;
p_nat_max_mw = p_nat_max / 10^6

p_nat_min = q * rho * g * hbr_min;
p_nat_min_mw = p_nat_min / 10^6

eta_max = p_gen / p_nat_max

eta_min_false = p_gen / p_nat_min
disp(strcat('Annahme: ', num2str(eta_max), 'über den gesamten Leistungsbereich'));

e_pot = V * rho * g * hbr_max
e_pot_gwh = e_pot / 10^9 / 3600

n = e_out_gwh / e_pot_gwh / eta_max

t = e_out_gwh * 10^9 / p_gen
