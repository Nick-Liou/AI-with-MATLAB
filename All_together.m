
clear;
close all ; 

% load data measured at 10Hz (for the accelerometer)

% Route 1 
load('MobileSensorData\sensorlog_20241210_103145.mat');

% Test data provided
% load("Train_data\ActivityLogs.mat")
% Acceleration = unknownAcceleration;

% Extra test data provided
% load("ExampleData.mat")


if exist("Position","var") == 1
    if  size(Position,1) > 2
        Map_plot;
    end
end

% Run the script that loads the model, makes predictions and plots

Predictor;

