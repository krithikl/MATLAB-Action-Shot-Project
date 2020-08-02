% colours(:, :, 1) = [192; 66; 65];
% colours(:, :, 2) = [50; 73; 192];
% colours(:, :, 3) = [135; 203; 135];
       
P = uint8([0, 0, 0]);
Q = uint8([10, 10, 10]);

squaredDistance = PixelDistance(P, Q);
