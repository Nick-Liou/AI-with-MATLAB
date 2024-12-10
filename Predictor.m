

% Predictions

% load our data


% load('MobileSensorData//sensorlog_20241210_103145.mat');
% load('MobileSensorData//sensorlog_20241210_103638.mat');
% load('MobileSensorData//sensorlog_20241210_105253.mat');

Acceleration = unknownAcceleration;


% Acceleration = runAcceleration;
% Acceleration = walkAcceleration;
% Acceleration = sitAcceleration;

Acceleration.X = Acceleration.X / g;
Acceleration.Y = Acceleration.Y / g;
Acceleration.Z = Acceleration.Z / g;

Total_acc = sqrt(Acceleration.X.^2 +  Acceleration.Y.^2 + Acceleration.Z.^2);

% input_Data = [Acceleration.X, Acceleration.Y, Acceleration.Z, Total_acc];


input_Data = [computeMovingStats(Acceleration.X), ...
            computeMovingStats(Acceleration.Y), ...
            computeMovingStats(Acceleration.Z), ...
            computeMovingStats(Total_acc)];

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
legend("X","Y","Z","Total","Location","best")

