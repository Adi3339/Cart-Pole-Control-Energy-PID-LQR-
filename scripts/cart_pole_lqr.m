m = 1; % in kg
M = 1;
l = 3; % in meters
g = 9.81; % m/s^2
x_init = 5;  % initial position value in m (limits- +/-15m)
theta_init = deg2rad(20); % initial angle value in deg


% K= [-50  -40  20  4] optimal.1 (more steady state error)
% K= [-90  -90  35  4  -2] optimal.2 (less steady state)
% (integration as state as well)
% K = [k1 k2 k3 k4 k5]
% K = [-60  -85  34  4  0.3] best so far 
K = [-60  -85  34  4  0.3];
linear_limit = 25; % 25 (deg) transition angle from energy to PID

k_energy = 20; 
% if x is <=2m then k_p = -20 and k_d = -16.3
% re-run this code everytime you change x_init

if abs(x_init) <= 2
    k_p = -20;
    k_d = -16.3;
else
    k_p = -10;
    k_d = -6.3;
end
   
tau = 0.006;   % low pass filter 
% final values
% K = [-60 -85 34 4 0.3];
% k_energy = 20;
% k_energy_p = -10;
% k_energy_d = -6.3;
