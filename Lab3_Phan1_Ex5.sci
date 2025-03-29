function [yn, yorigin] = multiply(x1n, x1origin, x2n, x2origin)
    clf;

    // Xác định phạm vi thời gian của hai tín hiệu
    len1 = length(x1n);
    len2 = length(x2n);

    n1 = (0:len1-1) - (x1origin - 1);
    n2 = (0:len2-1) - (x2origin - 1);

    // Xác định trục thời gian chung
    n_min = min(min(n1), min(n2));
    n_max = max(max(n1), max(n2));
    n_common = n_min:n_max;

    // Tạo các tín hiệu mở rộng trên khoảng thời gian chung
    x1_extended = zeros(1, length(n_common));
    x2_extended = zeros(1, length(n_common));

    // Chèn dữ liệu vào đúng vị trí trong mảng mở rộng
    x1_extended(find(n_common == min(n1)):find(n_common == max(n1))) = x1n;
    x2_extended(find(n_common == min(n2)):find(n_common == max(n2))) = x2n;

    // Nhân hai tín hiệu
    yn = x1_extended .* x2_extended;

    // Xác định yorigin theo phong cách delay()
    yorigin = x1origin - (x1origin - 1 - n_min);

    // Hiển thị ba đồ thị riêng biệt trong cùng cửa sổ
    subplot(3,1,1);
    plot2d3(n_common, x1_extended, style=5);
    xlabel("n");
    ylabel("Amplitude");
    title("Signal x1(n)");
    xgrid();

    subplot(3,1,2);
    plot2d3(n_common, x2_extended, style=2);
    xlabel("n");
    ylabel("Amplitude");
    title("Signal x2(n)");
    xgrid();

    subplot(3,1,3);
    plot2d3(n_common, yn, style=3);
    xlabel("n");
    ylabel("Amplitude");
    title("Multiplied Signal y(n) = x1(n) * x2(n)");
    xgrid();
endfunction

// Chạy thử nghiệm
[yn, yorigin] = multiply([0, 1, 3, -2], 1, [1, 1, 2, 3], 2);
