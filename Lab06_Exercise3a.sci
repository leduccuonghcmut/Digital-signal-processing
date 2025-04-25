//
// draw the amplitude spectrum and phase spectrum of the following signals
//3a
// Define the time vector
n = 0:50;
//
//// Create the signal x(n)
x = 0.1 .^n .* (n>=0);
//
X = fft(x);
//
amplitude = abs(X);
//
phase = atan(imag(X), real(X));
//
//// Plot the amplitude spectrum
clf();
subplot(2, 1, 1)
plot(amplitude)
//
//// Label the plot
xlabel('Frequency (k)');
ylabel('Amplitude');
title('Amplitude Spectrum');
//
//// Plot the phase spectrum
subplot(2, 1, 2)
plot(phase)
//
//// Label the plot
xlabel('Frequency (k)');
ylabel('Phase (radians)');
title('Phase Spectrum');
