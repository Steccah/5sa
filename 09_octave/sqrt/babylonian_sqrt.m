function x = babylonian_sqrt(num, x0, max_iterations)
    % Babylonian method for finding square root
    % Inputs:
    %   num: the number to find the square root of
    %   x0: initial guess
    %   max_iterations: maximum number of iterations
    % Output:
    %   x: approximate square root of num

    x = x0;
    iterations = 0;
    while iterations < max_iterations
        x = 0.5 * (x + num / x);
        iterations = iterations + 1;
    end
end
