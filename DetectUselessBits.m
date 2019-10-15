function  BIs  = DetectUselessBits(Img, Per)
    index=1;
    sum=0;
    Img1 = rgb2gray(Img);
    [H,W,C]=size(Img1);
   
    for x=0:7
        sum=0;
       for i=1:H
          for j=1:W
              a=Img1(i ,j);
              b=2^x;
              z=bitand(a,b);
              if(z~=0)
               sum=sum+1;
              end
          end
       end
        
           if sum<H*W*(Per/100)
               BIs(index)=x+1;
               index=index+1;
           end
            
    end
    return ;
end


