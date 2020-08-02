function [actionImage] = ActionShot(imageList)
%Creates an action shot image (multiple actions from collated images into a
%singular image) by taking the most distant pixels from the median RGB
%values.
%   This function is very similar to the RemoveAction function, but instead
%   of removing the action by calculating the MedianPixels, it takes the
%   most distant set of pixels and create a new image with those. This
%   creates an image with the action preserved.


[rows, cols, ~] = size(imageList{1});
actionImage = zeros(size(imageList{1}));
% Using length of imageList as the columns value due to being overwritten
% further down the line with new colours
rgbImages = zeros(1, length(imageList), 3);

for i = 1:rows
    for j = 1:cols
        for y = 1:length(imageList)
            % Appending image red, green and blue values to respective
            % column in a new array 'rgbImages' which will be used to find
            % the most distant pixels using MostDistantPixel.
            rgbImages(1, y, 1) = uint8(imageList{y}(i, j, 1));
            rgbImages(1, y, 2) = uint8(imageList{y}(i, j, 2));
            rgbImages(1, y, 3) = uint8(imageList{y}(i, j, 3));
            
        end
        % Setting removeImage rgb values to calculate the most distant red,
        % green and blue pixels in the array.
        [red, green, blue] = MostDistantPixel(rgbImages);
        actionImage(i, j, 1) = uint8(red);
        actionImage(i, j, 2) = uint8(green);
        actionImage(i, j, 3) = uint8(blue);
    end
end

% Converting from double to uint8 because uint8 stores between 0-255 range
% of colours
actionImage = uint8(actionImage);

end

