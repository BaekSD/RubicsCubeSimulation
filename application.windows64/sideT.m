function [hist,cube] = sideT(hist,cube)

% This function ¾È¾Ë·ªÁÜ

while cube(1,1)~=cube(5,1) || cube(3,1)~=cube(5,1) || cube(7,1)~=cube(5,1) || cube(9,1)~=cube(5,1) || cube(1,4)~=cube(11,4) || cube(3,4)~=cube(11,4) || cube(7,2)~=cube(16,2) || cube(9,2)~=cube(16,2)
    if cube(9,1)~=cube(5,1) || cube(9,2)~=cube(16,2)
        if cube(1,1)==cube(5,1) && cube(1,4)==cube(16,2)
            [hist,cube] = turnB(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnBp(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnRp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnR(hist,cube);
        elseif cube(1,4)==cube(5,1) && cube(1,5)==cube(16,2)
            [hist,cube] = turnB(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnBp(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnF(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnFp(hist,cube);
        elseif cube(1,5)==cube(5,1) && cube(1,1)==cube(16,2)
            [hist,cube] = turnLp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnL(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnRp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnR(hist,cube);
        elseif cube(3,1)==cube(5,1) && cube(3,3)==cube(16,2)
            [hist,cube] = turnBp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnB(hist,cube);
            [hist,cube] = turnF(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnFp(hist,cube);
        elseif cube(3,3)==cube(5,1) && cube(3,4)==cube(16,2)
            [hist,cube] = turnR(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnRp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnF(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnFp(hist,cube);
        elseif cube(3,4)==cube(5,1) && cube(3,1)==cube(16,2)
            [hist,cube] = turnBp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnB(hist,cube);
            [hist,cube] = turnRp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnR(hist,cube);
        elseif cube(7,1)==cube(5,1) && cube(7,5)==cube(16,2)
            [hist,cube] = turnL(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnLp(hist,cube);
            [hist,cube] = turnRp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnR(hist,cube);
        elseif cube(7,5)==cube(5,1) && cube(7,2)==cube(16,2)
            [hist,cube] = turnFp(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnF(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnF(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnFp(hist,cube);
        elseif cube(7,2)==cube(5,1) && cube(7,1)==cube(16,2)
            [hist,cube] = turnFp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnF(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnRp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnR(hist,cube);
        elseif cube(9,2)==cube(5,1) && cube(9,3)==cube(16,2)
            [hist,cube] = turnF(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnFp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnF(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnFp(hist,cube);
        elseif cube(9,3)==cube(5,1) && cube(9,1)==cube(16,2)
            [hist,cube] = turnRp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnR(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnRp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnR(hist,cube);
        elseif cube(18,4)==cube(5,1) && cube(18,6)==cube(16,2)
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnF(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnFp(hist,cube);
        elseif cube(18,5)==cube(5,1) && cube(18,4)==cube(16,2)
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnRp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnR(hist,cube);
        elseif cube(18,6)==cube(5,1) && cube(18,5)==cube(16,2)
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnRp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnR(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnRp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnR(hist,cube);
        elseif cube(20,3)==cube(5,1) && cube(20,6)==cube(16,2)
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnF(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnFp(hist,cube);
        elseif cube(20,4)==cube(5,1) && cube(20,3)==cube(16,2)
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnRp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnR(hist,cube);
        elseif cube(20,6)==cube(5,1) && cube(20,4)==cube(16,2)
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnRp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnR(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnRp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnR(hist,cube);
        elseif cube(24,2)==cube(5,1) && cube(24,5)==cube(16,2)
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnRp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnR(hist,cube);
        elseif cube(24,5)==cube(5,1) && cube(24,6)==cube(16,2)
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnF(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnFp(hist,cube);
        elseif cube(24,6)==cube(5,1) && cube(24,2)==cube(16,2)
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnRp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnR(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnRp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnR(hist,cube);
        elseif cube(26,2)==cube(5,1) && cube(26,6)==cube(16,2)
            [hist,cube] = turnF(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnFp(hist,cube);
        elseif cube(26,3)==cube(5,1) && cube(26,2)==cube(16,2)
            [hist,cube] = turnRp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnR(hist,cube);
        elseif cube(26,6)==cube(5,1) && cube(26,3)==cube(16,2)
            [hist,cube] = turnRp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnR(hist,cube);
            [hist,cube] = turnD(hist,cube);
            [hist,cube] = turnRp(hist,cube);
            [hist,cube] = turnDp(hist,cube);
            [hist,cube] = turnR(hist,cube);
        end
    end
    
    if cube(1,1)~=cube(5,1) || cube(3,1)~=cube(5,1) || cube(7,1)~=cube(5,1) || cube(9,1)~=cube(5,1) || cube(1,4)~=cube(11,4) || cube(3,4)~=cube(11,4) || cube(7,2)~=cube(16,2) || cube(9,2)~=cube(16,2)
        [hist,cube] = turnYp(hist,cube);
    end
end