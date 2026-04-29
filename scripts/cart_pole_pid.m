
m = 1; % in kg
l = 3; % in meters
g = 9.81; % m/s^2
critical_angle = 25; % in deg
x_init = 2; % (m) limits +/- 10m
theta_init = 10; % in deg

% PID gains for theta-
K = 10;
D = 4;
I = 0;

% PID gains for x
if abs(x_init)<= 2
    kx = -10;
    dx = -8;
else
    kx = -20;  % large gains are req to make the system quick
    dx = -18;
end
ix = -1;





