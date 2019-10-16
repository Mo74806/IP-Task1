function M = MeanMask(Rows,Column)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
Filter(1:Rows,1:Column)=1/Rows*Column;
I=imread('Joker.bmp');
M=LinearFilter(I,Filter, 'none');
end

