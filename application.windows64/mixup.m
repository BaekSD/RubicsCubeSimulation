function [hist,cube] = mixup(hist,cube)
% This function randomly mix up a cube.

hist = [];

for kk = 1:3
    t = clock;
    rand('seed',t(6));
    r = int8(rand(3,2)*3); % Make nine random numbers of which range is 0 ~ 3.

    for k = 0:1:r(1,1)
        [hist,cube] = turnU(hist,cube);
    end

    for k = 0:1:r(1,2)
        [hist,cube] = turnD(hist,cube);
    end

    for k = 0:1:r(2,1)
        [hist,cube] = turnF(hist,cube);
    end

    for k = 0:1:r(2,2)
        [hist,cube] = turnB(hist,cube);
    end

    for k = 0:1:r(3,1)
        [hist,cube] = turnR(hist,cube);
    end

    for k = 0:1:r(3,2)
        [hist,cube] = turnL(hist,cube);
    end
end