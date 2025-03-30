function [yn, yorigin] = convolution_fs (xn, xorigin, hn, horigin)
    N = length(xn);
    M = length(hn);
    yn = zeros(1, N);
    
   for n = 1:N
        for k = 1:M
            if k<= n
            yn(n) = yn(n) + hn(n-k+1) * xn(k);
             end
            if k > n
                yn(n) = yn(n) + hn(N + n -k +1) * xn(k);
            end
        end
    end
    yorigin = xorigin    
endfunction

// function calculate convolution using matrix method
function [yn, yorigin] = convolution_Matrix(xn, xorigin, hn, horigin)
    // Create the convolution matrix
    N = length(xn);
    M = length(hn);
    H = zeros(N+M-1, N);
    // Create the circular convolution matrix
    H = zeros(N, N);
    for i = 1:M
        H = H + hn(i) * circshift(eye(N, N), i-1);
    end
    // Compute the convolution
    yn = H * xn.';
    yn = yn';
    yorigin = xorigin  
endfunction

// Define the signals
xn = [1 2 -3 2 1]
nx = [0 1 2 3 4]
hn = [1 0 -1 -1 1]
xorigin = 0;
horigin = 0;


[yn1, yorigin1] = convolution_fs(xn, xorigin, hn, horigin)
disp("using folding & shifting: yn = xn*hn = ", yn1)
disp("yorigin = ", yorigin1)

[yn2, yorigin2] = convolution_Matrix(xn, xorigin, hn, horigin)
disp("Using matrix method: yn = xn*hn = ", yn2)
disp("yorigin = ", yorigin2)
//
energyXn = xn .^ 2;
energyYn = yn1 .^ 2;

clf
subplot(2,2,1)
xlabel("n")
ylabel("xn")
title("xn plot")
plot2d3(nx, xn, color("blue"))

ny = zeros(1, length(yn1))
for i=1:length(yn1)
    ny(i) = i-yorigin1-1
end

subplot(2,2,2)
xlabel("n")
ylabel("yn")
title("ýn plot")
plot2d3(ny, yn1, color("blue"))

subplot(2,2,3)
xlabel("n")
ylabel("Energy")
title("Energy xn")
plot2d3(nx, energyXn, color("blue"))

subplot(2,2,4)
xlabel("n")
ylabel("Energy")
title("Energy yn")
plot2d3(ny, energyYn, color("blue"))

