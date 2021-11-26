%Rohit Kumar Varma
%S5-ECE-A
%AM.EN.U4ECE19059
%Log transform
clc;
clear all;
close all;
input = imread('leena.bmp');%reading the image with imread()
subplot(2,2,1);
imshow(input);
title('Original Image');
subplot(2,2,2);
histogram(input);
input = double(input)/255;
c=2;
output = c*log(1 + (input)); % Log Transform
subplot(2,2,3);
imshow(input);
title('Log Transform');
subplot(2,2,4);
histogram(input);