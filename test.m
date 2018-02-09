% Creates Lego EV3 object, blutooth connection parameters.
myev3 = legoev3('Bluetooth','/dev/tty.EV3-SerialPort');

% Connect to color sensor
mycolorsensor = colorSensor(myev3);
% Reads color, outputs 8 values
color = readColor(mycolorsensor);
% Read the relative intensity of the LED light 
intensity = readLightIntensity(mycolorsensor,'reflected');

% Connect to motor 
mymotor = motorSensor(myev3,'A');
% Reads the total amount of rotation and returns the measurement in degrees. 
rotation = readRotation(mymotor);
% Resets the rotation measurement to zero.
resetRotation(mymotor)
% Starts the motor, using the speed and direction specified by the Speed property.
start(mymotor)
% Stops supplying power to the motor and lets the motor coast to a stop.
stop(mymotor)


