function [hist,cube] = turnFp(hist,cube)

hist = [hist;'Fp'];

% ������ ó��
tmp = cube(7,2);
cube(7,2) = cube(9,2);
cube(9,2) = cube(26,2);
cube(26,2) = cube(24,2);
cube(24,2) = tmp;

tmp = cube(7,1);
cube(7,1) = cube(9,3);
cube(9,3) = cube(26,6);
cube(26,6) = cube(24,5);
cube(24,5) = tmp;

tmp = cube(7,5);
cube(7,5) = cube(9,1);
cube(9,1) = cube(26,3);
cube(26,3) = cube(24,6);
cube(24,6) = tmp;

% �� ó��
tmp = cube(8,2);
cube(8,2) = cube(17,2);
cube(17,2) = cube(25,2);
cube(25,2) = cube(15,2);
cube(15,2) = tmp;

tmp = cube(8,1);
cube(8,1) = cube(17,3);
cube(17,3) = cube(25,6);
cube(25,6) = cube(15,5);
cube(15,5) = tmp;