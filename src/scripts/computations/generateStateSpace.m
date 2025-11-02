function stateSpace = generateStateSpace(Ts, vehicleParams)
    % generateStateSpace
    % Creates a discrete-time state-space model for 1-DOF longitudinal motion.
    %
    %   x_dot = (1/m)*( (1/r_w)*T_R - 0.5*rho*C_d*A_f*(v - w_x)*|v - w_x| - m*g*sin(gamma) )
    %   Linearized about nominal velocity.

    % --- Linearized Drag Derivative ---
    dFd_dv = -vehicleParams.airDensity * vehicleParams.dragCoeff * vehicleParams.frontalArea * ...
              abs(vehicleParams.nominalVelocity - vehicleParams.windSpeed) / vehicleParams.mass;

    % --- Continuous-Time System Matrices ---
    A = dFd_dv;
    B = 1 / (vehicleParams.mass * vehicleParams.wheelRadius);
    C = 1;
    D = 0;

    % --- Continuous-Time System ---
    sys_c = ss(A, B, C, D);

    % --- Discretization ---
    sys_d = c2d(sys_c, Ts, 'zoh');

    % --- Export to Base Workspace ---
    stateSpace.A = sys_d.A;
    stateSpace.B = sys_d.B;
    stateSpace.C = sys_d.C;
    stateSpace.D = sys_d.D;

end
