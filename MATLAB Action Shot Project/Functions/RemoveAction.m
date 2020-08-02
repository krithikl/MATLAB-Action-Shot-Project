function [removedImage] = RemoveAction(imageList)
% Creates a signular image which removes the action from collated pictures.
% Done by replacing the moving pixels with median pixel values.
%   Multiple images from a scene will have the action removed from the
%   shot. This will be done by creating a new image (removedImage) using
%   median pixel values where the action occured. This essentially replaces
%   the stacked images and their pixel values with new pixels representing
%   just the scene without the action.

%   Input:
%       imageList (Array of multiple images with the action shot)

%   Output:
%       removedImage (Creates a new image with the action removed)

% Author: Peter Parker

% Predefining array using zeros for better memory preallocation.
[rows, cols, ~] = size(imageList{1});
removedImage = zeros(size(imageList{1}));
% Using length of imageList as the columns value due to being overwritten
% further down the line with new colours
rgbImages = zeros(1, length(imageList), 3);

for i = 1:rows
    for j = 1:cols
        for y = 1:length(imageList)
            % Appending image red, green and blue values to respective
            % column in a new array 'rgbImages' to create the filtered
            % image
            rgbImages(1, y, 1) = uint8(imageList{y}(i, j, 1));
            rgbImages(1, y, 2) = uint8(imageList{y}(i, j, 2));
            rgbImages(1, y, 3) = uint8(imageList{y}(i, j, 3));
            
        end
        % Setting removeImage rgb values to the calculated medians
        [red, green, blue] = MedianPixel(rgbImages);
        removedImage(i, j, 1) = uint8(red);
        removedImage(i, j, 2) = uint8(green);
        removedImage(i, j, 3) = uint8(blue);
    end
end

% Converting from double to uint8 because uint8 stores between 0-255 range
% of colours
removedImage = uint8(removedImage);

end
    


