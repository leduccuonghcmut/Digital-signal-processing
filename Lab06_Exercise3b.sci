// 3b
// Define the sequence x2[n] = δ(n) + δ(n-1) + δ(n-2) + δ(n-3)
n = 0:10; // Define the range of n
x2 = [1, 1, 1, 1, zeros(1, 7)]; // Compute the signal x2[n]

// Compute the DFT of the sequence
X2 = fft(x2);

// Calculate the amplitude spectrum
amplitude2 = abs(X2);

// Calculate the phase spectrum
phase2 = atan(imag(X2), real(X2));

// Plot the amplitude spectrum
clf();
subplot(2, 1, 1)
plot(amplitude2)

// Label the plot
xlabel('Frequency (k)');
ylabel('Amplitude');
title('Amplitude Spectrum');

// Plot the phase spectrum
subplot(2, 1, 2)
plot(phase2)

// Label the plot
xlabel('Frequency (k)');
ylabel('Phase (radians)');
title('Phase Spectrum');

