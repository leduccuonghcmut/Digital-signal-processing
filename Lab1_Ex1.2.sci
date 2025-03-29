t = 0:0.0001:0.1; 
xa = 3 * sin(100 * %pi * t); 

Fs = 300; 
Ts = 1/Fs; 
n = 0:30; 
x = 3 * sin(100 * %pi * n * Ts);


Delta = 0.1; 
xq = Delta * floor(x / Delta); 


subplot(3,1,1);
plot(t, xa);
title('Analog Signal x_a(t)');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,2);
plot(n, x, 'ro-');
title('Discrete-Time Signal x(n)');
xlabel('Sample n');
ylabel('Amplitude');

subplot(3,1,3);
plot(n, xq, 'go-');
title('Quantized Signal x_q(n)');
xlabel('Sample n');
ylabel('Amplitude');
