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
            angular_velocity_penalty = ws.get('angular_velocity_penalty');
            current_penalty = ws.get('current_penalty');
            voltage_penalty = ws.get('voltage_penalty'); 
            % Clambda = roadB * roadC * roadD;

            % ws.set('Clambda', Clambda);
            ws.set('stateSpace', stateSpace);
            ws.set('velocity_penalty', velocity_penalty);
            ws.set('angular_velocity_penalty', angular_velocity_penalty);
            ws.set('current_penalty', current_penalty);
            ws.set('voltage_penalty', voltage_penalty);
            

        end

        % Use the code browser on the left to add the callbacks.

    end
end