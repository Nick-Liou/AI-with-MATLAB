

% Boxblots
close all;
load("Train_data\ActivityLogs.mat")

Acceleration = runAcceleration;

figure ;
hold on ;
plot(Acceleration.Timestamp , Acceleration.X)
plot(Acceleration.Timestamp , Acceleration.Y)
plot(Acceleration.Timestamp , Acceleration.Z)
plot(Acceleration.Timestamp , sqrt(Acceleration.X.^2 +  Acceleration.Y.^2 + Acceleration.Z.^2))
legend("X","Y","Z","Total","Location","best")
title("Run Accelaration")
ylabel('Accelaration m/s^2')

total_run = sqrt(Acceleration.X.^2 +  Acceleration.Y.^2 + Acceleration.Z.^2); 

Acceleration = walkAcceleration;

figure ;
hold on ;
plot(Acceleration.Timestamp , Acceleration.X)
plot(Acceleration.Timestamp , Acceleration.Y)
plot(Acceleration.Timestamp , Acceleration.Z)
plot(Acceleration.Timestamp , sqrt(Acceleration.X.^2 +  Acceleration.Y.^2 + Acceleration.Z.^2))
legend("X","Y","Z","Total","Location","best")
title("Walk Accelaration")
ylabel('Accelaration m/s^2')



total_walk = sqrt(Acceleration.X.^2 +  Acceleration.Y.^2 + Acceleration.Z.^2); 

Acceleration = sitAcceleration;

figure ;
hold on ;
plot(Acceleration.Timestamp , Acceleration.X)
plot(Acceleration.Timestamp , Acceleration.Y)
plot(Acceleration.Timestamp , Acceleration.Z)
plot(Acceleration.Timestamp , sqrt(Acceleration.X.^2 +  Acceleration.Y.^2 + Acceleration.Z.^2))
legend("X","Y","Z","Total","Location","best")
title("Sit Accelaration")
ylabel('Accelaration m/s^2')


total_sit = sqrt(Acceleration.X.^2 +  Acceleration.Y.^2 + Acceleration.Z.^2); 

% Combine all the data into one column
all_data = [total_run; total_walk; total_sit]-9.80665;

% Create a grouping variable indicating the group each value belongs to
group = [repmat({'Run'}, length(total_run), 1); 
         repmat({'Walk'}, length(total_walk), 1); 
         repmat({'Sit'}, length(total_sit), 1)];

% Create the boxplot
figure;
boxplot(all_data, group);
xlabel('Activity');
ylabel('Values');
title('Comparison of Activities');


Acceleration = unknownAcceleration;

figure ;
hold on ;
plot(Acceleration.Timestamp , Acceleration.X)
plot(Acceleration.Timestamp , Acceleration.Y)
plot(Acceleration.Timestamp , Acceleration.Z)
plot(Acceleration.Timestamp , sqrt(Acceleration.X.^2 +  Acceleration.Y.^2 + Acceleration.Z.^2))
legend("X","Y","Z","Total","Location","best")
title("Unknown Accelaration")
ylabel('Accelaration m/s^2')








