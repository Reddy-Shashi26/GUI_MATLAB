classdef matalb_tutorial_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                  matlab.ui.Figure
        EditField                 matlab.ui.control.EditField
        EditFieldLabel            matlab.ui.control.Label
        pi                        matlab.ui.control.Button
        MATLABGUICALCULATORLabel  matlab.ui.control.Label
        Button_4                  matlab.ui.control.Button
        Button_3                  matlab.ui.control.Button
        Button_2                  matlab.ui.control.Button
        Button                    matlab.ui.control.Button
        ACButton                  matlab.ui.control.Button
        equals                    matlab.ui.control.Button
        Button_5                  matlab.ui.control.Button
        num_10                    matlab.ui.control.Button
        num_9                     matlab.ui.control.Button
        num_8                     matlab.ui.control.Button
        rootButton                matlab.ui.control.Button
        num_0                     matlab.ui.control.Button
        num_6                     matlab.ui.control.Button
        num_5                     matlab.ui.control.Button
        num_4                     matlab.ui.control.Button
        squareButton              matlab.ui.control.Button
        DelButton                 matlab.ui.control.Button
        num_3                     matlab.ui.control.Button
        num_2                     matlab.ui.control.Button
        num_7                     matlab.ui.control.Button
    end

    properties (Access = private)
    currentInput = '';  % Stores the current input string
    currentResult = ''; % Stores the result of the calculation
    num = 0;
end


    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: equals
        function equalsPushed(app, event)
            try
                app.currentResult = eval(app.currentInput);  % Evaluates the expression
                app.EditField.Value = num2str(app.currentResult);  % Displays the result
                app.currentInput = num2str(app.currentResult);  % Update the input with the result
            catch
                app.EditField.Value = 'Error';  % Displays error if the expression is invalid
            end
        end

        % Button pushed function: num_3
        function num_1Pushed(app, event)
                    app.currentInput = [app.currentInput, '1'];  % Concatenate '1' to the existing input
    app.EditField.Value = app.currentInput;  % Update the display with the new value
        end

        % Button pushed function: num_7
        function num_7_7Pushed(app, event)
              app.currentInput = [app.currentInput, '7'];  % Concatenate '1' to the existing input
    app.EditField.Value = app.currentInput;  % Update the display with the new value
        end

        % Button pushed function: num_4
        function num_8Pushed(app, event)
          app.currentInput = [app.currentInput, '8'];  % Concatenate '1' to the existing input
    app.EditField.Value = app.currentInput;  % Update the display with the new value
        end

        % Button pushed function: num_8
        function num_9Pushed(app, event)
             app.currentInput = [app.currentInput, '9'];  % Concatenate '1' to the existing input
    app.EditField.Value = app.currentInput;  % Update the display with the new value
        end

        % Button pushed function: num_2
        function num_4Pushed(app, event)
            app.currentInput = [app.currentInput, '4'];
            app.EditField.Value = app.currentInput;
        end

        % Button pushed function: num_5
        function num_5Pushed(app, event)
            app.currentInput = [app.currentInput, '5'];
            app.EditField.Value = app.currentInput;
        end

        % Button pushed function: num_9
        function num_6Pushed(app, event)
            app.currentInput = [app.currentInput, '6'];
            app.EditField.Value = app.currentInput;
        end

        % Button pushed function: num_6
        function num_2Pushed(app, event)
            app.currentInput = [app.currentInput, '2'];
            app.EditField.Value = app.currentInput;
        end

        % Button pushed function: num_10
        function num_3Pushed(app, event)
            app.currentInput = [app.currentInput, '3'];
            app.EditField.Value = app.currentInput;
        end

        % Button pushed function: num_0
        function num_0Pushed(app, event)
            app.currentInput = [app.currentInput, '0'];
            app.EditField.Value = app.currentInput;
        end

        % Button pushed function: ACButton
        function ACButtonPushed(app, event)
            app.currentInput = '';
            app.currentResult = '';
            app.EditField.Value = '';  % Clears the display
        end

        % Button pushed function: squareButton
        function squareButtonPushed(app, event)
          
    % Convert current input string to a number
    app.num = str2double(app.currentInput);
    
    % Check if the input is a valid number
    if isnan(app.num)
        % If the input is not a valid number, display an error message
        app.EditField.Value = 'Error';
        app.currentInput = '';  % Clear current input for further operations
    else
        % Calculate the square of the number (number ^ 2)
        app.currentResult = app.num^2;
        
        % Update the display with the result
        app.EditField.Value = num2str(app.currentResult);
        
        % Update the current input to the result (in case the user wants to continue with this result)
        app.currentInput = num2str(app.currentResult);
    end

        end

        % Button pushed function: rootButton
        function rootButtonPushed(app, event)
      
    % Convert current input string to a number
    app.num = str2double(app.currentInput);
    
    % Check if the input is a valid number
    if isnan(app.num)
        % If the input is not a valid number, display an error message
        app.EditField.Value = 'Error';
        app.currentInput = '';  % Clear current input for further operations
    else
        % Calculate the square root of the number
        app.currentResult = sqrt(app.num);
        
        % Update the display with the result
        app.EditField.Value = num2str(app.currentResult);
        
        % Update the current input to the result (in case the user wants to continue with this result)
        app.currentInput = num2str(app.currentResult);
    end

        end

        % Button pushed function: pi
        function piPushed(app, event)
 
    % Append 'pi' to the current input string
    app.currentInput = [app.currentInput, 'pi']; 
    
    % Update the display with the updated input string
    app.EditField.Value = 'π';



        end

        % Button pushed function: DelButton
        function DelButtonPushed(app, event)
            
    % Check if there is any input
    if ~isempty(app.currentInput)
        % Remove the last character from the current input
        app.currentInput = app.currentInput(1:end-1);
        
        % Update the display field with the new input
        app.EditField.Value = app.currentInput;
    end


        end

        % Button pushed function: Button_4
        function Button_13Pushed(app, event)
    if isempty(app.currentInput)
        return;
    end

    % Check if the last character is an operator; if it is, replace it with '+'
    if ismember(app.currentInput(end), ['+', '-', '*', '/'])
        app.currentInput(end) = '+';  % Replace the last operator with '+'
    else
        % Append the '+' operator to the input
        app.currentInput = [app.currentInput, '+'];
    end
    
    % Update the EditField display
    app.EditField.Value = app.currentInput;
        end

        % Button pushed function: Button_2
        function Button_11Pushed(app, event)
    if isempty(app.currentInput)
        return;
    end

    % Check if the last character is an operator; if it is, replace it with '+'
    if ismember(app.currentInput(end), ['+', '-', '*', '/'])
        app.currentInput(end) = '*';  % Replace the last operator with '+'
    else
        % Append the '+' operator to the input
        app.currentInput = [app.currentInput, '*'];
    end
    
    % Update the EditField display
    app.EditField.Value = app.currentInput;


        end

        % Button pushed function: Button_3
        function Button_12Pushed(app, event)
    if isempty(app.currentInput)
        return;
    end

    % Check if the last character is an operator; if it is, replace it with '+'
    if ismember(app.currentInput(end), ['+', '-', '*', '/'])
        app.currentInput(end) = '-';  % Replace the last operator with '+'
    else
        % Append the '+' operator to the input
        app.currentInput = [app.currentInput, '-'];
    end
    
    % Update the EditField display
    app.EditField.Value = app.currentInput;
        end

        % Button pushed function: Button
        function Button_10Pushed(app, event)
     if isempty(app.currentInput)
        return;
    end

    % Check if the last character is an operator; if it is, replace it with '+'
    if ismember(app.currentInput(end), ['+', '-', '*', '/'])
        app.currentInput(end) = '/';  % Replace the last operator with '+'
    else
        % Append the '+' operator to the input
        app.currentInput = [app.currentInput, '/'];
    end
    
    % Update the EditField display
    app.EditField.Value = app.currentInput;
        end

        % Button pushed function: Button_5
        function Button_5Pushed(app, event)
            
            app.EditField.Value = '';

        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Color = [0.4902 0.6039 0.6784];
            app.UIFigure.Position = [100 100 510 535];
            app.UIFigure.Name = 'MATLAB App';

            % Create num_7
            app.num_7 = uibutton(app.UIFigure, 'push');
            app.num_7.ButtonPushedFcn = createCallbackFcn(app, @num_7_7Pushed, true);
            app.num_7.Tag = 'number7';
            app.num_7.BackgroundColor = [0.898 0.9294 1];
            app.num_7.FontSize = 20;
            app.num_7.FontWeight = 'bold';
            app.num_7.Position = [14 251 100 33];
            app.num_7.Text = '7';

            % Create num_2
            app.num_2 = uibutton(app.UIFigure, 'push');
            app.num_2.ButtonPushedFcn = createCallbackFcn(app, @num_4Pushed, true);
            app.num_2.Tag = 'number4';
            app.num_2.BackgroundColor = [0.898 0.9294 1];
            app.num_2.FontSize = 20;
            app.num_2.FontWeight = 'bold';
            app.num_2.Position = [14 206 100 33];
            app.num_2.Text = '4';

            % Create num_3
            app.num_3 = uibutton(app.UIFigure, 'push');
            app.num_3.ButtonPushedFcn = createCallbackFcn(app, @num_1Pushed, true);
            app.num_3.Tag = 'number1';
            app.num_3.BackgroundColor = [0.898 0.9294 1];
            app.num_3.FontSize = 20;
            app.num_3.FontWeight = 'bold';
            app.num_3.Position = [14 167 100 33];
            app.num_3.Text = '1';

            % Create DelButton
            app.DelButton = uibutton(app.UIFigure, 'push');
            app.DelButton.ButtonPushedFcn = createCallbackFcn(app, @DelButtonPushed, true);
            app.DelButton.Tag = 'delete';
            app.DelButton.BackgroundColor = [0.898 0.9294 1];
            app.DelButton.FontSize = 20;
            app.DelButton.FontWeight = 'bold';
            app.DelButton.Position = [14 125 100 33];
            app.DelButton.Text = 'Del';

            % Create squareButton
            app.squareButton = uibutton(app.UIFigure, 'push');
            app.squareButton.ButtonPushedFcn = createCallbackFcn(app, @squareButtonPushed, true);
            app.squareButton.Tag = 'square';
            app.squareButton.BackgroundColor = [0.5059 0.7961 0.9882];
            app.squareButton.FontSize = 14;
            app.squareButton.FontWeight = 'bold';
            app.squareButton.Position = [14 82 100 31];
            app.squareButton.Text = 'square';

            % Create num_4
            app.num_4 = uibutton(app.UIFigure, 'push');
            app.num_4.ButtonPushedFcn = createCallbackFcn(app, @num_8Pushed, true);
            app.num_4.Tag = 'number8';
            app.num_4.BackgroundColor = [0.898 0.9294 1];
            app.num_4.FontSize = 20;
            app.num_4.FontWeight = 'bold';
            app.num_4.Position = [143 251 100 33];
            app.num_4.Text = '8';

            % Create num_5
            app.num_5 = uibutton(app.UIFigure, 'push');
            app.num_5.ButtonPushedFcn = createCallbackFcn(app, @num_5Pushed, true);
            app.num_5.Tag = 'number5';
            app.num_5.BackgroundColor = [0.898 0.9294 1];
            app.num_5.FontSize = 20;
            app.num_5.FontWeight = 'bold';
            app.num_5.Position = [143 206 100 33];
            app.num_5.Text = '5';

            % Create num_6
            app.num_6 = uibutton(app.UIFigure, 'push');
            app.num_6.ButtonPushedFcn = createCallbackFcn(app, @num_2Pushed, true);
            app.num_6.Tag = 'number2';
            app.num_6.BackgroundColor = [0.898 0.9294 1];
            app.num_6.FontSize = 20;
            app.num_6.FontWeight = 'bold';
            app.num_6.Position = [143 167 100 33];
            app.num_6.Text = '2';

            % Create num_0
            app.num_0 = uibutton(app.UIFigure, 'push');
            app.num_0.ButtonPushedFcn = createCallbackFcn(app, @num_0Pushed, true);
            app.num_0.Tag = 'number0';
            app.num_0.BackgroundColor = [0.898 0.9294 1];
            app.num_0.FontSize = 20;
            app.num_0.FontWeight = 'bold';
            app.num_0.Position = [143 125 100 33];
            app.num_0.Text = '0';

            % Create rootButton
            app.rootButton = uibutton(app.UIFigure, 'push');
            app.rootButton.ButtonPushedFcn = createCallbackFcn(app, @rootButtonPushed, true);
            app.rootButton.Tag = 'root';
            app.rootButton.BackgroundColor = [0.5059 0.7961 0.9882];
            app.rootButton.FontSize = 14;
            app.rootButton.FontWeight = 'bold';
            app.rootButton.Position = [143 82 100 31];
            app.rootButton.Text = 'root';

            % Create num_8
            app.num_8 = uibutton(app.UIFigure, 'push');
            app.num_8.ButtonPushedFcn = createCallbackFcn(app, @num_9Pushed, true);
            app.num_8.Tag = 'number9';
            app.num_8.BackgroundColor = [0.898 0.9294 1];
            app.num_8.FontSize = 20;
            app.num_8.FontWeight = 'bold';
            app.num_8.Position = [270 251 100 33];
            app.num_8.Text = '9';

            % Create num_9
            app.num_9 = uibutton(app.UIFigure, 'push');
            app.num_9.ButtonPushedFcn = createCallbackFcn(app, @num_6Pushed, true);
            app.num_9.Tag = 'number6';
            app.num_9.BackgroundColor = [0.898 0.9294 1];
            app.num_9.FontSize = 20;
            app.num_9.FontWeight = 'bold';
            app.num_9.Position = [270 206 100 33];
            app.num_9.Text = '6';

            % Create num_10
            app.num_10 = uibutton(app.UIFigure, 'push');
            app.num_10.ButtonPushedFcn = createCallbackFcn(app, @num_3Pushed, true);
            app.num_10.Tag = 'number3';
            app.num_10.BackgroundColor = [0.898 0.9294 1];
            app.num_10.FontSize = 20;
            app.num_10.FontWeight = 'bold';
            app.num_10.Position = [270 167 100 33];
            app.num_10.Text = '3';

            % Create Button_5
            app.Button_5 = uibutton(app.UIFigure, 'push');
            app.Button_5.ButtonPushedFcn = createCallbackFcn(app, @Button_5Pushed, true);
            app.Button_5.Tag = 'pi';
            app.Button_5.IconAlignment = 'top';
            app.Button_5.BackgroundColor = [0.898 0.9294 1];
            app.Button_5.FontSize = 26;
            app.Button_5.FontWeight = 'bold';
            app.Button_5.Position = [270 125 100 33];
            app.Button_5.Text = '.';

            % Create equals
            app.equals = uibutton(app.UIFigure, 'push');
            app.equals.ButtonPushedFcn = createCallbackFcn(app, @equalsPushed, true);
            app.equals.Tag = 'equals';
            app.equals.BackgroundColor = [0.0431 0.3412 0.8157];
            app.equals.FontSize = 14;
            app.equals.FontWeight = 'bold';
            app.equals.Position = [390 22 100 121];
            app.equals.Text = '=';

            % Create ACButton
            app.ACButton = uibutton(app.UIFigure, 'push');
            app.ACButton.ButtonPushedFcn = createCallbackFcn(app, @ACButtonPushed, true);
            app.ACButton.Tag = 'reset';
            app.ACButton.IconAlignment = 'center';
            app.ACButton.BackgroundColor = [0.5294 0.4157 0.9882];
            app.ACButton.FontSize = 20;
            app.ACButton.FontWeight = 'bold';
            app.ACButton.Position = [390 238 100 44];
            app.ACButton.Text = 'AC';

            % Create Button
            app.Button = uibutton(app.UIFigure, 'push');
            app.Button.ButtonPushedFcn = createCallbackFcn(app, @Button_10Pushed, true);
            app.Button.Tag = 'divide';
            app.Button.IconAlignment = 'center';
            app.Button.BackgroundColor = [0.5294 0.4157 0.9882];
            app.Button.FontSize = 20;
            app.Button.FontWeight = 'bold';
            app.Button.Position = [14 22 100 40];
            app.Button.Text = '/';

            % Create Button_2
            app.Button_2 = uibutton(app.UIFigure, 'push');
            app.Button_2.ButtonPushedFcn = createCallbackFcn(app, @Button_11Pushed, true);
            app.Button_2.Tag = 'multiply';
            app.Button_2.IconAlignment = 'center';
            app.Button_2.BackgroundColor = [0.5294 0.4157 0.9882];
            app.Button_2.FontSize = 20;
            app.Button_2.FontWeight = 'bold';
            app.Button_2.Position = [143 22 100 40];
            app.Button_2.Text = '*';

            % Create Button_3
            app.Button_3 = uibutton(app.UIFigure, 'push');
            app.Button_3.ButtonPushedFcn = createCallbackFcn(app, @Button_12Pushed, true);
            app.Button_3.Tag = 'minus';
            app.Button_3.IconAlignment = 'center';
            app.Button_3.BackgroundColor = [0.5294 0.4157 0.9882];
            app.Button_3.FontSize = 20;
            app.Button_3.FontWeight = 'bold';
            app.Button_3.Position = [270 22 100 40];
            app.Button_3.Text = '-';

            % Create Button_4
            app.Button_4 = uibutton(app.UIFigure, 'push');
            app.Button_4.ButtonPushedFcn = createCallbackFcn(app, @Button_13Pushed, true);
            app.Button_4.Tag = 'plus';
            app.Button_4.IconAlignment = 'center';
            app.Button_4.BackgroundColor = [0.5294 0.4157 0.9882];
            app.Button_4.FontSize = 14;
            app.Button_4.FontWeight = 'bold';
            app.Button_4.Position = [390 167 100 40];
            app.Button_4.Text = '+';

            % Create MATLABGUICALCULATORLabel
            app.MATLABGUICALCULATORLabel = uilabel(app.UIFigure);
            app.MATLABGUICALCULATORLabel.HorizontalAlignment = 'center';
            app.MATLABGUICALCULATORLabel.FontName = 'Times New Roman';
            app.MATLABGUICALCULATORLabel.FontSize = 35;
            app.MATLABGUICALCULATORLabel.FontWeight = 'bold';
            app.MATLABGUICALCULATORLabel.Position = [10 473 494 46];
            app.MATLABGUICALCULATORLabel.Text = 'MATLAB GUI CALCULATOR';

            % Create pi
            app.pi = uibutton(app.UIFigure, 'push');
            app.pi.ButtonPushedFcn = createCallbackFcn(app, @piPushed, true);
            app.pi.Tag = 'pi';
            app.pi.BackgroundColor = [0.5059 0.7961 0.9882];
            app.pi.FontSize = 20;
            app.pi.FontWeight = 'bold';
            app.pi.Position = [270 81 100 33];
            app.pi.Text = 'pi';

            % Create EditFieldLabel
            app.EditFieldLabel = uilabel(app.UIFigure);
            app.EditFieldLabel.HorizontalAlignment = 'right';
            app.EditFieldLabel.FontSize = 22;
            app.EditFieldLabel.Position = [133 402 25 29];
            app.EditFieldLabel.Text = '';

            % Create EditField
            app.EditField = uieditfield(app.UIFigure, 'text');
            app.EditField.Tag = 'screen';
            app.EditField.HorizontalAlignment = 'right';
            app.EditField.FontSize = 22;
            app.EditField.FontWeight = 'bold';
            app.EditField.BackgroundColor = [0.9098 0.9098 0.9804];
            app.EditField.Position = [18 349 476 82];

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = matalb_tutorial_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end