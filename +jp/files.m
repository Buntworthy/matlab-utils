function filenames = files(folder, filter)
% FILES Returns full filenames of files in a folder.
%   FILENAMES = FILES('FOLDER') returns a cell array containing the full
%   filename of all files in the directory FOLDER.
%
%   FILENAMES = FILES('FOLDER', 'FILTER') returns a cell array containing
%   the full filename of all files matching the FILTER in the directory
%   FOLDER.
%
%   FILENAMES = FILES('FOLDER', 'EXT') returns a cell array containing
%   the full filename of all files with the extension EXT in the directory
%   FOLDER.

    % Make sure the folder has a trailing slash
    if ~strcmp(folder(end), '\')
        folder(end+1) = '\';
    end
    
    if nargin == 1
        filter = '*';
    else
        % If filter doesn't contain a wildcard assume it is a file
        % extension
        if sum(filter == '*') == 0
            filter = ['*.', filter];
        end
    end
    
    files = dir([folder, filter]);
    allFiles = {files.name}';
    filenames = cellfun(@(x) ([folder, x]), allFiles, 'UniformOutput', false);