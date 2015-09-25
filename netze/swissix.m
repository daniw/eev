base = 1;
peak = 2;
%       base    peak    day     date
s = [   4       4.7     1    ;  % 18.9.2015
        4.54    4.88    7    ;  % 24.9.2015
        4.66    5.1     8    ;  % 25.9.2015
];

datestr(736224 + s(:,3))

figure(1);
plot(s(:,3), s(:,1), s(:,3), s(:,2));
title('Swissix');
xlabel('Zeit');
ylabel('Preis [Rp/kWh]');
datetick();
legend('base', 'peak');
print -dpdf 'swissix'
