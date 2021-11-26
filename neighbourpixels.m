%Rohit Kumar Varma
%S5-ECE-A
%AM.EN.U4ECE19059

%4-NEIGHBOUR, 8-NEIGHBOUR, DIAGNOL NEIGHBOUR OF ANY PIXEL
clc;
clear all;
close all;
A = imread('leena.bmp');
originalimage = A;
meanval = mean(mean(A,2),1);
subplot(2,1,1);
imshow(originalimage);
title("Original Image")
prompt = 'Input the the start intensity of the V array: ';
va = input(prompt)
prompt = 'Input the the end intensity of the V array: ';
vb = input(prompt)
prompt = 'Enter the target pixel row: ';
rowno = input(prompt)
prompt = 'Enter the target pixel col: ';
colno = input(prompt)

firstneighbour = zeros(1,3);
secondneighbour = zeros(1,3);
thirdneighbour = zeros(1,3);
fourthneighbour = zeros(1,3);
fifthneighbour = zeros(1,3);
sixthneighbour = zeros(1,3);
seventhneighbour = zeros(1,3);
eigthneighbour = zeros(1,3);
for curr = 1:8
    if curr==1 && (rowno-1>=1) && (colno-1>=1) && (rowno+1<=512) && (colno+1<=512)
        if A(rowno-1,colno)>=va
            if A(rowno-1,colno)<=vb
                firstneighbour(1) = rowno-1;
                firstneighbour(2) = colno;
                firstneighbour(3) = A(rowno-1,colno);
            end
        end  
    end
    if curr==2 && (rowno-1>=1) && (colno-1>=1) && (rowno+1<=512) && (colno+1<=512)
        if A(rowno+1,colno)>=va
            if A(rowno+1,colno)<=vb
                secondneighbour(1) = rowno+1;
                secondneighbour(2) = colno;
                secondneighbour(3) = A(rowno+1,colno);
            end
        end  
    end
    if curr==3 && (rowno-1>=1) && (colno-1>=1) && (rowno+1<=512) && (colno+1<=512)
        if A(rowno,colno+1)>=va
            if A(rowno,colno+1)<=vb
                thirdneighbour(1) = rowno;
                thirdneighbour(2) = colno+1;
                thirdneighbour(3) = A(rowno,colno+1);
            end
        end
    end
    if curr==4 && (rowno-1>=1) && (colno-1>=1) && (rowno+1<=512) && (colno+1<=512)
        if A(rowno, colno-1)>=va
            if A(rowno, colno-1)<=vb
                fourthneighbour(1) = rowno;
                fourthneighbour(2) = colno-1;
                fourthneighbour(3) = A(rowno,colno-1);
            end
        end
    end
   
    if curr==5 && (rowno-1>=1) && (colno-1>=1) && (rowno+1<=512) && (colno+1<=512)
        if A(rowno-1,colno+1)>=va
            if A(rowno-1,colno+1)<=vb
                fifthneighbour(1) = rowno-1;
                fifthneighbour(2) = colno+1;
                fifthneighbour(3) = A(rowno-1,colno+1);
            end
        end  
    end
    if curr==6 && (rowno-1>=1) && (colno-1>=1) && (rowno+1<=512) && (colno+1<=512)
        if A(rowno-1,colno-1)>=va
            if A(rowno-1,colno-1)<=vb
                sixthneighbour(1) = rowno-1;
                sixthneighbour(2) = colno-1;
                sixthneighbour(3) = A(rowno-1,colno-1);
            end
        end  
    end
    if curr==7 && (rowno-1>=1) && (colno-1>=1) && (rowno+1<=512) && (colno+1<=512)
        if A(rowno+1,colno+1)>=va
            if A(rowno+1,colno+1)<=vb
                seventhneighbour(1) = rowno+1;
                seventhneighbour(2) = colno+1;
                seventhneighbour(3) = A(rowno+1,colno+1);
            end
        end
    end
    if curr==8 && (rowno-1>=1) && (colno-1>=1) && (rowno+1<=512) && (colno+1<=512)
        if A(rowno+1, colno-1)>=va
            if A(rowno+1, colno-1)<=vb
                eigthneighbour(1) = rowno+1;
                eigthneighbour(2) = colno-1;
                eigthneighbour(3) = A(rowno+1,colno-1);
            end
        end
    end

end

disp('------------------------------------------------------');
str = "The four neighbourhood of the given pixel is: "+newline;
disp(str);
tableheader = 'rowno colno value'
disp(tableheader);
disp(firstneighbour);
disp(secondneighbour);
disp(thirdneighbour);
disp(fourthneighbour);
disp('------------------------------------------------------');
str2 = "The diagnol neighbourhood of the given pixel is: "+newline;
disp(str2);
disp(fifthneighbour);
disp(sixthneighbour);
disp(seventhneighbour);
disp(eigthneighbour);
disp('------------------------------------------------------');
str3 = "The eight neighbourhood of the given pixel is: "+newline;
disp(str3);
tableheader = 'rowno colno value'
disp(tableheader);
disp(firstneighbour);
disp(secondneighbour);
disp(thirdneighbour);
disp(fourthneighbour);
disp(fifthneighbour);
disp(sixthneighbour);
disp(seventhneighbour);
disp(eigthneighbour);