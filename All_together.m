
clear;
close all ; 
% Load data 

% load('MobileSensorData//sensorlog_20241210_103638.mat');
% load('MobileSensorData//sensorlog_20241210_103145.mat');


load("Train_data\ActivityLogs.mat")
Acceleration = unknownAcceleration;


if exist("Position","var") == 1
    Map_plot
end

% Load model and make predictions

Predictor

