clc;
clear;
close all;

g = 9.81;
rho = 1000;

h_ow = 503.50;
h_uw = 497.07;

q = 16;

h_v_austritt = 0.12;
h_v_rechen = 0.01;
h_v = 0.12;
eta_gen = 0.94;
eta_turb = 0.86;
eta_trafo = 0.98;

hbr = h_ow - h_uw;
h_net = hbr - h_v

p_nat = q * rho * g * hbr;
p_nat_kw = p_nat / 10^3

p_disp = q * rho * g * h_net;
p_disp_kw = p_disp / 10^3

p_turb = p_disp * eta_turb;
p_turb_kw = p_turb / 10^3

p_gen = p_turb * eta_gen;
p_gen_kw = p_gen / 10^3

p_el = p_gen * eta_trafo;
p_el_kw = p_el / 10^3


data = [
% P_gen [kW]    h_br [m]    q [m^3/s]
383             6.51        7.50;
434             6.43        9.50;
432             6.50        7.70;
450             6.48        8.00;
380             6.46        8.90;
488             6.43        9.10;
651             6.30        12.70;
873             5.70        22.00;
933             5.99        22.00;
812             6.18        16.60;
522             6.44        9.40;
609             6.36        11.40;
773             6.24        15.10;
303             6.60        5.80;
384             6.52        7.30;
349             6.56        6.60;
173             6.74        3.30;
146             6.77        3.00;
183             6.72        3.60;
122             6.80        2.60;
216             6.76        4.00;
947             6.14        19.60;
560             6.45        10.20;
292             6.66        5.30;
254             6.70        4.60;
268             6.74        4.90;
861             6.30        16.90;
640             6.44        11.80;
398             6.61        7.30;
255             6.75        4.70;
236             6.74        4.80;
312             6.70        5.60;
477             6.54        8.50;
824             6.28        16.00;
200             6.78        4.00;
206             6.77        4.20;
214             6.79        4.00;
180             6.82        3.50;
188             6.84        3.70;
716             6.40        13.80;
284             6.73        5.60;
286             6.75        5.20;
253             6.78        4.60;
218             6.82        4.00;
191             6.84        3.70;
887             6.26        18.00;
1003            6.10        22.00;
633             6.47        12.10;
985             6.07        22.00;
843             6.29        17.00;
];

p_mess = data(:,1) .* 1000;
p_calc = data(:,3) .* rho .* g .* (data(:,2) - h_v) .* eta_turb .* eta_gen .* eta_trafo;
time = length(data);
plot(1:time, p_mess, 1:time, p_calc)

