function simpleCalculator
    fig = uifigure('Name', 'Simple Calculator', 'Position', [500, 300, 300, 400]);
    
    % Create an edit field to display input/output
    editField = uieditfield(fig, 'text', 'Position', [20, 340, 260, 40], 'Editable', 'off', 'HorizontalAlignment', 'right');
    
    % Button grid
    buttons = {'7', '8', '9', '/';
               '4', '5', '6', '*';
               '1', '2', '3', '-';
               '0', '.', '=', '+'};
    
    % Create buttons dynamically
    for row = 1:4
        for col = 1:4
            btnText = buttons{row, col};
            uibutton(fig, 'Text', btnText, 'Position', [20 + (col-1)*65, 250 - (row-1)*50, 60, 40],...
                'ButtonPushedFcn', @(btn, event) buttonPressed(editField, btnText));
        end
    end
    
    % Clear button
    uibutton(fig, 'Text', 'C', 'Position', [20, 50, 125, 40], 'BackgroundColor', 'red', 'FontWeight', 'bold',...
        'ButtonPushedFcn', @(btn, event) clearField(editField));
    
    % Delete button
    uibutton(fig, 'Text', 'DEL', 'Position', [155, 50, 125, 40], 'BackgroundColor', 'yellow', 'FontWeight', 'bold',...
        'ButtonPushedFcn', @(btn, event) deleteLast(editField));
end

% Callback function to handle button presses
function buttonPressed(editField, btnText)
    if strcmp(btnText, '=')
        try
            result = eval(editField.Value);
            editField.Value = num2str(result);
        catch
            editField.Value = 'Error';
        end
    else
        editField.Value = [editField.Value btnText];
    end
end

% Clear button callback
function clearField(editField)
    editField.Value = '';
end

% Delete last character callback
function deleteLast(editField)
    if ~isempty(editField.Value)
        editField.Value = editField.Value(1:end-1);
    end
end
