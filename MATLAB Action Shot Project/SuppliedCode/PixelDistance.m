function [distanceSquared] = PixelDistance(medianPoint, secondPoint)
% This function calculates the distance between two points in colour space
% using a specified formula.

%   The function will be using the standard squared distance formula
%   between 2 points. This function also supports the use of 1 x 3 x 3
%   arrays as well 1D arrays such as [3 5 6].

% Author: Peter Parker

% Formula used to find the squared distanced between 2 chosen points. The
% points are indexed respectively. E.g. Point 1 position 1 - Point 2
% position 1 gives us 1 part of the distance squared.
distanceSquared = (medianPoint(1) - secondPoint(1))^2 + ...
(medianPoint(2) - secondPoint(2))^2 + (medianPoint(3) - secondPoint(3))^2;
end

