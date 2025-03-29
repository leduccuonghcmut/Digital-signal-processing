
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

// Compute y(n) = n * x(n)
y = n .* x;

// Plot y(n)
subplot(3,2,2);
plot2d3(n, y);
title('Signal y(n) = nx(n)');
xlabel('n');
ylabel('y(n)');

// Compute y(n) = n * x(n-2)
y = zeros(x);

for i = 1:length(n)
    if i > 2 then
        y(i) = n(i) * x(i-2); 
    else
        y(i) = 0; // Biên trái
    end
end
subplot(3,2,3);
plot2d3(n, y);
title('Signal y_2(n) = nx(n-2)');
xlabel('n');
ylabel('y_2(n)');

// 4. Compute and plot x2(n) = x(n-2)
subplot(3,2,4);
plot2d3(n+2, x);
title('Signal x_2(n) = x(n-2)');
xlabel('n');
ylabel('x_2(n)');

// 5. Compute and plot y(n-2) = (n-2)x(n-2)
y = zeros(x);

for i = 1:length(n)
    if i > 2 then
        y(i) = (n(i) - 2) * x(i-2); 
    else
        y(i) = 0; // Biên trái
    end
end
subplot(3,2,5);
plot2d3(n, y);
title('Signal y(n-2) = (n-2)x(n-2)');
xlabel('n');
ylabel('y(n-2)');

grid();

