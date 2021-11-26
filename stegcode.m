%Rohit Kumar Varma
%S5-ECE-A
%AM.EN.U4ECE19059
%NOTE: for getting the proper output, please change the directory in the last two
%lines to any directory in your computer like Downloads, Documents, etc.
clear all;
clc;
input = imread('leena.bmp');%to input the image
input=imresize(input, [512 512]);%resizing the image
message='imageprocessing';%initialize the message to embed into the image
%-------------------------------------------------------------------------%
len = length(message) * 8;%storing the length of the message
disp(len);
%-------------------------------------------------------------------------%
ascii_value = uint8(message);%stroring the ascii values of the message w.r.t each character
disp(ascii_value);
disp('---');
%-------------------------------------------------------------------------%
bin_message = transpose(dec2bin(ascii_value, 8));%converting the binary ascii values into binary value (8-bit binary)
disp(bin_message);
disp('---');
%-------------------------------------------------------------------------%
bin_message = bin_message(:);%to store all the rows of the binary value
disp(bin_message);
disp('---');
%-------------------------------------------------------------------------%
N = length(bin_message);
disp(N);
disp('---');
%-------------------------------------------------------------------------%
bin_num_message=str2num(bin_message);%as the binary value is in string format we convert into numerical data to manipulate the image
disp(bin_num_message);
disp('---');
%-------------------------------------------------------------------------%
output = input;%initialzing the output image same as input image and then later we modify it with the required bits
  
h = size(input, 1);%height
w = size(input, 2);%width
counter = 1;
  
for i = 1 : h
    for j = 1 : w%transposing the whole image
          
        if(counter <= len)%checking if the current counter is less than the total length of the bits of the message binary value
              
            LSB = mod(double(input(i, j)), 2);%finding the LSB of the given pixel and setting it to double precision
                          
            output(i, j) = input(i, j) - mod(double(input(i, j)), 2) + bin_num_message(counter);%we will subtract the LSB from the current pixel and
            %we will add the current value of the binary value of the
            %message by accessing it with the counter variable
              
            counter = counter+1;%increment the counter variable to load the next binary value
        end
          
    end
end
imwrite(input, 'C:\Users\rovar\Documents\dclab\Code and Output test\Code-and-Output\originalImage.png');%output the image to the required folder (CHANGE THE FOLDER TO APPROPIRATE PATH OF YOU COMPUTER LIKE DOWNLOADS, etc)
imwrite(output, 'C:\Users\rovar\Documents\dclab\Code and Output test\Code-and-Output\stegoImage.png');

decryptinput = imread('stegoImage.png');%to input the image
k = 1;
message_in_bits='';
for i = 1 : h
    for j = 1 : w%transposing the whole image
        if(k<=len)
            LSB=mod(decryptinput(i,j),2);%finding the LSB of the given pixel and setting it to double precision
            message_in_bits=append(message_in_bits,num2str(LSB));
            k = k+1;
        end
    end
end
%Converting the bit sequence into the original message
i=1;
original_message='';
while i<=len
    %Take a set of 8 bits at a time
    %Convert the set of bits to a decimal number
    %Convert the decimal number which is the ascii value to its corresponding character
    %Append the obtained character into the resultant string
    original_message=append(original_message,char(bin2dec(message_in_bits(1,i:i+7))));
    i=i+8;
end
disp(['The original message is: ',original_message]);
