clc;
clear;
close all;

g = 9.81;
rho = 1000;

h_ow = 330;
h_uw = 193.5;

q = 135;

pv_bar = 0.175;
h_v = 9.81 * pv_bar;
eta_gen = 0.95;
eta_turb = 0.99;
eta_saugrohr = 1.00;
eta_spalt = 0.97;
eta_hyd = 1 - 0.5^2

cosphi = 0.9;

hbr = h_ow - h_uw;
h_net = hbr - h_v;

p_nat = q * rho * g * hbr;
p_nat_mw = p_nat / 10^6

p_disp = q * rho * g * h_net;
p_disp_mw = p_disp / 10^6

p_turb = p_disp * eta_spalt * eta_saugrohr * eta_hyd * eta_turb;
p_turb_mw = p_turb / 10^6

p_gen = p_turb * eta_gen;
p_gen_mw = p_gen / 10^6
