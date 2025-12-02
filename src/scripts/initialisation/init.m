% Generate the State Space Model used by MPC
Ts = 0.01;
stateSpace = generateStateSpace(Ts, vehicleParams);

% Link Generated C/C++ Types
Simulink.importExternalCTypes('mpcStep_types.h', 'IncludeDirs', 'scripts\computations\codegen\lib\mpcStep');