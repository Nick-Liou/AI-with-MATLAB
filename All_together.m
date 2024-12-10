
clear;
close all ; 
% Load data 



% load('MobileSensorData//sensorlog_20241210_103145.mat');
% load('MobileSensorData//sensorlog_20241210_103638.mat');
% load('MobileSensorData//sensorlog_20241210_105253.mat');
% load('MobileSensorData//sensorlog_20241210_125821.mat');
load('MobileSensorData//sensorlog_20241210_142011.mat');

% load("Train_data\ActivityLogs.mat")
% Acceleration = unknownAcceleration;


if exist("Position","var") == 1
    if  size(Position,1) > 2
        Map_plot
    end
end

% Load model and make predictions

Predictor

