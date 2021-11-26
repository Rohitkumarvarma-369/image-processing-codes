%Rohit Kumar Varma
%S5-ECE-A
%AM.EN.U4ECE19059
%Averaging Filter
clc;
clear all;
close all;
input = imread('leena.bmp');%reading the image with imread()
subplot(2,1,1);
imshow(input);
title('Original Image');
[m,n] = size(input);
filtered_img = zeros(m,n);
for i = 1:m-2
    for j = 1:n-2
        filtered_img(i+1,j+1) = mean2(input(i:i+2,j:j+2));
    end
end
filtered_img = uint8(filtered_img);
subplot(2,1,2);
imshow(filtered_img);
title('Average filter on input image');
