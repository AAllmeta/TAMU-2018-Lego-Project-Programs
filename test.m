myev3 = legoev3('Bluetooth','/dev/tty.EV3-SerialPort');
mycolorsensor = colorSensor(myev3);
for i = 1:10
    if rem(i,2) == 0
        intensity = readLightIntensity(mycolorsensor,'reflected')
    end
end