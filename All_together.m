
clear;
close all ; 
% Load data 


% Route 1 
load('MobileSensorData//sensorlog_20241210_103145.mat');

% Test data
% load("Train_data\ActivityLogs.mat")
% Acceleration = unknownAcceleration;


if exist("Position","var") == 1
    if  size(Position,1) > 2
        Map_plot
    end
end

% Load model and make predictions

Predictor

