function out = mpcStep(v_ref, v_meas, stateSpace, velocity_penalty, prediction_horizon, torque_penalty)
% LMPC_STEP  One-step linear MPC with condensed QP formulation.
% Inputs:
%   roadIndex : integer in {1=dry, 2=wet, 3=snow, 4=ice}
%   v_ref     : current reference velocity [m/s] (assumed constant over horizon)
%   v_meas    : measured vehicle velocity [m/s]
%

    %===========================================================
    % 0) MPC Controller Parameter Definition
    %===========================================================

    % State space model of the vehicle dynamics
    A_matrix = stateSpace.A;
    B_matrix = stateSpace.B;

    % Simulation parameters
    state_dimension = 1;             % Number of system states (n)
    input_dimension = 1;             % Number of system inputs (m)

    % Cost function weighting matrices
    Q_state_weight = diag([velocity_penalty]);      % State penalty matrix (Q)
    Q_terminal_weight = Q_state_weight;        % Terminal state penalty (QN)
    R_input_weight = torque_penalty;     % Input penalty matrix (R)

    % Reference signal computation (set point)
    x_reference = [v_ref]; % Desired state
    u_reference = pinv(B_matrix) * (eye(state_dimension)-A_matrix) * x_reference;

    % State constraints (Fx * x <= gx)
    Fx = [1; -1];                 % State constraint matrix
    gx = [1000; 1000];    % State constraint bounds (shifted by reference)

    % Input constraints (Fu * u <= gu)
    Fu = [1; -1];                                % Input constraint matrix
    gu = [800; 800];              % Input constraint bounds (shifted by reference)
    

    %===========================================================
    % 1) Lifted prediction matrices AX, BU (for states) and Oy
    %===========================================================

    % Lifted state/input matrices
    x_initial = [v_meas];

    X_prediction = zeros(state_dimension*(prediction_horizon+1),1); 
    X_prediction(1:state_dimension,1) = x_initial;  % Predicted state trajectory

    U_prediction = zeros(input_dimension*prediction_horizon,1); % Predicted inputs

    z_ref = [repmat(x_reference, prediction_horizon+1, 1); repmat(u_reference, prediction_horizon, 1)];


    % Decision vector for optimizer (contains states & inputs)
    z_decision = [X_prediction; U_prediction];


    % Build AX (state evolution) and BU (control influence)
    A_powers = zeros(state_dimension, state_dimension, prediction_horizon+1, 'like', A_matrix);
    A_powers(:,:,1) = eye(state_dimension,'like',A_matrix);

    for k = 2:prediction_horizon+1
        A_powers(:,:,k) = A_powers(:,:,k-1) * A_matrix;
    end

    % Preallocate outputs
    AX = zeros(state_dimension*(prediction_horizon+1), state_dimension, 'like', A_matrix);
    BU = zeros(state_dimension*(prediction_horizon+1), input_dimension*prediction_horizon, 'like', B_matrix);

    % Fill AX using precomputed A^k
    for i = 1:prediction_horizon+1
        row = (i-1)*state_dimension + 1;
        AX(row:row+state_dimension-1, :) = A_powers(:,:,i);
    end

    % Fill BU using A^k and B
    for i = 1:prediction_horizon+1
        for j = 1:prediction_horizon
            row = (i-1)*state_dimension + 1;
            col = (j-1)*input_dimension + 1;

            if i > j
                % A^(i-j-1) corresponds to A_powers(:,:,i-j)
                BU(row:row+state_dimension-1, col:col+input_dimension-1) = ...
                    A_powers(:,:,i-j) * B_matrix;
            end
            % else leave zeros (already allocated as zero)
        end
    end

    % Extended weighting matrices for optimization


    QX = []; 
    RU = [];
    FX = []; gX = []; 
    FU = []; gU = [];
    
    % Preallocate with fixed sizes
    QX = zeros(state_dimension*(prediction_horizon+1), state_dimension*(prediction_horizon+1));
    RU = zeros(input_dimension*(prediction_horizon), input_dimension*(prediction_horizon));
    FX = zeros(size(Fx,1)*(prediction_horizon+1), size(Fx,2)*(prediction_horizon+1));
    gX = zeros(size(gx,1)*(prediction_horizon+1), 1);
    FU = zeros(size(Fu,1)*(prediction_horizon), size(Fu,2)*(prediction_horizon));
    gU = zeros(size(gu,1)*(prediction_horizon), 1);
    
    % Fill block diagonals for stage cost
    for i = 1:prediction_horizon-1
        % Q blocks
        idx = (i-1)*state_dimension+1 : i*state_dimension;
        QX(idx,idx) = Q_state_weight;
    
        % R blocks
        idxu = (i-1)*input_dimension+1 : i*input_dimension;
        RU(idxu,idxu) = R_input_weight;
    
        % Fx and gx
        idfx = (i-1)*size(Fx,1)+1 : i*size(Fx,1);
        idxx = (i-1)*size(Fx,2)+1 : i*size(Fx,2);
        FX(idfx, idxx) = Fx;
        gX(idfx) = gx;
    
        % Fu and gu
        idfu = (i-1)*size(Fu,1)+1 : i*size(Fu,1);
        iduu = (i-1)*size(Fu,2)+1 : i*size(Fu,2);
        FU(idfu, iduu) = Fu;
        gU(idfu) = gu;
    end
    
    % Final QN block
    idx = (prediction_horizon-1)*state_dimension+1 : prediction_horizon*state_dimension;
    QX(idx,idx) = Q_terminal_weight;
    
    % Final Fx and gx
    idfx = (prediction_horizon-1)*size(Fx,1)+1 : prediction_horizon*size(Fx,1);
    idxx = (prediction_horizon-1)*size(Fx,2)+1 : prediction_horizon*size(Fx,2);
    FX(idfx, idxx) = Fx;
    gX(idfx) = gx;
    
    % Build H
    H_mat = 2 * blkdiag(QX, RU);

    %===========================================================
    % 2) Cost: J = (Y - r)'Qy_blk(Y - r) + U'RU
    %===========================================================

   current_state = x_initial;  

   % Constraints
   inequality_matrix = blkdiag(FX, FU); 
   inequality_vector = [gX; gU];
   equality_matrix = [eye((prediction_horizon+1)*state_dimension), -BU];
   equality_vector = AX * current_state;

   % Solve QP (fmincon used here)

   f = -H_mat * z_ref;
    
   options = mpcActiveSetOptions;
   iA0 = false(size(inequality_vector))
   [z_solution, ~]= mpcActiveSetSolver(H_mat, f, inequality_matrix, inequality_vector, equality_matrix, equality_vector, iA0, options);

   out = z_solution((prediction_horizon+1)*state_dimension+1 : ...
                       (prediction_horizon+1)*state_dimension+input_dimension, 1);