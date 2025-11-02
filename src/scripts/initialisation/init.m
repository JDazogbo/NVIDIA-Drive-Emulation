% Generate the State Space Model used by MPC
Ts = 0.01;
stateSpace = generateStateSpace(Ts, vehicleParams);