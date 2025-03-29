n = -1:1;

x = [1 3 -2];

x_flipped = x($:-1:1);

x_even = (x + x_flipped) / 2;

x_odd = (x - x_flipped) / 2;

subplot(3,1,1);

title('Original Signal x(n)');

xlabel('n');

ylabel('Amplitude');

plot2d3(n, x, style = 2);

subplot(3,1,2);

title('Even Component x_e(n)');

xlabel('n');

ylabel('Amplitude');

plot2d3(n, x_even, style = 2);

subplot(3,1,3);

title('Odd Component x_o(n)');

xlabel('n');

ylabel('Amplitude');

plot2d3(n, x_odd, style = 2);
