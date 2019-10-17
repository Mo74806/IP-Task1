function M = Gauss2(Sig)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
N = 3.7 *Sig *0.5;
MaskSize = 2 * N + 1 ;
a(1:(MaskSize/2),1:(MaskSize/2))=0;
m=MaskSize/2;
for i=1:m
    for j=1:m
        a(i,j)=((0.5*22)/(7*(Sig.^2)))*(exp(-1*((i.^2)+(j.^2))/(2*(Sig.^2))));   
    end
end

I=imread('Joker.bmp');
M=LinearFilter(I,a, 'none');

end

