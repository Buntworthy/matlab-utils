function y = map(x, xMin, xMax, yMin, yMax)
% MAP 	Re-maps a number from one range to another.
%   Y = MAP(X, XMIN, XMAX, YMIN, YMAX) maps x from range xMin -> xMax to 
%   yMin -> yMax.
%
%   Example: if Y = map(0.1, 0, 1, 0, 100) then Y = 10

normalised = (x - xMin)./(xMax - xMin);
y = yMin + (yMax - yMin).*normalised;