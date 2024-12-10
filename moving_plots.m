% EDAV of the train data
% Timeseries plots and Boxplots
close all;
load("Train_data\ActivityLogs.mat")


% Process for Run Acceleration
Acceleration = runAcceleration;

Total_movingStats = computeMovingStats(sqrt(Acceleration.X.^2 + Acceleration.Y.^2 + Acceleration.Z.^2));

% Plotting the Moving Statistics
figure;
hold on;
plot(Acceleration.Timestamp , sqrt(Acceleration.X.^2 + Acceleration.Y.^2 + Acceleration.Z.^2))
plot(Acceleration.Timestamp, Total_movingStats)
legend("Acceleration","movingAverage" ,"movingMedian" ,"movingStd" ,"movingMax" ,"movingMin" ,"movingMad" ,"Location","best")
title("Run Acceleration (Moving Statistics)")
ylabel('Acceleration (m/s^2)')





% Process for Walk Acceleration
Acceleration = walkAcceleration;
Total_movingStats = computeMovingStats(sqrt(Acceleration.X.^2 + Acceleration.Y.^2 + Acceleration.Z.^2));

% Plotting the Moving Statistics
figure;
hold on;
plot(Acceleration.Timestamp , sqrt(Acceleration.X.^2 + Acceleration.Y.^2 + Acceleration.Z.^2))
plot(Acceleration.Timestamp, Total_movingStats)
legend("Acceleration","movingAverage" ,"movingMedian" ,"movingStd" ,"movingMax" ,"movingMin" ,"movingMad" ,"Location","best")
title("Walk Acceleration (Moving Statistics)")
ylabel('Acceleration (m/s^2)')





% Process for Walk Acceleration
Acceleration = sitAcceleration;
Total_movingStats = computeMovingStats(sqrt(Acceleration.X.^2 + Acceleration.Y.^2 + Acceleration.Z.^2));

% Plotting the Moving Statistics
figure;
hold on;
plot(Acceleration.Timestamp , sqrt(Acceleration.X.^2 + Acceleration.Y.^2 + Acceleration.Z.^2))
plot(Acceleration.Timestamp, Total_movingStats)
legend("Acceleration","movingAverage" ,"movingMedian" ,"movingStd" ,"movingMax" ,"movingMin" ,"movingMad" ,"Location","best")
title("Sit Acceleration (Moving Statistics)")
ylabel('Acceleration (m/s^2)')




