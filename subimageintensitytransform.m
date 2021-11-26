%Rohit Kumar Varma
%S5-ECE-A
%AM.EN.U4ECE19059
%8X8 subimage intensity mean
clc;
clear all;
close all;
clear all;
clc;
input = imread('leena.bmp');%to input the image
[row, col]=size(input);
output = input;
for i=1:7:row-8%DIVIDING INTO 8X8 subimages
    for j=1:7:col-8
        tempa =1;
        tempb = 1;
        for a=i:i+7
            for b=j:j+7
                m(tempa,tempb) = input(a,b);
                tempb = tempb+1;
            end
            tempa = tempa+1;
            tempb = 1;
        end
        meanval = mean2(m);
        disp(meanval);
        for a=i:i+7
            for b=j:j+7
                if input(a,b)>=meanval
                    output(a,b) = 255;
                else
                    output(a,b) = 0;
                end
            end
        end
        
    end
end
subplot(2,1,1);
imshow(input);
title('Original Image');
subplot(2,1,2);
imshow(output);
title('Thresholded 8X8 subimages');

