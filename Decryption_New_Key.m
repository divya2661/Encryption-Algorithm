img=imread('lena1.jpg');
BW = im2bw(img,0.4);
r= 4; 
x(1) = .430001;
N    = 25599;
 for i = 1:N
    x(i+1) = r*x(i)*(1 - x(i));
        %disp(x(i+1))
 end
 for i=0:N
    if x(i+1)>.65
        x(i+1)=1;
    else
        x(i+1)=0;
    end
 end
 [mat,padded] = vec2mat(x,160);
 lf=find(mat);
for i=1:160
    for j=1:160
        k1(i,j)=BW(i,j)*mat(i,j);
        d1(i,j)=k1(i,j)+c(i,j);
        if d1(i,j)==2
            d1(i,j)=0;
        end
 
    end
    

end

imshow(d1);
save('key.mat','k');