function [hist,cube] = turnU(hist,cube)

hist = [hist;'Un'];

% ������ ó��
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

% �� ó��
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