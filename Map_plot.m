
find_total_distance;

% Extract latitude, longitude, and timestamps
lat = Position.latitude;        % Latitude
lon = Position.longitude;       % Longitude

% Plot the GPS points on a map
figure;
geoplot(lat, lon, '-o', 'LineWidth', 1.5, 'MarkerSize', 5);
title('GPS Data on Map');

legend(sprintf('Route (%.2f m)', totalDistance))

% Set a base map for better visualization
geobasemap('streets'); % Options: 'satellite', 'streets', 'topographic', etc.















