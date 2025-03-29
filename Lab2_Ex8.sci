
x = [0,0,0 ,1, -2, 3, 6,0,0,0,0]; 
n = -5 : 5;

y1 = flipdim(x, 2);
y2 = [x(4:11), zeros(1, 3)];
x3 = [zeros(1, 2), y1(1:9)];
y3 = 2 * x3;

// Vẽ x(n)
subplot(4, 1, 1);
plot2d3(n, x, style = 2);
title("x(n)");
xlabel('n');
ylabel("x(n)");

// Vẽ y1(n)
subplot(4, 1, 2);
plot2d3(n, y1, style = 2);
title("y1(n) = x(-n)");
xlabel('n');
ylabel("y1(n)");

// Vẽ y2(n)
subplot(4, 1, 3);
plot2d3(n, y2, style = 2);
title("y2(n)= x(n+3)");
xlabel('n');
ylabel("y2(n)");

// Vẽ y3(n)
subplot(4, 1, 4);
plot2d3(n, y3, style = 2);
title("y3(n)= 2x(-n-2)");
xlabel('n');
ylabel("y3(n)");
