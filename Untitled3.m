numerator = [-616940 -1.07e6 5.86e7 1.02e8 1.86e8 3.31e8 5.16e6];          % Coefficients of the numerator
denominator = [80050 777814 3.78e6 1.30e7 3.05e7 6.97e6 -3.50e7 -1.24e8 -2.98e8];   % Coefficients of the denominator
sys = tf(numerator, denominator);
sisotool (sys)