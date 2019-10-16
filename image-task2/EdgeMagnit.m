function G = EdgeMagnit(I)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
a=(size(I));
b=(size(I));
a=Sobel('H');
b=Sobel('V');
G=a+b;
figure,imshow(G);
    title('After edge magnit');
end

