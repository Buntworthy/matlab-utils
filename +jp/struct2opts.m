function opts = struct2opts(optionStructure)
% STRUCT2OPTS Convert structure to Name-Value cell array.

% TODO check that optionStructure is the correct type and that has even number of elements

fields = fieldnames(optionStructure);
opts = cell(length(fields)*2,1);
for iField = 1:length(fields)
    opts(2*iField - 1) = fields(iField);
    opts{2*iField} = optionStructure.(fields{iField});
end