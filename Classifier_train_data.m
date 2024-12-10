
% Prepare the data for the Classifier
clear;
load("Train_data\ActivityLogs.mat")


% Compute statistics for each axis and total acceleration for 'run'
Acceleration = runAcceleration;
run_Total_acc = computeMovingStats(sqrt(Acceleration.X.^2 + Acceleration.Y.^2 + Acceleration.Z.^2));

% Combine the statistics for 'run'
run_Data = [run_Total_acc];

% Compute statistics for each axis and total acceleration for 'walk'
Acceleration = walkAcceleration;
walk_Total_acc = computeMovingStats(sqrt(Acceleration.X.^2 + Acceleration.Y.^2 + Acceleration.Z.^2));

% Combine the statistics for 'walk'
walk_Data = [walk_Total_acc];

% Compute statistics for each axis and total acceleration for 'sit'
Acceleration = sitAcceleration;
sit_Total_acc = computeMovingStats(sqrt(Acceleration.X.^2 + Acceleration.Y.^2 + Acceleration.Z.^2));

% Combine the statistics for 'sit'
sit_Data = [sit_Total_acc];

% Combine all activities into a single dataset
train = [run_Data; walk_Data; sit_Data];


% Create corresponding labels
labels = [repmat("run", size(run_Data, 1), 1); 
          repmat("walk", size(walk_Data, 1), 1); 
          repmat("sit", size(sit_Data, 1), 1)];






