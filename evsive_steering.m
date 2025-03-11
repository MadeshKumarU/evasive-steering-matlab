% MATLAB Script for Ego Car Overtaking Lead Car
% The ego car overtakes the lead car while ensuring the passing car does not overtake the ego car.

% Create a driving scenario
dScenario = drivingScenario;

% Define the road with two lanes, each 3.6 meters wide
roadCenters = [0 0; 250 0];
laneSpecification = lanespec(2, 'Width', 20);
road(dScenario, roadCenters, 'Lanes', laneSpecification);

% Add ego car, lead car, and passing car
% Add ego car, lead car, and passing car with custom sizes
egoCar = vehicle(dScenario, 'ClassID', 1, 'Position', [50 0 0], ...
    'Length', 10, 'Width', 5, 'Height', 3); % Ego car with custom size

leadCar = vehicle(dScenario, 'ClassID', 1, 'Position', [100 0 0], ...
    'Length', 10, 'Width', 5, 'Height', 3); % Lead car with custom size

passingCar = vehicle(dScenario, 'ClassID', 1, 'Position', [50 -3.6 0], ...
    'Length', 10, 'Width', 5, 'Height', 3); % Passing car with custom size

% Define trajectories for each vehicle
trajectory(egoCar, [25 -7; 50 -7; 75 -7; 100 -7; 120 -2; 135 4; 250 4], 20); % Ego car overtakes
trajectory(leadCar, [80 0; 120 -3; 140 -5; 180 -7], 11); % Lead car maintains speed in right lane
trajectory(passingCar, [100 -7; 180 -7], 8); % Passing car maintains lower speed

% Visualize the scenario
plot(dScenario); % Plot the driving scenario
while advance(dScenario)
    pause(0.01);
end
