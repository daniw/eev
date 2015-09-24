base = 1;
peak = 2;
%       base    peak
s = [   4       4.7;    % 18.9.2015
        4.54    4.88    % 24.9.2015
];

figure(1);
plot(s);
title('Swissix');
xlabel('Zeit');
ylabel('Preis [Rp/kWh]');
legend('base', 'peak');
print -dpdf 'swissix'
