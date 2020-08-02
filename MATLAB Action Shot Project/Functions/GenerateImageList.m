function [images] = GenerateImageList(strPath,strExt)
% Generates an image list with the specified directory and extension
%   This function will firstly list all the files in the specified
%   directory 'strname' and check whether any of the files match the
%   extension input 'strExt'. If they do, list the images in a structure
%   array.
%   Inputs:
%       strName (Directory path)
%       strExt (File extension to look for)

% Author: Peter Parker

% Conditonals below for more robust function. The person who inputs the
% directory may add a '\' at the end of their directory to close it off
% while others don't. Due to this, if the indexed length of the directory
% (last character) is a '\', then don't add a slash when finding files with
% the specified extension. Every other outcome, the function will add a '\'
% when searching for files with that extension.
if strPath(length(strPath)) == '\'
    extension = strcat(strPath, '*.', strExt);
    % Converting from structure to cell array using struct2cell
    cellImages = struct2cell(dir(extension));
    
else
    extension = strcat(strPath, '\*.', strExt);
    % Converting from structure to cell array using struct2cell
    cellImages = struct2cell(dir(extension));
end

images = cellImages(1, :);

end

