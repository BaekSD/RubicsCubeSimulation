function [hist,cube] = turnSp(hist,cube)

hist = [hist;'Sp'];

% 怖窿痢 贸府
tmp = cube(4,1);
cube(4,1) = cube(6,3);
cube(6,3) = cube(23,6);
cube(23,6) = cube(21,5);
cube(21,5) = tmp;

tmp = cube(4,5);
cube(4,5) = cube(6,1);
cube(6,1) = cube(23,3);
cube(23,3) = cube(21,6);
cube(21,6) = tmp;

% 函 贸府
tmp = cube(5,1);
cube(5,1) = cube(14,3);
cube(14,3) = cube(22,6);
cube(22,6) = cube(13,5);
cube(13,5) = tmp;