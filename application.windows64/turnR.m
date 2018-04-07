function [hist,cube] = turnR(hist,cube)

hist = [hist;'Rn'];

% 怖窿痢 贸府
tmp = cube(26,3);
cube(26,3) = cube(20,3);
cube(20,3) = cube(3,3);
cube(3,3) = cube(9,3);
cube(9,3) = tmp;

tmp = cube(26,2);
cube(26,2) = cube(20,6);
cube(20,6) = cube(3,4);
cube(3,4) = cube(9,1);
cube(9,1) = tmp;

tmp = cube(26,6);
cube(26,6) = cube(20,4);
cube(20,4) = cube(3,1);
cube(3,1) = cube(9,2);
cube(9,2) = tmp;

% 函 贸府
tmp = cube(17,3);
cube(17,3) = cube(23,3);
cube(23,3) = cube(12,3);
cube(12,3) = cube(6,3);
cube(6,3) = tmp;

tmp = cube(17,2);
cube(17,2) = cube(23,6);
cube(23,6) = cube(12,4);
cube(12,4) = cube(6,1);
cube(6,1) = tmp;