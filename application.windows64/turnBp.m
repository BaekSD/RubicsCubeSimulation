function [hist,cube] = turnBp(hist,cube)

hist = [hist;'Bp'];

% 꼭짓점 처리
tmp = cube(18,4);
cube(18,4) = cube(20,4);
cube(20,4) = cube(3,4);
cube(3,4) = cube(1,4);
cube(1,4) = tmp;

tmp = cube(18,5);
cube(18,5) = cube(20,6);
cube(20,6) = cube(3,3);
cube(3,3) = cube(1,1);
cube(1,1) = tmp;

tmp = cube(18,6);
cube(18,6) = cube(20,3);
cube(20,3) = cube(3,1);
cube(3,1) = cube(1,5);
cube(1,5) = tmp;

% 변 처리
tmp = cube(10,4);
cube(10,4) = cube(19,4);
cube(19,4) = cube(12,4);
cube(12,4) = cube(2,4);
cube(2,4) = tmp;

tmp = cube(10,5);
cube(10,5) = cube(19,6);
cube(19,6) = cube(12,3);
cube(12,3) = cube(2,1);
cube(2,1) = tmp;