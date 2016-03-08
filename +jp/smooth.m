function y = smooth(x, n)
% SMOOTH Apply moving average filter to data.
%   Y = SMOOTH(X, N) applies a moving average filter of length N to the
%   data X, and returns the smoothed result Y.

v = ones(n,1)/n;
y = conv(x, v, 'same');