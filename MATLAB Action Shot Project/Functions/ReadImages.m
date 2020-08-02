function [rgbImages] = ReadImages(strPath,fileInputs)
% Reads colour values of specified images in a directory and stores them

%   This function will read all specified files in the specified directory
%   as the input and record the colour values in a 1xnFiles cell array,
%   where nFiles is the number of files in the directory given.

%   Inputs:
%       strPath (Directory path for images)
%       fileInputs (Image array input, 
%                   used for looping through all rgb values in the image)
%   Output:
%       rgbImages (Cell array of all the images and their rgb matrices)

% Author: Peter Parker

% Number of files found. Loop to read all the rgb values of each image.
nFiles = length(fileInputs);
rgbImages = {1, nFiles};


% Ignores the '.' and '..' files in the directory. '.' indicates the current
% directory while '..' is the parent directory. These are of no use in
% reading images and therefore the counter skips those 2 directories.
for index = 1:nFiles

    % Indexing filename into rgbImages cell array
    rgbImages{index} = fileInputs{index}; 

    % Creating a combined string for a complete directory
    directory = strcat(strPath,'\', rgbImages{index});

    % The first image's colour values are read
    currentImage = imread(directory);

    % Recording the 3D colour matrix in the respective cell array position 
    rgbImages{index} = currentImage;
    
    
end
end


