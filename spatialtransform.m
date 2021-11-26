%Rohit Kumar Varma
%S5-ECE-A
%AM.EN.U4ECE19059
%Spatial image transformation. 
%Take an image, convert it into a matrix in matlab, read the image and make the matrix,
%find the mean value of all the intensities in the image, traverse the whole image and check if the intensity is greater than or less than the mean, 
%if greater than, replace it with 255, less than make it 0
clc;
clear all;
close all;
A = imread('leena.bmp');
originalimage = A;
meanval = mean(mean(A,2),1);
subplot(2,1,1);
imshow(originalimage);
title("Original Image");
for r = 1:size(A, 1)    % for number of rows of the image
    for c = 1:size(A, 2)    % for number of columns of the image
        if A(r,c)>=meanval
            A(r,c) = 255;
        elseif A(r,c)<meanval
            A(r,c) = 0;
        end
    end
end
modifiedimage = A;
subplot(2,1,2);
imshow(modifiedimage);
title("Processed Image");