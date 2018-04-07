function [hist,cube] = turnY(hist,cube)

hist = [hist;'Yn'];

%turnU
% 怖窿痢 贸府
tmp = cube(7,1);
cube(7,1) = cube(9,1);
cube(9,1) = cube(3,1);
cube(3,1) = cube(1,1);
cube(1,1) = tmp;

tmp = cube(7,5);
cube(7,5) = cube(9,2);
cube(9,2) = cube(3,3);
cube(3,3) = cube(1,4);
cube(1,4) = tmp;

tmp = cube(7,2);
cube(7,2) = cube(9,3);
cube(9,3) = cube(3,4);
cube(3,4) = cube(1,5);
cube(1,5) = tmp;

% 函 贸府
tmp = cube(4,1);
cube(4,1) = cube(8,1);
cube(8,1) = cube(6,1);
cube(6,1) = cube(2,1);
cube(2,1) = tmp;

tmp = cube(4,5);
cube(4,5) = cube(8,2);
cube(8,2) = cube(6,3);
cube(6,3) = cube(2,4);
cube(2,4) = tmp;

%turnEp
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

%turnDp
% 怖窿痢 贸府
tmp = cube(24,6);
cube(24,6) = cube(26,6);
cube(26,6) = cube(20,6);
cube(20,6) = cube(18,6);
cube(18,6) = tmp;

tmp = cube(24,5);
cube(24,5) = cube(26,2);
cube(26,2) = cube(20,3);
cube(20,3) = cube(18,4);
cube(18,4) = tmp;

tmp = cube(24,2);
cube(24,2) = cube(26,3);
cube(26,3) = cube(20,4);
cube(20,4) = cube(18,5);
cube(18,5) = tmp;

% 函 贸府
tmp = cube(21,6);
cube(21,6) = cube(25,6);
cube(25,6) = cube(23,6);
cube(23,6) = cube(19,6);
cube(19,6) = tmp;

tmp = cube(21,5);
cube(21,5) = cube(25,2);
cube(25,2) = cube(23,3);
cube(23,3) = cube(19,4);
cube(19,4) = tmp;