// Define the signal x(n)
clf;
n = -5:5;
x = [0 0 0 0 0 1 1 1 1 0 0];

// Plot x(n)
subplot(3,2,1);
plot2d3(n, x);
title('Signal x(n)');
xlabel('n');
ylabel('x(n)');

// Compute y(n) = x(n^2)
y = zeros(x); 
for i = 1:length(n)
    idx = n(i)^2 + 6;  // Dịch chỉ số về đúng vị trí trong mảng x
    if idx >= 1 & idx <= length(x) then
        y(i) = x(idx);
    else
        y(i) = 0;
    end
end

// Plot y(n)
subplot(3,2,2);
plot2d3(n, y);
title('Signal y(n) = T[x(n)] = x(n^2)');
xlabel('n');
ylabel('y(n)');


// 3. Compute and plot y2(n) = x((n-2)^2)
n_shifted = n - 2;
y2 = zeros(x);

for i = 1:length(n)
    idx = (n_shifted(i))^2 + 6;  // Dịch index về dương
    if idx >= 1 & idx <= length(x) then
        y2(i) = x(idx);
    else
        y2(i) = 0;
    end
end

// Plot y2(n)
subplot(3,2,3);
plot2d3(n, y2);
title('Signal y(n-2) = x((n-2)^2)');
xlabel('n');
ylabel('y(n-2))');


// 4. Compute and plot x2(n) = x(n-2)
// Plot x2(n)
subplot(3,2,4);
plot2d3(n+2, x);
title('Signal x_2(n) = x(n-2)');
xlabel('n');
ylabel('x_2(n)');



// 5. Compute and plot y2(n) = x(n^2 - 2)
y2 = zeros(1, length(n));  

for i = 1:length(n)
    idx = n(i)^2 - 2 + 6;  // Dịch index về dương
    if idx >= 1 & idx <= length(x) then
        y2(i) = x(idx);
    else
        y2(i) = 0;
    end
end

// Plot y2(n)
subplot(3,2,5);
plot2d3(n, y2);
title('Signal y_2(n) = x(n^2 - 2)');
xlabel('n');
ylabel('y_2(n)');

grid();


