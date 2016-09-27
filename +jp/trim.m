function [out1, out2] = trim(vector1, vector2)
% TRIM shorten the longer of two vectors.

if ~isvector(vector1) || ~isvector(vector2) 
    throw(MException('MatlabUtils:TypeError', 'Expected vector, got array'));
end

newLength = min(length(vector1), length(vector2));
out1 = vector1(1:newLength);
out2 = vector2(1:newLength);
