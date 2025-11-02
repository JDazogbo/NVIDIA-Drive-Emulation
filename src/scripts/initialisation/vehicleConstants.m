%% ========================================================================
%  VEHICLE PARAMETERS FILE
%
%  Description:
%  This script defines the key physical and aerodynamic parameters used for
%  the longitudinal vehicle dynamics model. The parameters are stored in
%  the structured variable `vehicleParams` for modular access throughout
%  the simulation and control design workflow.
%
%  Usage:
%     Run this script before executing any state-space generation or
%     control algorithm scripts.
%
%  ========================================================================

% ---------------------- VEHICLE PHYSICAL PROPERTIES ----------------------
vehicleParams.mass = 1500;             % [kg]  Total vehicle mass
vehicleParams.wheelRadius = 0.3;       % [m]   Effective tire rolling radius
vehicleParams.g = 9.81;                % [m/s^2] Gravitational acceleration
vehicleParams.roadSlope = 0;           % [rad] Road incline angle (γ)

% ---------------------- AERODYNAMIC PROPERTIES ---------------------------
vehicleParams.dragCoeff = 0.32;        % [-]   Aerodynamic drag coefficient (Cd)
vehicleParams.frontalArea = 2.2;       % [m^2] Frontal cross-sectional area (Af)
vehicleParams.airDensity = 1.225;      % [kg/m^3] Air density at sea level
vehicleParams.windSpeed = 0;           % [m/s] Longitudinal wind speed (wx)

% ---------------------- NOMINAL CONDITIONS -------------------------------
vehicleParams.nominalVelocity = 20;    % [m/s] Linearization velocity point

% ========================================================================
%  End of vehicleParams.m
%  ========================================================================
