
lat = Position.latitude;
lon = Position.longitude;
alt = Position.altitude;

wgs84 = wgs84Ellipsoid("m");
% Convert from geodetic coordinates to ECEF coordinates
[x, y, z] = geodetic2ecef(wgs84,deg2rad(lat), deg2rad(lon), alt);

totalDistance = 0;

% Loop through each pair of consecutive points
for i = 1:length(lat) - 1
    % Compute the 3D distance between consecutive points in ECEF space
    distance3D = sqrt((x(i+1) - x(i))^2 + (y(i+1) - y(i))^2 + (z(i+1) - z(i))^2);
    totalDistance = totalDistance + distance3D;
end

% Output total distance traveled (in meters)
disp(['Total Distance Traveled: ', num2str(totalDistance), 'm']);
