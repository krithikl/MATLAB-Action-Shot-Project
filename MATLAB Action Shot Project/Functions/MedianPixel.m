function [redMedian,greenMedian, blueMedian] = MedianPixel(pixelList)
% Calculats the median of all respective RGB colour values from a list of
% pixels inputted as a 1 x n x3 array.

%   This function will get an input of 1 x n x 3 array of pixels where n is
%   the number of pixels. The outputs will be the median of all 3 colour
%   values.
%   Input:
%       pixelList (3D array of pixel values)

%   Outputs:
%       redMedian (Median of all red values from each pixel)
%       greenMedian (Median of all green values from each pixel)
%       blueMedian (Median of all blue values from each pixel)

% Author: Peter Parker


% Calculating median of all colour values (red, green blue) and rounding 
% if its a decimal to the nearest whole number because Uint8 values cannot
% be integers (decimals).
redMedian = round(median(pixelList(:, :, 1)));
greenMedian = round(median(pixelList(:, :, 2)));
blueMedian = round(median(pixelList(:, :, 3)));

end


