%TEST DATA EXAMPLE --------
pixelList(:, :, 1) = [54, 50, 45, 43];
pixelList(:, :, 2) = [48, 52, 48, 44];
pixelList(:, :, 3) = [50, 41, 47, 52];

[r, g, b] = MedianPixel(pixelList);