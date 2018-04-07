function [hist,cube] = topcross(hist,cube)
% This function makes top layer croS shape.

hist = [];

while cube(2,1)~=cube(5,1) || cube(4,1)~=cube(5,1) || cube(6,1)~=cube(5,1) || cube(8,1)~=cube(5,1) || cube(2,4)~=cube(11,4) || cube(4,5)~=cube(13,5) || cube(6,3)~=cube(14,3) || cube(8,2)~=cube(16,2)
    if cube(2,1)==cube(5,1) && cube(4,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(8,1)==cube(5,1) && cube(2,4)==cube(14,3) && cube(4,5)==cube(11,4) && cube(6,3)==cube(16,2) && cube(8,2)==cube(13,5)
        [hist,cube] = turnU(hist,cube);
    elseif cube(2,1)==cube(5,1) && cube(4,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(8,1)==cube(5,1) && cube(2,4)==cube(16,2) && cube(4,5)==cube(14,3) && cube(6,3)==cube(13,5) && cube(8,2)==cube(11,4)
        [hist,cube] = turnU(hist,cube);
        [hist,cube] = turnU(hist,cube);
    elseif cube(2,1)==cube(5,1) && cube(4,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(8,1)==cube(5,1) && cube(2,4)==cube(13,5) && cube(4,5)==cube(16,2) && cube(6,3)==cube(11,4) && cube(8,2)==cube(14,3)
        [hist,cube] = turnUp(hist,cube);
    elseif cube(2,1)==cube(5,1) && cube(2,4)==cube(16,2)
        [hist,cube] = turnBp(hist,cube);
        [hist,cube] = turnBp(hist,cube);
        [hist,cube] = turnDp(hist,cube);
        [hist,cube] = turnDp(hist,cube);
        [hist,cube] = turnF(hist,cube);
        [hist,cube] = turnF(hist,cube);
    elseif cube(2,1)==cube(16,2) && cube(2,4)==cube(5,1)
        [hist,cube] = turnBp(hist,cube);
        [hist,cube] = turnR(hist,cube);
        [hist,cube] = turnDp(hist,cube);
        [hist,cube] = turnF(hist,cube);
        [hist,cube] = turnF(hist,cube);
        [hist,cube] = turnRp(hist,cube);
    elseif cube(4,1)==cube(5,1) && cube(4,5)==cube(16,2)
        [hist,cube] = turnL(hist,cube);
        [hist,cube] = turnL(hist,cube);
        [hist,cube] = turnD(hist,cube);
        [hist,cube] = turnF(hist,cube);
        [hist,cube] = turnF(hist,cube);
    elseif cube(4,1)==cube(16,2) && cube(4,5)==cube(5,1)
        [hist,cube] = turnL(hist,cube);
        [hist,cube] = turnF(hist,cube);
    elseif cube(6,1)==cube(5,1) && cube(6,3)==cube(16,2)
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnDp(hist,cube);
        [hist,cube] = turnF(hist,cube);
        [hist,cube] = turnF(hist,cube);
    elseif cube(6,1)==cube(16,2) && cube(6,3)==cube(5,1)
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
    elseif cube(8,1)==cube(16,2) && cube(8,2)==cube(5,1)
        [hist,cube] = turnF(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnDp(hist,cube);
        [hist,cube] = turnR(hist,cube);
        [hist,cube] = turnF(hist,cube);
        [hist,cube] = turnF(hist,cube);
    elseif cube(10,4)==cube(5,1) && cube(10,5)==cube(16,2)
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnD(hist,cube);
        [hist,cube] = turnL(hist,cube);
        [hist,cube] = turnF(hist,cube);
        [hist,cube] = turnF(hist,cube);
    elseif cube(10,4)==cube(16,2) && cube(10,5)==cube(5,1)
        [hist,cube] = turnB(hist,cube);
        [hist,cube] = turnDp(hist,cube);
        [hist,cube] = turnDp(hist,cube);
        [hist,cube] = turnBp(hist,cube);
        [hist,cube] = turnF(hist,cube);
        [hist,cube] = turnF(hist,cube);
    elseif cube(12,4)==cube(5,1) && cube(12,3)==cube(16,2)
        [hist,cube] = turnR(hist,cube);
        [hist,cube] = turnDp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnF(hist,cube);
        [hist,cube] = turnF(hist,cube);
    elseif cube(12,4)==cube(16,2) && cube(12,3)==cube(5,1)
        [hist,cube] = turnBp(hist,cube);
        [hist,cube] = turnDp(hist,cube);
        [hist,cube] = turnDp(hist,cube);
        [hist,cube] = turnB(hist,cube);
        [hist,cube] = turnF(hist,cube);
        [hist,cube] = turnF(hist,cube);
    elseif cube(15,5)==cube(5,1) && cube(15,2)==cube(16,2)
        [hist,cube] = turnF(hist,cube);
    elseif cube(15,5)==cube(16,2) && cube(15,2)==cube(5,1)
        [hist,cube] = turnL(hist,cube);
        [hist,cube] = turnD(hist,cube);
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnF(hist,cube);
        [hist,cube] = turnF(hist,cube);
    elseif cube(17,3)==cube(5,1) && cube(17,2)==cube(16,2)
        [hist,cube] = turnFp(hist,cube);
    elseif cube(17,3)==cube(16,2) && cube(17,2)==cube(5,1)
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnDp(hist,cube);
        [hist,cube] = turnR(hist,cube);
        [hist,cube] = turnF(hist,cube);
        [hist,cube] = turnF(hist,cube);
    elseif cube(19,6)==cube(5,1) && cube(19,4)==cube(16,2)
        [hist,cube] = turnDp(hist,cube);
        [hist,cube] = turnDp(hist,cube);
        [hist,cube] = turnF(hist,cube);
        [hist,cube] = turnF(hist,cube);
    elseif cube(19,6)==cube(16,2) && cube(19,4)==cube(5,1)
        [hist,cube] = turnDp(hist,cube);
        [hist,cube] = turnR(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
    elseif cube(21,6)==cube(5,1) && cube(21,5)==cube(16,2)
        [hist,cube] = turnD(hist,cube);
        [hist,cube] = turnF(hist,cube);
        [hist,cube] = turnF(hist,cube);
    elseif cube(21,6)==cube(16,2) && cube(21,5)==cube(5,1)
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnF(hist,cube);
        [hist,cube] = turnL(hist,cube);
    elseif cube(23,6)==cube(5,1) && cube(23,3)==cube(16,2)
        [hist,cube] = turnDp(hist,cube);
        [hist,cube] = turnF(hist,cube);
        [hist,cube] = turnF(hist,cube);
    elseif cube(23,6)==cube(16,2) && cube(23,3)==cube(5,1)
        [hist,cube] = turnR(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
    elseif cube(25,6)==cube(5,1) && cube(25,2)==cube(16,2)
        [hist,cube] = turnF(hist,cube);
        [hist,cube] = turnF(hist,cube);
    elseif cube(25,6)==cube(16,2) && cube(25,2)==cube(5,1)
        [hist,cube] = turnD(hist,cube);
        [hist,cube] = turnR(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
    end
    
    if cube(2,1)~=cube(5,1) || cube(4,1)~=cube(5,1) || cube(6,1)~=cube(5,1) || cube(8,1)~=cube(5,1) || cube(2,4)~=cube(11,4) || cube(4,5)~=cube(13,5) || cube(6,3)~=cube(14,3) || cube(8,2)~=cube(16,2)
        [hist,cube] = turnY(hist,cube);
    end
end

end