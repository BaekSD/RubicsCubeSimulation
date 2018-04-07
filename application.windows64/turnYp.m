function [hist,cube] = turnYp(hist,cube)

hist = [hist;'Yp'];

%turnUp
% 怖窿痢 贸府
tmp = cube(1,1);
cube(1,1) = cube(3,1);
cube(3,1) = cube(9,1);
cube(9,1) = cube(7,1);
cube(7,1) = tmp;

tmp = cube(1,4);
cube(1,4) = cube(3,3);
cube(3,3) = cube(9,2);
cube(9,2) = cube(7,5);
cube(7,5) = tmp;

tmp = cube(1,5);
cube(1,5) = cube(3,4);
cube(3,4) = cube(9,3);
cube(9,3) = cube(7,2);
cube(7,2) = tmp;

% 函 贸府
tmp = cube(2,1);
cube(2,1) = cube(6,1);
cube(6,1) = cube(8,1);
cube(8,1) = cube(4,1);
cube(4,1) = tmp;

tmp = cube(2,4);
cube(2,4) = cube(6,3);
cube(6,3) = cube(8,2);
cube(8,2) = cube(4,5);
cube(4,5) = tmp;

%turnE
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

%turnD
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