function M = Gauss1(Size,Sig)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

a(1:size(1),1:size(2))=0;
n = (Size(1));
m = (Size(2));
for i=1:n
    for j=1:m
        a(i,j)=((0.5*22)/(7*(Sig.^2)))*(exp(-1*((i.^2)+(j.^2))/(2*(Sig.^2))));
       
    end
end

I=imread('Joker.bmp');
M=LinearFilter(I,a, 'none');


end

