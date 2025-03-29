function [yn, yorigin] = convolution(xn, xorigin, hn, horigin)
    clf;

    // Xác định độ dài tín hiệu
    len_x = length(xn);
    len_h = length(hn);

    // Tính toán phạm vi thời gian của kết quả tích chập
    len_y = len_x + len_h - 1;
    yorigin = xorigin + horigin - 1; // Gốc của y(n)

    // Thực hiện phép tích chập
    yn = conv(xn, hn);

    // Xác định trục thời gian của tín hiệu
    n_y = (0:len_y-1) - (yorigin - 1);

    // Hiển thị đồ thị các tín hiệu
    subplot(3,1,1);
    plot2d3((0:len_x-1) - (xorigin - 1), xn, style=5);
    xlabel("n");
    ylabel("Amplitude");
    title("Signal x(n)");
    xgrid();

    subplot(3,1,2);
    plot2d3((0:len_h-1) - (horigin - 1), hn, style=2);
    xlabel("n");
    ylabel("Amplitude");
    title("Impulse Response h(n)");
    xgrid();

    subplot(3,1,3);
    plot2d3(n_y, yn, style=3);
    xlabel("n");
    ylabel("Amplitude");
    title("Convolution Signal y(n) = x(n) * h(n)");
    xgrid();
endfunction

// Chạy thử nghiệm với một ví dụ
[yn, yorigin] = convolution([0, 1, 3, -2], 1, [1, 1, 2, 3], 2);
