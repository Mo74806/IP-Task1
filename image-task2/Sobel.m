function M = Sobel(Mask)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
if Mask == 'H'
    Filter=[-1 -2 -1; 0 0 0; 1 2 1;];
end
if Mask=='V'
    Filter=[-1 0 1; -2 0 2; -1 0 1;];
end
I=imread('Joker.bmp');
M=LinearFilter(I,Filter, 'absolute');


end

