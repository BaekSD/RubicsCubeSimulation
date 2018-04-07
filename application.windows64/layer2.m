function [hist,cube] = layer2(hist, cube)
% This function solve second layer of the cube if the state of the cube is
% already reached T-shaped-side.

[hist,cube] = turnZ(hist,cube);
[hist,cube] = turnZ(hist,cube);

while cube(10,4)~=cube(11,4) || cube(12,4)~=cube(11,4) || cube(12,3)~=cube(14,3) || cube(17,3)~=cube(14,3) || cube(17,2)~=cube(16,2) || cube(15,2)~=cube(16,2) || cube(10,5)~=cube(13,5) || cube(15,5)~=cube(13,5)
    % 우측으로
    if cube(16,2)==cube(2,4) && cube(14,3)==cube(2,1)
        [hist,cube] = turnUp(hist,cube);
    elseif cube(16,2)==cube(6,3) && cube(14,3)==cube(6,1)
        [hist,cube] = turnU(hist,cube);
        [hist,cube] = turnU(hist,cube);
    elseif cube(16,2)==cube(8,2) && cube(14,3)==cube(8,1)
        [hist,cube] = turnU(hist,cube);
    end
    if cube(16,2)==cube(4,5) && cube(14,3)==cube(4,1)
        [hist,cube] = turnR(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnU(hist,cube);
        [hist,cube] = turnF(hist,cube);
    end
    
    % 좌측으로
    if cube(14,3)==cube(4,5) && cube(16,2)==cube(4,1)
        [hist,cube] = turnU(hist,cube);
    elseif cube(14,3)==cube(6,3) && cube(16,2)==cube(6,1)
        [hist,cube] = turnUp(hist,cube);
    elseif cube(14,3)==cube(8,2) && cube(16,2)==cube(8,1)
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
    end
    if cube(14,3)==cube(2,4) && cube(16,2)==cube(2,1)
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnU(hist,cube);
        [hist,cube] = turnF(hist,cube);
        [hist,cube] = turnU(hist,cube);
        [hist,cube] = turnR(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
    end
    
    % 3층에서 2층으로 넣을 조각 없을때. 단, 완료된것은 아님
    if (cube(2,1)==cube(5,1) || cube(2,4)==cube(5,1)) && (cube(4,1)==cube(5,1) || cube(4,5)==cube(5,1)) && (cube(6,1)==cube(5,1) || cube(6,3)==cube(5,1)) && (cube(8,1)==cube(5,1) || cube(8,2)==cube(5,1))
        if cube(16,2)==cube(17,3) && cube(14,3)==cube(17,2)
            [hist,cube] = turnR(hist,cube);
            [hist,cube] = turnUp(hist,cube);
            [hist,cube] = turnRp(hist,cube);
            [hist,cube] = turnUp(hist,cube);
            [hist,cube] = turnFp(hist,cube);
            [hist,cube] = turnU(hist,cube);
            [hist,cube] = turnF(hist,cube);
            [hist,cube] = turnUp(hist,cube);
            [hist,cube] = turnR(hist,cube);
            [hist,cube] = turnUp(hist,cube);
            [hist,cube] = turnRp(hist,cube);
            [hist,cube] = turnUp(hist,cube);
            [hist,cube] = turnFp(hist,cube);
            [hist,cube] = turnU(hist,cube);
            [hist,cube] = turnF(hist,cube);
        elseif cube(16,2)~=cube(17,2) || cube(14,3)~=cube(17,3)
            [hist,cube] = turnR(hist,cube);
            [hist,cube] = turnUp(hist,cube);
            [hist,cube] = turnRp(hist,cube);
            [hist,cube] = turnUp(hist,cube);
            [hist,cube] = turnFp(hist,cube);
            [hist,cube] = turnU(hist,cube);
            [hist,cube] = turnF(hist,cube);
        end
    end
    
    if cube(10,4)~=cube(11,4) || cube(12,4)~=cube(11,4) || cube(12,3)~=cube(14,3) || cube(17,3)~=cube(14,3) || cube(17,2)~=cube(16,2) || cube(15,2)~=cube(16,2) || cube(10,5)~=cube(13,5) || cube(15,5)~=cube(13,5)
        [hist,cube] = turnY(hist,cube);
    end
end