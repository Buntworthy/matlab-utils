function filenames = files(filter, folder)
% FILES Returns full filenames of files in a folder.
%   FILENAMES = FILES('FILTER') returns a the full filename of all files in 
%   the directory jp.Constant.DataFolder  and its subdirectories which 
%   match FILTER. For a single file a string is returned, for multiple
%   files a cell array is returned.
%
%   FILENAMES = FILES('FILTER', 'FOLDER') returns a cell array containing
%   the full filename of all files matching the FILTER in the directory
%   FOLDER and its subdirectories.
%

    if nargin == 1
        folder = jp.Constants.DataFolder;
    end
        
    % Make sure the folder has a trailing slash
    if ~strcmp(folder(end), '\')
        folder(end+1) = '\';
    end
    
    [fileNotFound, output] = system(['dir ', folder, filter, '/s/b']);
    if fileNotFound
        error('No files found matching filter')
    end
    
    filenames = strsplit(output, '\n')';
    filenames(end) = []; % Delete the return at the end
    
    % If a single filename 
    if length(filenames) == 1
        filenames = filenames{1};
    end