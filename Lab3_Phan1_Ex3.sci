function [yn, yorigin] = fold(xn, xorigin)
    clf;
    yn = xn($:-1:1);             
    yorigin = -xorigin + 1;      

    
    n_original = (0:length(xn)-1) - (xorigin - 1);

    
    plot2d3(n_original, xn, style=5);
    xgrid();
    plot2d3(n_original, yn, style=2);

    xlabel("n");
    ylabel("Amplitude");
    legend(["Original signal x(n)", "Folded signal x(-n)"]);
    title("Original and Folded Signals");
endfunction

[yn, yorigin] = fold([1, -2, 3, 4 ],2);
