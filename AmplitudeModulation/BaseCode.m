% Parameter dasar
Ac = 1;            % Amplitudo sinyal pembawa (Carrier amplitude)
Am = 0.5;          % Amplitudo sinyal informasi (Message amplitude)
fc = 1000;         % Frekuensi sinyal pembawa (Carrier frequency) dalam Hz
fm = 50;           % Frekuensi sinyal informasi (Message frequency) dalam Hz

% Waktu sampling
Fs = 10000;        % Frekuensi sampling (Sampling frequency) dalam Hz
t = 0:1/Fs:0.05;   % Waktu dari 0 hingga 0.05 detik

% Sinyal informasi (Message signal)
m_t = Am * cos(2*pi*fm*t);

% Sinyal pembawa (Carrier signal)
c_t = Ac * cos(2*pi*fc*t);

% Sinyal AM tanpa indeks modulasi
s_t = (Ac + m_t) .* cos(2*pi*fc*t);

% Plot sinyal informasi, sinyal pembawa, dan sinyal AM
figure;

% Plot sinyal informasi
subplot(3,1,1);
plot(t, m_t);
title('Sinyal Informasi (m(t))');
xlabel('Waktu (detik)');
ylabel('Amplitudo');
grid on;

% Plot sinyal pembawa
subplot(3,1,2);
plot(t, c_t);
title('Sinyal Pembawa (c(t))');
xlabel('Waktu (detik)');
ylabel('Amplitudo');
grid on;

% Plot sinyal yang telah dimodulasi (AM)
subplot(3,1,3);
plot(t, s_t);
title('Sinyal AM tanpa Indeks Modulasi');
xlabel('Waktu (detik)');
ylabel('Amplitudo');
grid on;
