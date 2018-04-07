function [hist,cube] = PLL(hist,cube)

% This functionÀ» ³»°¡ ¿Ö¾Ë·ªÁÜ

while cube(1,4)~=cube(2,4) || cube(2,4)~=cube(3,4) || cube(3,3)~=cube(6,3) || cube(6,3)~=cube(9,3) || cube(9,2)~=cube(8,2) || cube(8,2)~=cube(7,2) || cube(7,5)~=cube(4,5) || cube(4,5)~=cube(1,5)
    % case1   OK
    if cube(1,4)==cube(6,3) && cube(1,5)==cube(2,4) && cube(3,3)==cube(8,2) && cube(3,4)==cube(6,3) && cube(9,2)==cube(2,4) && cube(9,3)==cube(4,5)
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
    % case2   OK
    elseif cube(3,3)==cube(4,5) && cube(3,4)==cube(8,2) && cube(7,2)==cube(6,3) && cube(7,5)==cube(8,2) && cube(9,2)==cube(6,3) && cube(9,3)==cube(2,4)
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnBp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
	% case3   OK
    elseif cube(1,4)==cube(6,3) && cube(1,5)==cube(2,4) && cube(3,3)==cube(2,4) && cube(3,4)==cube(4,5) && cube(7,2)==cube(6,3) && cube(7,5)==cube(8,2) && cube(9,2)==cube(4,5) && cube(9,3)==cube(8,2)
        [hist,cube] = turnXp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnD (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnDp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnD (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnDp(hist,cube);
        [hist,cube] = turnX (hist,cube);
    % case4   OK
    elseif cube(1,4)==cube(4,5) && cube(1,5)==cube(2,4) && cube(3,3)==cube(2,4) && cube(3,4)==cube(6,3) && cube(4,5)==cube(9,3) && cube(6,3)==cube(7,5)
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnYp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnX (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnXp(hist,cube);
    % case5   OK
    elseif cube(1,4)==cube(8,2) && cube(1,5)==cube(6,3) && cube(3,3)==cube(2,4) && cube(3,4)==cube(8,2) && cube(9,2)==cube(6,3) && cube(9,3)==cube(4,5)
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnEp(hist,cube);
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnE (hist,cube);
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnYp(hist,cube);
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnL (hist,cube);
    % case6   OK
    elseif cube(3,3)==cube(8,2) && cube(3,4)==cube(6,3) && cube(7,2)==cube(4,5) && cube(7,5)==cube(6,3) && cube(9,2)==cube(4,5) && cube(9,3)==cube(2,4)
        [hist,cube] = turnBp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnEp(hist,cube);
        [hist,cube] = turnBp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnE (hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnB (hist,cube);
    % case7   OK
    elseif cube(3,3)==cube(4,5) && cube(3,4)==cube(6,3) && cube(7,2)==cube(2,4) && cube(7,5)==cube(6,3) && cube(9,2)==cube(2,4) && cube(9,3)==cube(8,2)
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnE (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnEp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
    % case8   OK
    elseif cube(1,4)==cube(4,5) && cube(1,5)==cube(6,3) && cube(3,3)==cube(8,2) && cube(3,4)==cube(4,5) && cube(9,2)==cube(6,3) && cube(9,3)==cube(2,4)
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnBp(hist,cube);
        [hist,cube] = turnYp(hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnE (hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnBp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnBp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnEp(hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnB (hist,cube);
    % case9   OK
    elseif cube(2,4)==cube(7,2) && cube(2,4)==cube(9,2) && cube(8,2)==cube(1,4) && cube(8,2)==cube(3,4) && cube(4,5)==cube(3,3) && cube(4,5)==cube(9,3) && cube(6,3)==cube(1,5) && cube(6,3)==cube(7,5)
        [hist,cube] = turnM (hist,cube);
        [hist,cube] = turnM (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnM (hist,cube);
        [hist,cube] = turnM (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnM (hist,cube);
        [hist,cube] = turnM (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnM (hist,cube);
        [hist,cube] = turnM (hist,cube);
    % case10   OK
    elseif cube(7,2)==cube(8,2) && cube(7,5)==cube(6,3) && cube(9,2)==cube(4,5) && cube(9,3)==cube(6,3)
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnBp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnBp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnB (hist,cube);
    % case11   OK
    elseif cube(1,4)==cube(2,4) && cube(1,5)==cube(6,3) && cube(3,3)==cube(6,3) && cube(3,4)==cube(4,5)
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnBp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnBp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnBp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnBp(hist,cube);
    % case12   OK
    elseif cube(1,4)==cube(2,4) && cube(1,5)==cube(6,3) && cube(9,2)==cube(8,2) && cube(9,3)==cube(4,5)
        [hist,cube] = turnXp(hist,cube);
        [hist,cube] = turnD (hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnDp(hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnD (hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnDp(hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnX (hist,cube);
    % case13   OK
    elseif cube(1,4)==cube(8,2) && cube(1,5)==cube(4,5) && cube(9,2)==cube(2,4) && cube(9,3)==cube(6,3)
        [hist,cube] = turnZ (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnDp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnD (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnDp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnD (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnZp(hist,cube);
    % case14   OK
    elseif cube(7,2)==cube(2,4) && cube(7,5)==cube(8,2) && cube(9,2)==cube(4,5) && cube(9,3)==cube(8,2)
        [hist,cube] = turnYp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
    % case15   OK
    elseif cube(1,4)==cube(8,2) && cube(1,5)==cube(2,4) && cube(3,3)==cube(2,4) && cube(3,4)==cube(4,5)
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
    % case16   OK
    elseif cube(7,2)==cube(6,3) && cube(7,5)==cube(2,4) && cube(9,2)==cube(4,5) && cube(9,3)==cube(2,4)
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnLp(hist,cube);
    % case17   OK
    elseif cube(2,4)==cube(7,2) && cube(2,4)==cube(9,2) && cube(6,3)==cube(1,4) && cube(6,3)==cube(3,4) && cube(8,2)==cube(3,3) && cube(8,2)==cube(9,3)
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnF (hist,cube);
    % case18   OK
    elseif cube(2,4)==cube(3,3) && cube(2,4)==cube(9,3) && cube(6,3)==cube(7,2) && cube(6,3)==cube(9,2) && cube(8,2)==cube(1,4) && cube(8,2)==cube(3,4)
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnF (hist,cube);
    % case19   OK
    elseif cube(1,4)==cube(8,2) && cube(1,5)==cube(2,4) && cube(9,2)==cube(6,3) && cube(9,3)==cube(4,5)
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnX (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnXp(hist,cube);
    % case20   OK
    elseif cube(1,4)==cube(6,3) && cube(1,5)==cube(8,2) && cube(9,2)==cube(2,4) && cube(9,3)==cube(4,5)
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnBp(hist,cube);
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnBp(hist,cube);
    % case21   OK
    elseif cube(2,4)==cube(1,5) && cube(2,4)==cube(7,5) && cube(4,5)==cube(1,4) && cube(4,5)==cube(3,4) && cube(6,3)==cube(7,2) && cube(6,3)==cube(9,2) && cube(8,2)==cube(3,3) && cube(8,2)==cube(9,3)
        [hist,cube] = turnM (hist,cube);
        [hist,cube] = turnM (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnM (hist,cube);
        [hist,cube] = turnM (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnMp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnM (hist,cube);
        [hist,cube] = turnM (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnMp(hist,cube);
        [hist,cube] = turnU (hist,cube);
    else
        [hist,cube] = turnU(hist,cube);
    end
end

while cube(1,4)~=cube(10,4)
    [hist,cube] = turnU(hist,cube);
end