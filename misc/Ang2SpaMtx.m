function [mtx] = Ang2SpaMtx(numAnt)
%A2SMTX �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
mtx = zeros(numAnt,numAnt);
spaSig = zeros(numAnt,1);
for indexCol = 1:numAnt               
    for indexRow = 1:numAnt  
        virPhi = (indexCol-1)*2*pi/numAnt;   % virtual Angle
        spaSig(indexRow) = exp(-1j*(indexRow-1)*virPhi);
    end
    mtx(:,indexCol) = spaSig;                             % every column is a direction vector
end

mtx = mtx/sqrt(numAnt);

