function y = linconv_fft(x, h)
    // x, h: hai dãy tín hiệu vào
    // y: kết quả tích chập tuyến tính

    // Độ dài cần zero-padding: N = length(x) + length(h) - 1
    N = length(x) + length(h) - 1;
    
    // Zero-padding x và h đến độ dài N
    x_pad = [x, zeros(1, N - length(x))];
    h_pad = [h, zeros(1, N - length(h))];
    
    // DFT (fft) của x_pad và h_pad
    X = fft(x_pad, -1);
    H = fft(h_pad, -1);
    
    // Nhân từng điểm trong miền tần số
    Y = X .* H;
    
    // IDFT (ifft) để quay lại miền thời gian
    y = real(fft(Y, 1));
endfunction



// Tín hiệu mẫu
x = [1, 2, 3];
h = [4, 5];

// Tích chập dùng hàm mình viết
y_fft = linconv_fft(x, h);

// Tích chập dùng hàm conv có sẵn
y_conv = conv(x, h);

// In ra để so sánh
disp("Kết quả dùng FFT:", y_fft);
disp("Kết quả dùng conv:", y_conv);
