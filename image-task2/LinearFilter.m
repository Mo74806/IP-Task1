function Out =LinearFilter(I,Filter, Postproc)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
Out=zeros(size(I));
pad1=size(Filter,1)-2;
pad2=size(Filter,2)-2;
%add padding  to the image 
B=zeros(size(I,1)+pad1,size(I,2)+pad2);
m=floor(size(Filter,1)/2);
n=floor(size(Filter,2)/2);

%make the new array equal the oraginal with the padding
for i=1:size(I,1)
    for j=1:size(I,2)
         B(i+m,j+n)=I(i,j);      
    end
end
%doing the neighborhood operation
for i=1:size(I,1)-1
    for j=1:size(I,2)-1
        sum=0;
        m=i;
        n=j;
        for x=1:size(Filter,1)
            for y=1:size(Filter,2)
                sum=sum+(B(m,n)*Filter(x,y));
                n=n+1;
            end
            n=j;
            m=m+1;
        end
           if (strcmp(Postproc,'absolute')==1)
            Out(i,j)=abs(sum);
           elseif(strcmp(Postproc,'none')==1)
        Out(i,j)=sum;
        end
    end
end

figure,imshow(Out);
    title('After linear filtering');
    
end

