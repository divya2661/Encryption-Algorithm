for i=1:160
    for j=1:160
        d(i,j)=k(i,j)+c(i,j);
        if d(i,j)==2
            d(i,j)=0;
        end
    end
    

end
imshow(d);
