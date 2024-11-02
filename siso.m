% Define the transfer function of the open-loop system
numerator = [-2000, 0, 196200];          % Coefficients of the numerator
denominator = [-80050, 0, -2905, 0, 766161];   % Coefficients of the denominator
sys = tf(numerator, denominator);
sisotool (sys)