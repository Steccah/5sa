function x = newton_sqrt(num, x0, max_iterations)
    yold = x0;
    for niter = 1:max_iterations
        ynew = 1.5*yold - num*yold^3/2;
        yold = ynew;
    end
    x = 1/ynew;
end
