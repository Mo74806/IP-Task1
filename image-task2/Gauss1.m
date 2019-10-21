function M = Gauss1(Size,Sig)
M(1:Size,1:Size)=0;
i=1;
for x = -Size/2:Size/2 
    j=1;
    for y = -Size/2:Size/2
       M(i,j) = (1/(2*pi*Sig.^2)) * exp(- (x.^2+y.^2) / (2*Sig.^2));
       j=j+1;
    end
    i=i+1;
end

I=imread('Joker.bmp');
LinearFilter( I,M, 'none' );
end
 

