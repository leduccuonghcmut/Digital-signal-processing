function [yn, yorigin] = advance(xn, xorigin, k)
    clf;
    yn = xn;
    yorigin = xorigin + k;

    // Create time indices for the original and delayed signals
    n_original = (0:length(xn)-1) - (xorigin - 1);
    n_advance = n_original - k;

    // Plot the original signal
    plot2d3(n_original, xn, style=5);
    xgrid();
    plot2d3(n_advance, yn, style=2);

    // Add labels and legend
    xlabel("n");
    ylabel("Amplitude");
    legend(["Original signal x(n)", "Advanced signal y(n), k = " + string(k)]);
    title("Original and Advanced Signals");
endfunction

[yn, yorigin] = advance([1,-2, 3, 6],3,5);
