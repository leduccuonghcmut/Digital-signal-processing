funcprot(0); 

// Circular convolution using FFT
function yc = circconv_fft(a, b)
    n = length(a);
    A = fft(a, -1); 
    B = fft(b, -1);
    C = A .* B;
    yc = fft(C, 1); 
endfunction

// Circular convolution computed directly
function yc = circconv_direct(a, b)
    n = length(a);
    yc = zeros(1, n);
    for i = 1:n
        for j = 1:n
            idx = modulo(i - j + n, n) + 1;
            yc(i) = yc(i) + a(j) * b(idx);
        end
    end
endfunction

// === Example test ===
a = [2, 8, 5, 3];
b = [5, 3, 2, 7];

y_fft = circconv_fft(a, b);
y_direct = circconv_direct(a, b);

disp("Result using FFT method:");
disp(y_fft);

disp("Result using Direct computation:");
disp(y_direct);
