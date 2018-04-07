function [hist,cube] = turnEp(hist,cube)

hist = [hist;'Ep'];

% 怖窿痢 贸府
tmp = cube(15,2);
cube(15,2) = cube(17,3);
cube(17,3) = cube(12,4);
cube(12,4) = cube(10,5);
cube(10,5) = tmp;

tmp = cube(15,5);
cube(15,5) = cube(17,2);
cube(17,2) = cube(12,3);
cube(12,3) = cube(10,4);
cube(10,4) = tmp;

% 函 贸府
tmp = cube(13,5);
cube(13,5) = cube(16,2);
cube(16,2) = cube(14,3);
cube(14,3) = cube(11,4);
cube(11,4) = tmp;