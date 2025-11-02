classdef mpcInit

    methods(Static)

        % Following properties of 'maskInitContext' are available to use:
        %  - BlockHandle
        %  - MaskObject
        %  - MaskWorkspace: Use get/set APIs to work with mask workspace.
        function MaskInitialization(maskInitContext)
            % Convenience handle for mask workspace
            ws = maskInitContext.MaskWorkspace;

            % Get mask parameters from the workspace
            stateSpace = ws.get('stateSpace'); % Invisible state space parameter
            velocity_penalty = ws.get('velocity_penalty');
            torque_penalty = ws.get('torque_penalty'); 

            ws.set('stateSpace', stateSpace);
            ws.set('velocity_penalty', velocity_penalty);
            ws.set('torque_penalty', torque_penalty);
            

        end

        % Use the code browser on the left to add the callbacks.

    end
end