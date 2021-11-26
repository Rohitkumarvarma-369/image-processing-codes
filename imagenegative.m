%Rohit Kumar Varma
%S5-ECE-A
%AM.EN.U4ECE19059
%Image Negative

clc;
clear all;
close all;
input = imread('leena.bmp');%reading the image with imread()
subplot(2,1,1);
imshow(input);
title('Original Image');
[m,n] = size(input);

for i=1:m
    for j=1:n
        input(i,j) = 255-input(i,j);
    end
end

subplot(2,1,2);
imshow(input);
title('Image Negative Transform');