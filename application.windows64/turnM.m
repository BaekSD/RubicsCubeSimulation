function [hist,cube] = turnM(hist,cube)

hist = [hist;'Mn'];

% ������ ó��
tmp = cube(8,1);
cube(8,1) = cube(2,4);
cube(2,4) = cube(19,6);
cube(19,6) = cube(25,2);
cube(25,2) = tmp;

tmp = cube(8,2);
cube(8,2) = cube(2,1);
cube(2,1) = cube(19,4);
cube(19,4) = cube(25,6);
cube(25,6) = tmp;

% �� ó��
tmp = cube(5,1);
cube(5,1) = cube(11,4);
cube(11,4) = cube(22,6);
cube(22,6) = cube(16,2);
cube(16,2) = tmp;