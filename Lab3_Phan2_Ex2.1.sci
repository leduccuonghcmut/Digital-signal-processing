clc;
clear;
clf;

// Định nghĩa trục n
n = -7:7;  // Dải giá trị rộng hơn để thể hiện tín hiệu rõ ràng
x = zeros(1, length(n));  // Khởi tạo x(n) bằng 0

// Xác định x(n) theo đề bài
for i = 1:length(n)
    if n(i) >= -3 & n(i) <= -1 then
        x(i) = 1 + n(i) / 3;
    elseif n(i) >= 0 & n(i) <= 3 then
        x(i) = 1;
    else
        x(i) = 0;
    end
end

// Vẽ x(n)
subplot(3,2,1);
plot2d3(n, x, style = 5);  // Sử dụng plot2d3 thay vì stem
title("Original signal x(n)");
xlabel("n");
ylabel("x(n)");
xgrid;

// (b.1) Gập rồi trễ: x(-n+4)
n_folded = -n;  // Gập tín hiệu
x_folded = x($:-1:1);  // Đảo ngược mảng x
n_shifted1 = n_folded + 4;  // Dịch phải 4 đơn vị

subplot(3,2,2);
plot2d3(n_shifted1, x_folded, style = 2);  // Sử dụng plot2d3 thay vì stem
title("Fold then shift");
xlabel("n");
ylabel("x(-n+4)");
xgrid;

// (b.2) Trễ rồi gập: x(-n+4)
n_shifted2 = n - 4;  // Dịch trái 4 đơn vị trước
x_shifted = zeros(1, length(n));
for i = 1:length(n)
    idx = find(n == n_shifted2(i));  // Dịch chuyển giá trị
    if ~isempty(idx)
        x_shifted(i) = x(idx);
    end
end
x_folded2 = x_shifted($:-1:1);  // Sau đó gập

subplot(3,2,3);
plot2d3(n, x_folded2, style = 2);  // Sử dụng plot2d3 thay vì stem
title("Shift then fold");
xlabel("n");
ylabel("x(-n+4)");
xgrid;

// (c) Vẽ x(-n+4)
subplot(3,2,4);
plot2d3(n, x_folded2, style = 2);  // Sử dụng plot2d3 thay vì stem
title("Signal x(-n+4)");
xlabel("n");
ylabel("x(-n+4)");
xgrid;

// (e) Biểu diễn theo delta và step function
delta = (n == -3) * 0 + (n == -2) * (1/3) + (n == -1) * (2/3);  
step = (n >= 0 & n <= 3);  

x_delta_step = delta + step;

subplot(3,2,5);
plot2d3(n, x_delta_step, style = 2);  // Sử dụng plot2d3 thay vì stem
title("x(n) using δ(n) and u(n)");
xlabel("n");
ylabel("x(n)");
xgrid;
