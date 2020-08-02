function [distRed, distGreen, distBlue] = MostDistantPixel(pixelList)
% Calculates the most distant pixel from the given pixelList input using
% median RGB values.
%   As opposed to the PixelDistance function, this function takes a 3D
%   array as an input and finds the most distant pixel using the RGB median
%   values. The distance will be calculated using a specified formula and
%   the function will also work for 1 x n x 3 arrays.
%   
%   Input:
%       pixelList (1 x n x 3 array of RGB Values)
%   Outputs:
%       distRed (Most distant red pixel)
%       distGreen (Most distant green pixel)
%       distBlue (Most distant blue pixel)

% Author: Peter Parker

% Collects the median red, green and blue values using my MedianPixel
% function
[r, g, b] = MedianPixel(pixelList);

% Collates these colours into 1 singular 1D array
rgbMedian = [r, g, b];

% Number of columns in the pixelList input which will be used for the for
% loop in calculating all of the pixel distances.
[~, cols, ~] = size(pixelList);

% 1 x cols array of zeros for better memory preallocation.
distance = zeros(1, cols);


% This loop will run for x amount of columns depending on the array input.
% Each value calculated will be stored in the distance array. Below, we are
% finding the distance between the rgbMedian values stored previously and
% 'i' column of the array input (in this case being pixelList). If the
% column combination of values matches the max distance in the array, the
% most distant pixel will be recorded as a variable by indexing.
for index = 1:cols
    distance(index) = PixelDistance(rgbMedian, pixelList(:, index, :));
    if PixelDistance(rgbMedian, pixelList(:, index, :)) == max(distance)
        mostDistantPixel = pixelList(:, index, :);
    end
end

% Storing the 1st, 2nd and 3rd values of each colour respectively in their
% own outputs. I am able to use 1, 2 and 3 because there are only 3 colour
% values which we are considering.
distRed = mostDistantPixel(1);
distGreen = mostDistantPixel(2);
distBlue = mostDistantPixel(3);


end

