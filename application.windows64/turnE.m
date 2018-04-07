function [hist,cube] = turnE(hist,cube)

hist = [hist;'En'];

% 怖窿痢 贸府
tmp = cube(10,5);
cube(10,5) = cube(12,4);
cube(12,4) = cube(17,3);
cube(17,3) = cube(15,2);
cube(15,2) = tmp;

tmp = cube(10,4);
cube(10,4) = cube(12,3);
cube(12,3) = cube(17,2);
cube(17,2) = cube(15,5);
cube(15,5) = tmp;

% 函 贸府
tmp = cube(11,4);
cube(11,4) = cube(14,3);
cube(14,3) = cube(16,2);
cube(16,2) = cube(13,5);
cube(13,5) = tmp;