%Rohit Kumar Varma
%S5-ECE-A
%AM.EN.U4ECE19059
%Histogram
clear all;
clc;
input = imread('leena.bmp');%to input the image
subplot(1,2,1);
imshow(input);
title('Original Image');
yarr = zeros(1,256);
xarr = zeros(1,256);
counter = 1;
h = size(input, 1);%height
w = size(input, 2);%width
for i = 1 : h
    for j = 1 : w%transposing the whole image
       
        xarr(1, input(i,j)) = xarr(1, input(i,j))+1;
          
    end
end
for i=1:256
    yarr(1,counter) = counter;
    counter = counter+1;
end
subplot(1,2,2);
stem(yarr, xarr);
title('Histogram of the given image');


