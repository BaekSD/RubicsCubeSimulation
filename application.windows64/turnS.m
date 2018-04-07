function [hist,cube] = turnS(hist,cube)

hist = [hist;'Sn'];

% 꼭짓점 처리
tmp = cube(21,5);
cube(21,5) = cube(23,6);
cube(23,6) = cube(6,3);
cube(6,3) = cube(4,1);
cube(4,1) = tmp;

tmp = cube(21,6);
cube(21,6) = cube(23,3);
cube(23,3) = cube(6,1);
cube(6,1) = cube(4,5);
cube(4,5) = tmp;

% 변 처리
tmp = cube(13,5);
cube(13,5) = cube(22,6);
cube(22,6) = cube(14,3);
cube(14,3) = cube(5,1);
cube(5,1) = tmp;