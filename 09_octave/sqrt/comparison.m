clear

% Parameters
num = 64; % Number to find square root of
x0 = 32; % Initial guess
max_iterations = 15; % Maximum number of iterations

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
    error_newton(i) = abs(sqrt(num) - newton_sqrt(num, x0, i));
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

%plot results by iteration
x_babylonian = zeros(1, max_iterations);
x_newton = zeros(1, max_iterations);
for i = 1:max_iterations
    x_babylonian(i) = babylonian_sqrt(num, x0, i);
    x_newton(i) = newton_sqrt(num, x0, i);
end

figure;
plot(iterations, x_babylonian, 'b-', 'LineWidth', 2);
hold on;
plot(iterations, x_newton, 'r-', 'LineWidth', 2);
xlabel('Iterations');
ylabel('Approximate Square Root');
title('Approximate Square Root by Iteration');
legend('Babylonian Method', 'Newton Method');
grid on;
hold off;

