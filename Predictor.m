

% Predictions

% load model
load("trainedModel.mat")

% load our data


% load('MobileSensorData//sensorlog_20241210_103145.mat');
% load('MobileSensorData//sensorlog_20241210_103638.mat');
% load('MobileSensorData//sensorlog_20241210_105253.mat');
% load('MobileSensorData//sensorlog_20241210_125821.mat');



load("Train_data\ActivityLogs.mat")
Acceleration = unknownAcceleration;
% Acceleration = runAcceleration;
% Acceleration = walkAcceleration;
% Acceleration = sitAcceleration;

Total_acc = sqrt(Acceleration.X.^2 +  Acceleration.Y.^2 + Acceleration.Z.^2) ;

input_Data = [computeMovingStats(Total_acc)];

preditions = trainedModel.predictFcn(input_Data);

 
% time = timeElapsed(Acceleration.Timestamp);
time = Acceleration.Timestamp;
categories_categorical = categorical(preditions);

% Plot the data
figure;
plot(time, categories_categorical);
xlabel('Time');
ylabel('Categories');
title('Time vs. Categorical Data');
grid on;
hold on;
plot(Acceleration.Timestamp , sqrt(Acceleration.X.^2 +  Acceleration.Y.^2 + Acceleration.Z.^2))


