function x = newton_sqrt(num, x0, max_iterations)
    % Newton's method for finding square root
    % Inputs:
    %   num: the number to find the square root of
    %   x0: initial guess
    %   max_iterations: maximum number of iterations
    % Output:
    %   x: approximate square root of num

    x = 0.002;
    iterations = 0;
    while iterations < max_iterations
        x = 0.5 * x * (3 - num * x * x);
        iterations = iterations + 1;
    end
    x = 1/x
end
