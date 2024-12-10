
% Classifier
clear;
load("Train_data\ActivityLogs.mat")

g= 9.801;
% Compute statistics for each axis and total acceleration for 'run'
Acceleration = runAcceleration;
Acceleration.X = Acceleration.X / g;
Acceleration.Y = Acceleration.Y / g;
Acceleration.Z = Acceleration.Z / g;
run_X_acc = computeMovingStats(Acceleration.X);
run_Y_acc = computeMovingStats(Acceleration.Y);
run_Z_acc = computeMovingStats(Acceleration.Z);
run_Total_acc = computeMovingStats(sqrt(Acceleration.X.^2 + Acceleration.Y.^2 + Acceleration.Z.^2));

% Combine the statistics for 'run'
run_Data = [run_X_acc, run_Y_acc, run_Z_acc, run_Total_acc];

% Compute statistics for each axis and total acceleration for 'walk'
Acceleration = walkAcceleration;
Acceleration.X = Acceleration.X / g;
Acceleration.Y = Acceleration.Y / g;
Acceleration.Z = Acceleration.Z / g;
walk_X_acc = computeMovingStats(Acceleration.X);
walk_Y_acc = computeMovingStats(Acceleration.Y);
walk_Z_acc = computeMovingStats(Acceleration.Z);
walk_Total_acc = computeMovingStats(sqrt(Acceleration.X.^2 + Acceleration.Y.^2 + Acceleration.Z.^2));

% Combine the statistics for 'walk'
walk_Data = [walk_X_acc, walk_Y_acc, walk_Z_acc, walk_Total_acc];

% Compute statistics for each axis and total acceleration for 'sit'
Acceleration = sitAcceleration;
Acceleration.X = Acceleration.X / g;
Acceleration.Y = Acceleration.Y / g;
Acceleration.Z = Acceleration.Z / g;
sit_X_acc = computeMovingStats(Acceleration.X);
sit_Y_acc = computeMovingStats(Acceleration.Y);
sit_Z_acc = computeMovingStats(Acceleration.Z);
sit_Total_acc = computeMovingStats(sqrt(Acceleration.X.^2 + Acceleration.Y.^2 + Acceleration.Z.^2));

% Combine the statistics for 'sit'
sit_Data = [sit_X_acc, sit_Y_acc, sit_Z_acc, sit_Total_acc];

% Combine all activities into a single dataset
train = [run_Data; walk_Data; sit_Data];

train = train(:,end-size(sit_Total_acc,2)+1:end );


% Create corresponding labels
labels = [repmat("run", size(run_Data, 1), 1); 
          repmat("walk", size(walk_Data, 1), 1); 
          repmat("sit", size(sit_Data, 1), 1)];






