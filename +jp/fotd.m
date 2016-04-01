function fotd()
% FOTD Display random function and description.

load('function_list.mat')
rng('shuffle')
index = randi(size(functionlist,1));

width = 80;
multiline = false;

name = functionlist.xFunction{index};
name_length = length(name);
description = functionlist.description{index};
description_length = length(description);


if description_length > width - 7
    description_line{1} = description(1:width-7);
    description_line{2} = description(width-7+1:end);
    multiline = true;
end

fprintf(' ------------------------- MATLAB Function of the Day ------------------------- \n')
fprintf('|                                                                              |\n')
fprintf('|  Today''s function is:                                                        |\n')
fprintf('|                                                                              |\n')
fprintf(['|    ', '<strong>', name, '</strong>', repmat(' ', 1, width-name_length-7), ' |\n'])
fprintf('|                                                                              |\n')
if (multiline)
    fprintf(['|    ', description_line{1}, ' |\n'])
    fprintf(['|    ', description_line{2}, repmat(' ', 1, width-length(description_line(2))-7),  ' |\n'])
else
    fprintf(['|    ', description, repmat(' ', 1, width-description_length-7), ' |\n'])
end
fprintf('|                                                                              |\n')
fprintf(' ------------------------------------------------------------------------------ \n')
