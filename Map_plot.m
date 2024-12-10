
% clear; 

% load('ExampleData.mat');
% load('MobileSensorData//sensorlog_20241210_103145.mat');
% load('MobileSensorData//sensorlog_20241210_103638.mat');
load('MobileSensorData//sensorlog_20241210_105253.mat');



% Extract latitude, longitude, and timestamps
lat = Position.latitude;        % Latitude
lon = Position.longitude;       % Longitude

% Plot the GPS points on a map
figure;
geoplot(lat, lon, '-o', 'LineWidth', 1.5, 'MarkerSize', 5);
title('GPS Data on Map');

% Set a base map for better visualization
geobasemap('streets'); % Options: 'satellite', 'streets', 'topographic', etc.
















