base = 1;
peak = 2;
%       base    peak    day     date
s = [   4       4.7     1   ;   % 18.09.2015
        4.54    4.88    7   ;   % 24.09.2015
        4.66    5.1     8   ;   % 25.09.2015
        5.3     6.0     21  ;   % 08.10.2015
        5.1     5.8     22  ;   % 09.10.2015
        5.8     6.6     29  ;   % 16.10.2015
        5.3     5.9     43  ;   % 30.10.2015
        5.0     5.36    50  ;   % 06.11.2015
        5.1     5.4     57  ;   % 13.11.2015
        6.0     6.9     71  ;   % 27.11.2015
        6.28    7.1     85  ;   % 11.12.2015
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
