clear

% Parameters
num = 64; % Number to find square root of
x0 = 1; % Initial guess
max_iterations = 5; % Maximum number of iterations

% Perform Babylonian method
x_babylonian = babylonian_sqrt(num, x0, max_iterations);

% Perform Newton's method
x_newton = newton_sqrt(num, x0, max_iterations);

% Plot convergence of both methods
iterations = 1:max_iterations;
error_babylonian = zeros(1, max_iterations);
error_newton = zeros(1, max_iterations);
for i = 1:max_iterations
    error_babylonian(i) = abs(sqrt(num) - babylonian_sqrt(num, x0, i));
    error_newton(i) = abs(newton_sqrt(num, x0, i));
end

figure;
semilogy(iterations, error_babylonian, 'b-', 'LineWidth', 2);
hold on;
semilogy(iterations, error_newton, 'r-', 'LineWidth', 2);
xlabel('Iterations');
ylabel('Error');
title('Convergence of Babylonian and Newton Methods for Square Root');
legend('Babylonian Method', 'Newton Method');
grid on;
hold off;
