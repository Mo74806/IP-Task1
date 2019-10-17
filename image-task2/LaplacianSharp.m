function M = LaplacianSharp()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
Filter=[-1 -1 -1; -1 9 -1; -1 -1 -1;];
I=imread('Moon.bmp');
M=LinearFilter(I,Filter, 'cutoff');


end

