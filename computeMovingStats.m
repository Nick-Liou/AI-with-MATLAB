function stats = computeMovingStats(vector, windowSize)
    % Function to compute multiple moving statistics for a given vector
    % and window size
    %
    % Inputs:
    %   - vector: Input vector (1D array)
    %   - windowSize: Window size for moving calculations
    %
    % Output:
    %   - stats: Struct containing the moving statistics
    %
    % Usage:
    %   stats = computeMovingStats(vector, windowSize);

    % Validate inputs
    arguments
        vector (:,1) 
            windowSize (1,1) = 60
    end
    if ~isvector(vector)
        error('Input must be a 1D vector.');
    end
    if ~isscalar(windowSize) || windowSize <= 0 || mod(windowSize, 1) ~= 0
        error('Window size must be a positive integer.');
    end

    % Ensure the vector is a column vector for consistent computation
    vector = vector(:);

    % Compute moving statistics
    movingAverage   = movmean(vector, windowSize);
    movingMedian    = movmedian(vector, windowSize);
    movingStd       = movstd(vector, windowSize);
    movingMax       = movmax(vector, windowSize);
    movingMin       = movmin(vector, windowSize);
    movingMad       = movmad(vector, windowSize);

    stats = [ movingAverage ,movingMedian  , movingStd    , movingMax    , movingMin ,movingMad    ];
    % % Display a summary of the computed statistics
    % fprintf('Computed moving statistics with window size %d:\n', windowSize);
    % fprintf(' - Moving Average: First 5 elements: %s\n', mat2str(stats.movingAverage(1:min(5, end))));
    % fprintf(' - Moving Median: First 5 elements: %s\n', mat2str(stats.movingMedian(1:min(5, end))));
    % fprintf(' - Moving Std: First 5 elements: %s\n', mat2str(stats.movingStd(1:min(5, end))));
    % fprintf(' - Moving Max: First 5 elements: %s\n', mat2str(stats.movingMax(1:min(5, end))));
    % fprintf(' - Moving Min: First 5 elements: %s\n', mat2str(stats.movingMin(1:min(5, end))));
end
