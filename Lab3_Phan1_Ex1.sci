function [yn, yorigin] = delay(xn, xorigin, k)
    clf();
    yn = xn;
    yorigin = xorigin - k;

    // Create time indices for the original and delayed signals
    n_original = (0:length(xn)-1) - (xorigin - 1);
    n_delayed = n_original + k;

    // Plot the original signal
    plot2d3(n_original, xn, style=5);
    xgrid();
    plot2d3(n_delayed, yn, style=2);

    // Add labels and legend
    xlabel("n");
    ylabel("Amplitude");
    legend(["Original signal x(n)", "Delay signal y(n), k = " + string(k)]);
    title("Original and Delay Signals");
endfunction

//[yn, yorigin] = delay([1,-2, 3, 6],3,1);
