function [hist,cube] = OLL(hist,cube)

% This function 역시 안알랴줌

while cube(1,1)~=cube(2,1) || cube(2,1)~=cube(3,1) || cube(3,1)~=cube(4,1) || cube(4,1)~=cube(5,1) || cube(5,1)~=cube(6,1) || cube(6,1)~=cube(7,1) || cube(7,1)~=cube(8,1) || cube(8,1)~=cube(9,1)
    % case1.   OK
    if cube(1,5)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,3)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,3)==cube(5,1) && cube(7,5)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,3)==cube(5,1)
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnFp(hist,cube);
    % case2.   OK
    elseif cube(1,5)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,4)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,3)==cube(5,1) && cube(7,5)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,2)==cube(5,1)
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnS (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnSp(hist,cube);
    % case3.   OK
    elseif cube(1,4)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,1)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,3)==cube(5,1) && cube(7,5)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,2)==cube(5,1)
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnS (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnSp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
    % case4.   OK
    elseif cube(1,5)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,1)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,3)==cube(5,1) && cube(7,2)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,3)==cube(5,1)
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnS (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnSp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
    % case5.   OK
    elseif cube(1,4)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,3)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,5)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,1)==cube(5,1)
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnM (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnMp(hist,cube);
    % case6.   OK
    elseif cube(1,5)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,4)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,3)==cube(5,1) && cube(7,1)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,3)==cube(5,1)
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnMp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnM (hist,cube);
    % case7.   OK
    elseif cube(1,4)==cube(5,1) && cube(2,1)==cube(5,1) && cube(3,3)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,3)==cube(5,1) && cube(7,1)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,2)==cube(5,1)
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnMp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnM (hist,cube);
    % case8.   OK
    elseif cube(1,5)==cube(5,1) && cube(2,1)==cube(5,1) && cube(3,4)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,2)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,1)==cube(5,1)
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnMp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnM (hist,cube);
    % case9.   OK
    elseif cube(1,5)==cube(5,1) && cube(2,1)==cube(5,1) && cube(3,4)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,1)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,3)==cube(5,1)
        [hist,cube] = turnYp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnYp(hist,cube);
        [hist,cube] = turnXp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnX (hist,cube);
    % case10.   OK
    elseif cube(1,4)==cube(5,1) && cube(2,1)==cube(5,1) && cube(3,3)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,3)==cube(5,1) && cube(7,5)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,1)==cube(5,1)
        [hist,cube] = turnYp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnR (hist,cube);
    % case11.   OK
    elseif cube(1,4)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,3)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,1)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,2)==cube(5,1)
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnM (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnMp(hist,cube);
    % case12.  OK
    elseif cube(1,5)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,1)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,2)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,3)==cube(5,1)
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
    % case13.   OK
    elseif cube(1,4)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,3)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,1)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,2)==cube(5,1)
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
    % case14.   OK
    elseif cube(1,5)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,4)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,2)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,1)==cube(5,1)
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnYp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
    % case15.   OK
    elseif cube(1,4)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,3)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,5)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,1)==cube(5,1)
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnMp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnM (hist,cube);
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnMp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnM (hist,cube);
    % case16.   OK
    elseif cube(1,5)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,4)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,1)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,3)==cube(5,1)
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnMp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnM (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnMp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnM (hist,cube);
    % case17.   OK
    elseif cube(1,1)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,4)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,3)==cube(5,1) && cube(7,5)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,1)==cube(5,1)
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnFp(hist,cube);
    % case18.   OK
    elseif cube(1,5)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,1)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,3)==cube(5,1) && cube(7,5)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,1)==cube(5,1)
        [hist,cube] = turnYp(hist,cube); % Y-> Yp
        [hist,cube] = turnR (hist,cube); % F-> R
        [hist,cube] = turnMp(hist,cube); % Rp-> Mp
        [hist,cube] = turnU (hist,cube); % Fp-> U
        [hist,cube] = turnRp(hist,cube); % R-> Rp
        [hist,cube] = turnU (hist,cube); 
        [hist,cube] = turnR (hist,cube); % U-> R
        [hist,cube] = turnU (hist,cube); % F-> U
        [hist,cube] = turnU (hist,cube); % Rp-> U
        [hist,cube] = turnR (hist,cube); % Fp-> R
        [hist,cube] = turnMp(hist,cube); % R-> Mp
        [hist,cube] = turnR(hist,cube); % Up-> R
        [hist,cube] = turnMp(hist,cube); % R-> Mp
        [hist,cube] = turnUp(hist,cube); 
        [hist,cube] = turnR (hist,cube); % Rp-> R
        [hist,cube] = turnUp(hist,cube); % 여기서부터는 새로 다시 쓴것.
        [hist,cube] = turnRp(hist,cube); % 2번째
        [hist,cube] = turnU (hist,cube); % 3번째
        [hist,cube] = turnU (hist,cube); % 4번째
        [hist,cube] = turnR (hist,cube); % 5번째
        [hist,cube] = turnMp(hist,cube); % 6번째
        
        
    % case19.   OK
    elseif cube(1,1)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,1)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,3)==cube(5,1) && cube(7,5)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,3)==cube(5,1)
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnM (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnMp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnMp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnM (hist,cube);
    % case20.   OK
    elseif cube(1,1)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,1)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,3)==cube(5,1) && cube(7,1)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,1)==cube(5,1)
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnM (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnMp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnMp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnM (hist,cube);
    % case21.   OK
    elseif cube(1,5)==cube(5,1) && cube(2,1)==cube(5,1) && cube(3,3)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,5)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,3)==cube(5,1)
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
    % case22.   OK
    elseif cube(1,5)==cube(5,1) && cube(2,1)==cube(5,1) && cube(3,4)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,5)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,2)==cube(5,1)
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
    % case23.   OK
    elseif cube(1,4)==cube(5,1) && cube(2,1)==cube(5,1) && cube(3,4)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,1)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,1)==cube(5,1)
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnDp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnD (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
    % case24.   OK
    elseif cube(1,4)==cube(5,1) && cube(2,1)==cube(5,1) && cube(3,1)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,2)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,1)==cube(5,1)
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnMp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnXp(hist,cube);
    % case25.   OK
    elseif cube(1,1)==cube(5,1) && cube(2,1)==cube(5,1) && cube(3,4)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,5)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,1)==cube(5,1)
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnBp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnB (hist,cube);
    % case26.   OK
    elseif cube(1,5)==cube(5,1) && cube(2,1)==cube(5,1) && cube(3,4)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,2)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,1)==cube(5,1)
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
    % case27. // 여기부터   OK
    elseif cube(1,4)==cube(5,1) && cube(2,1)==cube(5,1) && cube(3,3)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,1)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,2)==cube(5,1)
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
    % case28.   OK
    elseif cube(1,1)==cube(5,1) && cube(2,1)==cube(5,1) && cube(3,1)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,3)==cube(5,1) && cube(7,1)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,1)==cube(5,1)
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnMp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnM (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
    % case29.   OK
    elseif cube(1,1)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,1)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,3)==cube(5,1) && cube(7,5)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,3)==cube(5,1)
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnDp(hist,cube);
        [hist,cube] = turnEp(hist,cube);
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnL (hist,cube);
    % case30.   OK
    elseif cube(1,1)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,1)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,5)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,3)==cube(5,1)
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnF (hist,cube);
    % case31.   OK
    elseif cube(1,1)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,4)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,3)==cube(5,1) && cube(7,1)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,2)==cube(5,1)
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
    % case32.   OK
    elseif cube(1,4)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,1)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,2)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,1)==cube(5,1)
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnBp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnRp(hist,cube);
    % case33.   OK
    elseif cube(1,4)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,1)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,2)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,1)==cube(5,1)
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnFp(hist,cube);
    % case34.   OK
    elseif cube(1,5)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,3)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,1)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,1)==cube(5,1)
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnX (hist,cube);
        [hist,cube] = turnDp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnEp(hist,cube);
        [hist,cube] = turnZp(hist,cube);
    % case35.   OK
    elseif cube(1,1)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,3)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,2)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,1)==cube(5,1)
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
    % case36.   OK
    elseif cube(1,1)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,3)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,3)==cube(5,1) && cube(7,2)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,1)==cube(5,1)
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnR (hist,cube);
    % case37.   OK
    elseif cube(1,4)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,1)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,3)==cube(5,1) && cube(7,1)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,3)==cube(5,1) % 2개
        [hist,cube] = turnXp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnMp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
    % case38.   OK
    elseif cube(1,5)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,1)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,1)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,2)==cube(5,1)
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnBp(hist,cube);
    % case39.   OK
    elseif cube(1,4)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,1)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,1)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,3)==cube(5,1) %(9,1)->(9,3)
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnLp(hist,cube);
    % case40.   OK
    elseif cube(1,1)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,4)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,5)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,1)==cube(5,1)
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
    % case41.   OK
    elseif cube(1,1)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,1)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,2)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,2)==cube(5,1)
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnYp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
    % case42.   OK
    elseif cube(1,1)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,1)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,3)==cube(5,1) && cube(7,2)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,2)==cube(5,1) % 2개 수정
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnM (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnYp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnMp(hist,cube);
    % case43.   OK
    elseif cube(1,1)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,3)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,3)==cube(5,1) && cube(7,1)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,3)==cube(5,1)
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
    % case44.   OK
    elseif cube(1,5)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,1)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,5)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,1)==cube(5,1)
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnS (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnSp(hist,cube);
    % case45.   여기부터여기부터여기부터여기부터여기부터여기부터여기부터여기부터여기부터여기부터여기부터여기부터   OK
    elseif cube(1,5)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,1)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,5)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,1)==cube(5,1)
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
    % case46.   OK
    elseif cube(1,1)==cube(5,1) && cube(2,1)==cube(5,1) && cube(3,3)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,3)==cube(5,1) && cube(7,1)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,3)==cube(5,1)
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
    % case47.   OK
    elseif cube(1,4)==cube(5,1) && cube(2,1)==cube(5,1) && cube(3,3)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,2)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,3)==cube(5,1)
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnF (hist,cube);
    % case48.   OK
    elseif cube(1,5)==cube(5,1) && cube(2,1)==cube(5,1) && cube(3,4)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,3)==cube(5,1) && cube(7,5)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,2)==cube(5,1)
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
    % case49.   OK
    elseif cube(1,4)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,3)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,3)==cube(5,1) && cube(7,2)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,3)==cube(5,1)
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnBp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnR (hist,cube);
    % case50.   OK
    elseif cube(1,5)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,4)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,5)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,2)==cube(5,1)
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnY (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnBp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnFp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnB (hist,cube);
        [hist,cube] = turnRp(hist,cube);
    % case51.   OK
    elseif cube(1,4)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,3)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,2)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,3)==cube(5,1)
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnFp(hist,cube);
    % case52.   OK
    elseif cube(1,4)==cube(5,1) && cube(2,1)==cube(5,1) && cube(3,3)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,3)==cube(5,1) && cube(7,2)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,3)==cube(5,1)
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnD (hist,cube);
        [hist,cube] = turnE (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnB (hist,cube);
    % case53.   OK
    elseif cube(1,5)==cube(5,1) && cube(2,1)==cube(5,1) && cube(3,3)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,3)==cube(5,1) && cube(7,5)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,3)==cube(5,1)
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnMp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnLp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnL (hist,cube);
        [hist,cube] = turnM (hist,cube);
    % case54.   OK
    elseif cube(1,5)==cube(5,1) && cube(2,1)==cube(5,1) && cube(3,3)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,5)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,3)==cube(5,1)
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnMp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnM (hist,cube);
    % case55.   OK
    elseif cube(1,5)==cube(5,1) && cube(2,1)==cube(5,1) && cube(3,3)==cube(5,1) && cube(4,5)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,3)==cube(5,1) && cube(7,5)==cube(5,1) && cube(8,1)==cube(5,1) && cube(9,3)==cube(5,1)
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnF (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnFp(hist,cube);
    % case56.   OK
    elseif cube(1,5)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,3)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,5)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,3)==cube(5,1)
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnMp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnM (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnMp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnM (hist,cube);
    % case57.   OK
    elseif cube(1,1)==cube(5,1) && cube(2,4)==cube(5,1) && cube(3,1)==cube(5,1) && cube(4,1)==cube(5,1) && cube(5,1)==cube(5,1) && cube(6,1)==cube(5,1) && cube(7,1)==cube(5,1) && cube(8,2)==cube(5,1) && cube(9,1)==cube(5,1)
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnMp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnU (hist,cube);
        [hist,cube] = turnR (hist,cube);
        [hist,cube] = turnUp(hist,cube);
        [hist,cube] = turnRp(hist,cube);
        [hist,cube] = turnM (hist,cube);
    else
        [hist,cube] = turnY(hist,cube);
    end
end