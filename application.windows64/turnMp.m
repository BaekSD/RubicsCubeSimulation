function [hist,cube] = turnMp(hist,cube)

hist = [hist;'Mp'];

% 怖窿痢 贸府
tmp = cube(25,2);
cube(25,2) = cube(19,6);
cube(19,6) = cube(2,4);
cube(2,4) = cube(8,1);
cube(8,1) = tmp;

tmp = cube(25,6);
cube(25,6) = cube(19,4);
cube(19,4) = cube(2,1);
cube(2,1) = cube(8,2);
cube(8,2) = tmp;

% 函 贸府
tmp = cube(16,2);
cube(16,2) = cube(22,6);
cube(22,6) = cube(11,4);
cube(11,4) = cube(5,1);
cube(5,1) = tmp;