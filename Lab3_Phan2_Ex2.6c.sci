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

// Compute y(n) = x(n) - x(n-1)
y = zeros(x); 
for i = 1:length(n)
    if i > 1 then
        y(i) = x(i) - x(i-1);
    else
        y(i) = x(i); // Biên trái: x(-6) = 0
    end
end

// Plot y(n)
subplot(3,2,2);
plot2d3(n, y);
title('Signal y(n) = x(n)- x(n-1)');
xlabel('n');
ylabel('y(n)');

// 3. Compute and plot y2(n) = x(n-2) - x(n-3)
n2 = [-6:6];
y2 = [0 0 0 0 0 0 0 0 1 0 0 0 -1];

// Plot y2(n)
subplot(3,2,3);
plot2d3(n2, y2);
title('Signal y_2(n) = x(n-2) - x(n-3)');
xlabel('n');
ylabel('y_2(n)');

// 4. Compute and plot x2(n) = x(n-2)
subplot(3,2,4);
plot2d3(n+2, x);
title('Signal x_2(n) = x(n-2)');
xlabel('n');
ylabel('x_2(n)');

// 5. Compute and plot y2(n) = x(n-2) - x(n-3)

subplot(3,2,5);
plot2d3(n2, y2);
title('Signal y(n-2) = x(n-2) - x(n-3)');
xlabel('n');
ylabel('y(n-2)');

grid();

