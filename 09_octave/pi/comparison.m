clear
% Parameters
iterations = 20; % Iterations

% Exact value of pi
exact_pi = 3.14159265358979;

% Relative error at each iteration
relative_error_archimedes = zeros(1, iterations);
relative_error_krebs = zeros(1, iterations);
x_archimedes = zeros(1, iterations);
x_krebs = zeros(1, iterations);
for i = 1:iterations
    relative_error_archimedes(i) = abs(archimedes_pi(i) - exact_pi) / exact_pi;
    x_archimedes(i) = archimedes_pi(i);
end
for i = 1:iterations
    relative_error_krebs(i) = abs(krebs_pi(i) - exact_pi) / exact_pi;
    x_krebs(i) = krebs_pi(i);
end

% Plot results
figure;
subplot(2, 1, 1);
plot(1:iterations, relative_error_archimedes, '-o', 'LineWidth', 2);
xlabel('Number of Sides');
ylabel('Relative Error');
title('Relative Error of Archimedes Method');
grid on;

subplot(2, 1, 2);
semilogy(1:iterations, relative_error_krebs, '-o', 'LineWidth', 2);
xlabel('Iterations');
ylabel('Relative Error');
title('Relative Error of Krebs Algorithm');
grid on;

%Plot 2
figure;
semilogy(1:iterations, relative_error_archimedes, '-o', 'LineWidth', 2, 'DisplayName', 'Archimedes Method');
hold on;
semilogy(1:iterations, relative_error_krebs, '-o', 'LineWidth', 2, 'DisplayName', 'Krebs Algorithm');
xlabel('Number of Sides / Iterations');
ylabel('Relative Error');
title('Relative Error Comparison');
legend('Location', 'best');
grid on;
hold off;


% results
figure;
plot(1:iterations, x_archimedes, '-o', 'LineWidth', 2, 'DisplayName', 'Archimedes Method');
hold on;
plot(1:iterations, x_krebs, '-o', 'LineWidth', 2, 'DisplayName', 'Krebs Algorithm');
xlabel('Number of Sides / Iterations');
ylabel('Approximation of \pi');
title('Approximation of \pi Comparison');
legend('Location', 'best');
grid on;
hold off;

