function saveAllFigs(fmt, folder)
% SAVEALLFIGS Save all open figure windows.
%   SAVEALLFIGS() saves open figures as .fig files in the current working 
%   directory.
%
%   SAVEALLFIGS('FORMAT') saves open figures as filtype specified by
%   FORMAT, in the current working directory.
%
%   SAVEALLFIGS('FORMAT', 'FOLDER')saves open figures as filtype specified 
%   by FORMAT, in the directory specified by the string FOLDER.
%
%   Examples:
%
%   Save all figures as figs to directoy C:\Figures
%
%       saveAllFigs('fig', 'C:\Figures')

if nargin == 0
    fmt = 'fig';
    folder = pwd;
elseif nargin == 1
    folder = pwd;
end

if ~strcmp(folder(end), '\')
    folder(end+1) = '\';
end

h = get(0,'children');

if isempty(h)
    warning('No open figures')
end

for i=1:length(h)
  saveas(h(i), [folder, 'figure_' num2str(length(h)+1-i)], fmt);
end