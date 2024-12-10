function stats = computeMovingStats(vector, windowSize)
    % Function to compute multiple moving statistics for a given vector
    % and window size
    %
    % Inputs:
    %   - vector: Input vector (1D array)
    %   - windowSize: Window size for moving calculations
    %
    % Output:
    %   - stats: Matrix containing the moving statistics
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

end
