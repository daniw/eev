clc;
clear;
close all;

%% Parameter
g = 9.81;
rho = 1000;

p_inst = 73.2 * 10^6;

e_y_gwh = 136;

eta = 0.85;

V = 35 * 10^6;

A = 4.25 * 10^6;

hbr = 48.2;

%% Berechnung
e_brutto = V * rho * g * hbr;
e_brutto_mwh = e_brutto / 10^6 / 3600
e_netto = e_brutto * eta;
e_netto_mwh = e_netto / 10^6 / 3600

t = e_netto / p_inst
t_h = t / 3600

n = e_y_gwh * 1000 / e_netto_mwh

h_ben = e_y_gwh * 10^9 / p_inst
