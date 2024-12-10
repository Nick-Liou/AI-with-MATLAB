
% clear;
% Predictions

% load model
load("trainedModel.mat")

% load data measured at 10Hz 


% load('MobileSensorData//sensorlog_20241210_103145.mat');
% load('MobileSensorData//sensorlog_20241210_103638.mat');
% load('MobileSensorData//sensorlog_20241210_105253.mat');
% load('MobileSensorData//sensorlog_20241210_125821.mat');
% load('MobileSensorData//sensorlog_20241210_142011.mat');



% load("Train_data\ActivityLogs.mat")
% Acceleration = unknownAcceleration;
% Acceleration = runAcceleration;
% Acceleration = walkAcceleration;
% Acceleration = sitAcceleration;

Total_acc = sqrt(Acceleration.X.^2 +  Acceleration.Y.^2 + Acceleration.Z.^2) ;

input_Data = [computeMovingStats(Total_acc)];

preditions = trainedModel.predictFcn(input_Data);

 
% time = timeElapsed(Acceleration.Timestamp);
time = Acceleration.Timestamp;
categories_categorical = categorical(preditions);


% Create a new figure with 2 rows and 1 column for subplots
figure;

% First plot: Time vs. Categorical Data
subplot(2,1,1);  % 2 rows, 1 column, first subplot
plot(time, categories_categorical);
xlabel('Time');
ylabel('Categories');
title('Time vs. Categorical Data');
grid on;

% Second plot: Acceleration
subplot(2,1,2);  % 2 rows, 1 column, second subplot
hold on;
plot(Acceleration.Timestamp, Acceleration.X);
plot(Acceleration.Timestamp, Acceleration.Y);
plot(Acceleration.Timestamp, Acceleration.Z);
plot(Acceleration.Timestamp, sqrt(Acceleration.X.^2 + Acceleration.Y.^2 + Acceleration.Z.^2));
legend("X", "Y", "Z", "Total", "Location", "best");
title("Acceleration");
ylabel('Acceleration (m/s^2)');
grid on;



