function [hist,cube] = turnD(hist,cube)

hist = [hist;'Dn'];

% 怖窿痢 贸府
tmp = cube(18,6);
cube(18,6) = cube(20,6);
cube(20,6) = cube(26,6);
cube(26,6) = cube(24,6);
cube(24,6) = tmp;

tmp = cube(18,4);
cube(18,4) = cube(20,3);
cube(20,3) = cube(26,2);
cube(26,2) = cube(24,5);
cube(24,5) = tmp;

tmp = cube(18,5);
cube(18,5) = cube(20,4);
cube(20,4) = cube(26,3);
cube(26,3) = cube(24,2);
cube(24,2) = tmp;

% 函 贸府
tmp = cube(19,6);
cube(19,6) = cube(23,6);
cube(23,6) = cube(25,6);
cube(25,6) = cube(21,6);
cube(21,6) = tmp;

tmp = cube(19,4);
cube(19,4) = cube(23,3);
cube(23,3) = cube(25,2);
cube(25,2) = cube(21,5);
cube(21,5) = tmp;