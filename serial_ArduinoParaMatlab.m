% Initializations
clear all;
clc;

% Create a Serial Communication Object
obj_arduino = serialport("COM5", 9600);

% Check the Arduino status
status = getpinstatus(obj_arduino);

% Define the timeout in seconds (10 seconds)
timeout = 10;

% Start the simulation time counting
start_time = tic;

while true
    % Check if the buffer is not empty
    if obj_arduino.NumBytesAvailable > 0
        % Read data from the serial port
        data = readline(obj_arduino);

        % Print the values to the command prompt
        disp(data);
    end

    % Check if the timeout has been reached
    if toc(start_time) >= timeout
        disp("Tempo limite atingido. Encerrando a comunicação serial.");
        %disp([num2str(toc(start_time)), "segundos"]);
        break; % Exit the loop if the timeout is reached
    end
end

% Close the Serial Communication
clear obj_arduino;