%Rohit Kumar Varma
%S5-ECE-A
%AM.EN.U4ECE19059

%Code to read an image and output the image
clc;
clear all;
close all;

inp_img = imread('leena.bmp');%reading the image with imread()
imshow(inp_img);%showing the image with imshow()
title('Input Image');