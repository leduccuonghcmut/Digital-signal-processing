
omega = 0:0.01:10;
w = %i * omega;
num = 1 ;
X =(exp(-w) +1) / (1-0.5*exp(-w))
disp(X)
amplitude = abs(X);

phase = atan(imag(X), real(X));

// Plot the amplitude spectrum
clf();
subplot(2, 1, 1)
plot(omega, amplitude)

// Label the plot
xlabel('Frequency (red/s)');
ylabel('Amplitude');
title('Amplitude Spectrum');

// Plot the phase spectrum
subplot(2, 1, 2)
plot(omega, phase)

// Label the plot
xlabel('Frequency (rad/s)');
ylabel('Phase (radians)');
title('Phase Spectrum');
