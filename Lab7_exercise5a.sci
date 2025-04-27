// Tạo vector n từ 0 đến 19
n = 0:19;

// Tính tín hiệu x(n) = sin(pi*n/5)
x = sin(%pi * n / 5);

// Tạo biểu đồ
clf; // Xóa biểu đồ trước
plot2d3(n, x, style=2); // Vẽ các điểm rời rạc (dấu chấm)
plot(n, x, 'b-'); // Nối các điểm bằng đường màu xanh để dễ hình dung
title('Tín hiệu x(n) = sin(πn/5)'); // Tiêu đề
xlabel('n'); // Nhãn trục x
ylabel('x(n)'); // Nhãn trục y
xgrid; // Thêm lưới
