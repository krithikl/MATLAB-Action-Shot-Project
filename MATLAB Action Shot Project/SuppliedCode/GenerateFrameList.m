function [frameList] = GenerateFrameList(initialFrame, stepSize, n)
% Generates a range of values to form an array using given inputs.
%   This function will generate a list of frames which will be used to
%   determine which frames in a movie (set of images) to extract.
%   Inputs: 
%       initialFrame (The starting frame number)
%       stepSize
%       n (Number of frames the function will generate)
%   Output:
%       Array (A 1xn 1D array where n will number of frames input)

% Author: Peter Parker

%Creates an empty 1D array of zeroes from 1:n
frameList = zeros(1, n);

% For 1:n loops, append the initialFrame number + stepSize in position 'i'
for index = 1:n
    frameList(index) = initialFrame;
    initialFrame = initialFrame + stepSize;
    
end

end

