function [hist,cube] = turnL(hist,cube)

hist = [hist;'Ln'];

% 怖窿痢 贸府
tmp = cube(18,5);
cube(18,5) = cube(24,5);
cube(24,5) = cube(7,5);
cube(7,5) = cube(1,5);
cube(1,5) = tmp;

tmp = cube(18,4);
cube(18,4) = cube(24,6);
cube(24,6) = cube(7,2);
cube(7,2) = cube(1,1);
cube(1,1) = tmp;

tmp = cube(18,6);
cube(18,6) = cube(24,2);
cube(24,2) = cube(7,1);
cube(7,1) = cube(1,4);
cube(1,4) = tmp;

% 函 贸府
tmp = cube(10,5);
cube(10,5) = cube(21,5);
cube(21,5) = cube(15,5);
cube(15,5) = cube(4,5);
cube(4,5) = tmp;

tmp = cube(10,4);
cube(10,4) = cube(21,6);
cube(21,6) = cube(15,2);
cube(15,2) = cube(4,1);
cube(4,1) = tmp;