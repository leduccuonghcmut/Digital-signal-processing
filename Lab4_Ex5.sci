// Đọc ảnh từ file
img = imread("C:\Users\Admin\Music\Cuong.jpg"); 
gray_img = rgb2gray(img);  

// Tạo figure để hiển thị nhiều ảnh
figure();

// 1. Hiển thị ảnh gốc và ảnh xám
subplot(2,3,1);
imshow(img);
title("Ảnh gốc");

subplot(2,3,2);
imshow(gray_img);
title("Ảnh xám");

// 2. Tính histogram của ảnh xám
[count, bins] = imhist(gray_img);
subplot(2,3,3);
plot(bins, count, "r");
title("Histogram của ảnh xám");

// 3. Cân bằng histogram (tự triển khai)
num_pixels = size(gray_img, "r") * size(gray_img, "c"); // Tổng số pixel
pdf = count / num_pixels;   // Hàm mật độ xác suất (PDF)
cdf = cumsum(pdf);          // Hàm phân phối tích lũy (CDF)
eq_map = round(cdf * 255);  // Ánh xạ lại giá trị pixel

// Áp dụng ánh xạ giá trị mới cho ảnh
eq_img = gray_img; 
for i = 0:255
    eq_img(find(gray_img == i)) = eq_map(i+1);
end

subplot(2,3,4);
imshow(eq_img);
title("Ảnh sau cân bằng histogram");



// Lưu ảnh đã chỉnh sửa
imwrite(gray_img, "GrayImage.png");
imwrite(eq_img, "EqualizedImage.png");
imwrite(blur_img, "BlurredImage.png");
