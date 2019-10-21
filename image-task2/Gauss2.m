function M = Gauss2(Sig)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
N = 3.7 *Sig -0.5;
Size = 2 * N + 1 ;
i=1;
j=1;
for x = -Size/2:Size/2 
    j=1;
    for y = -Size/2:Size/2
       M(i,j) = (1/(2*pi*Sig.^2)) * exp(- (x.^2+y.^2) / (2*Sig.^2));
       j=j+1;
    end
    i=i+1;
end

I=imread('Joker.bmp');
M=LinearFilter(I,M, 'none');

end

