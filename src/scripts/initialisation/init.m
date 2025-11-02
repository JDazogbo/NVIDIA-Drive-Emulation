% Generate the State Space Model used by MPC
Ts = 0.01

generateStateSpace(Ts, vehicleParams);

% Model Predictive Control Parameters
assignin('base', 'Ts', 0.01); % Sampling time in seconds