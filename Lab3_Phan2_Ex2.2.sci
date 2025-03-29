clc;
clear;
clf;

// Định nghĩa trục n
n = -4:6;  // Dải giá trị của n
x = zeros(1, length(n));  // Khởi tạo x(n) bằng 0

// Định nghĩa tín hiệu x(n)
//x(n >= 0 & n <= 3) = 1;  // x(n) = 1 với n = 0, 1, 2, 3
x = [0, 0, 0, 1, 1, 1, 1, 1/2, 1/2, 0, 0];  // Giá trị của x(n)
// Vẽ tín hiệu gốc x(n)
subplot(3, 3, 1);
plot2d3(n, x, style=2);
title("Original signal x(n)");
xlabel("n");
ylabel("x(n)");
xgrid;

// (a) x(n-2): Dịch phải 2 đơn vị
n_a = n + 2;
x_a = x;

subplot(3, 3, 2);
plot2d3(n_a, x_a, style=2);
title("x(n-2)");
xlabel("n");
ylabel("x(n-2)");
xgrid;

// (b) x(4-n): Gập và dịch
n_b = 4 - n;  // Biến đổi n thành 4-n
x_b = zeros(1, length(n));

for i = 1:length(n)
    idx = find(n == n_b(i));  // Tìm phần tử phù hợp sau biến đổi
    if ~isempty(idx)
        x_b(i) = x(idx);
    end
end

subplot(3, 3, 3);
plot2d3(n, x_b, style=2);
title("x(4-n)");
xlabel("n");
ylabel("x(4-n)");
xgrid;

// (c) x(n+2): Dịch trái 2 đơn vị
n_c = n - 2;
x_c = x;

subplot(3, 3, 4);
plot2d3(n_c, x_c, style=2);
title("x(n+2)");
xlabel("n");
ylabel("x(n+2)");
xgrid;

// (d) x(n)u(2-n): Nhân với hàm bước u(2-n)
u = (n <= 2);  // Hàm bước u(2-n)
x_d = x .* u;

subplot(3, 3, 5);
plot2d3(n, x_d, style=2);
title("x(n)u(2-n)");
xlabel("n");
ylabel("x(n)u(2-n)");
xgrid;

// (e) x(n-1)δ(n-3): Nhân với hàm delta δ(n-3)
delta = (n == 3);  // Hàm delta δ(n-3)
x_e = [0, x(1:$-1)] .* delta;  // Dịch x(n) sang phải 1 đơn vị

subplot(3, 3, 6);
plot2d3(n, x_e, style=2);
title("x(n-1)δ(n-3)");
xlabel("n");
ylabel("x(n-1)δ(n-3)");
xgrid;

// (f) x(n^2): Thay n bằng n^2
n_f = n.^2;  // Tính n^2
x_f = zeros(1, length(n_f));
for i = 1:length(n_f)
    idx = find(n == n_f(i));  // Tìm vị trí tương ứng
    if ~isempty(idx)
        x_f(i) = x(idx);
    end
end

subplot(3, 3, 7);
plot2d3(n, x_f, style=2);
title("x(n^2)");
xlabel("n");
ylabel("x(n^2)");
xgrid;

// (g) Phần chẵn của x(n)
x_even = (x + x($:-1:1)) / 2;  // Công thức phần chẵn

subplot(3, 3, 8);
plot2d3(n, x_even, style=2);
title("Even part of x(n)");
xlabel("n");
ylabel("Even part");
xgrid;

// (h) Phần lẻ của x(n)
x_odd = zeros(1, length(n));

for i = 1:length(n)
    idx = find(n == -n(i));  // Tìm phần tử đối xứng qua n = 0
    if ~isempty(idx)
        x_odd(i) = (x(i) - x(idx)) / 2;
    end
end

subplot(3, 3, 9);
plot2d3(n, x_odd, style=2);
title("Odd part of x(n)");
xlabel("n");
ylabel("Odd part");
xgrid;
