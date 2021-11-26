%Rohit Kumar Varma
%S5-ECE-A
%AM.EN.U4ECE19059
%Log transform
clc;
clear all;
close all;
input = imread('leena.bmp');%to input the image
inputbefore = input;
h = size(input, 1);%height
w = size(input, 2);%width
for i = 1 : h
    for j = 1 : w%transposing the whole image
        if (input(i,j)<=100)
            input(i,j) = input(i,j);
        elseif (input(i,j)>100 && input(i,j)<=200)
            input(i,j) = 100;
        else
            input(i,j) = input(i,j);
        end
    end
end
inputafter = input;
subplot(1,2,1), imshow(inputbefore);
title('original image');
subplot(1,2,2), imshow(inputafter);
title('Piece-wise Transformed image');