n1 = 0:3;

x1 = [0 1 3 -2];

subplot(3,1,1);

title("x_1(n)");

xlabel("n");

ylabel("Amplitude");

plot2d3(n1, x1, style = 2);

n2 = -1:2;

x2 = [0 1 2 3];

subplot(3,1,2);

title("x_2(n)");

xlabel("n");

ylabel("Amplitude");

plot2d3(n2, x2, style = 2);

n3 = -1:3;

y = [0 0 2 9 0];

subplot(3,1,3);

xlabel("n");

ylabel("Amplitude");

title("y(n) = x_1(n).x_2(n)");

plot2d3(n3, y, style = 2);
