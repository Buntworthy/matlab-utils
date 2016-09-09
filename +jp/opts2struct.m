function optionStruct = opts2struct(opts)
% OPTS2STRUCT Convert Name-Value cell array to struct.

% TODO check that opts is the correct type and that has even number of elements
optionStruct = struct;
for iField = 1:2:length(opts)
    optionStruct.(opts{iField}) = opts{iField+1};
end