clc, clear all, close all;
% Define the transfer function of the open-loop system
numerator = [-2000, 0, 196200];          % Coefficients of the numerator
denominator = [-80050, 0, -2905, 0, 766161];   % Coefficients of the denominator
sys = tf(numerator, denominator);

% Simulate the system for a step input
t_step = 0:0.01:5;         % Time vector for simulation
u_step = ones(size(t_step)); % Step input
[y_step, t_step_sim] = lsim(sys, u_step, t_step);

% Simulate the system for a unit impulse
t_impulse = 0:0.01:5;         % Time vector for simulation
u_impulse = zeros(size(t_impulse));
u_impulse(1) = 1;              % Unit impulse at t=0
[y_impulse, t_impulse_sim] = lsim(sys, u_impulse, t_impulse);

% Analyze system characteristics
pole_locations = pole(sys);     % Pole locations
time_constants = 1./abs(pole_locations);  % Time constants

% Display characteristics
disp('Pole Locations:');
disp(pole_locations);

disp('Time Constants:');
disp(time_constants);

% Plot step response
figure;
subplot(2,1,1);
plot(t_step_sim, y_step);
title('Step Response');
xlabel('Time (seconds)');
ylabel('Output');
grid on;

% Plot impulse response
subplot(2,1,2);
plot(t_impulse_sim, y_impulse);
title('Impulse Response');
xlabel('Time (seconds)');
ylabel('Output');
grid on;
