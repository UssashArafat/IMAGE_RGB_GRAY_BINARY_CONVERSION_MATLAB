%--------------------------------------------
% Semester: FALL 2020
% Course: ECE 551
% Designer: Ussash Arafat

% Computer Assignment 1
% Problem 5
%           (Conversion image)
%--------------------------------------------
clear;
clc;

IMAGE = imread('panda.jpg');                      %Read the original image
IMAGE_GRAY = rgb2gray(IMAGE);          %Converting RGB image to GRAY image
[GRAY_ROW,GRAY_COLUMN]=size(IMAGE_GRAY); %Determine the size of the GRAY image
IMAGE_BINARY = zeros(GRAY_ROW,GRAY_COLUMN); %Creating a matrix with same size as GRAY image
                          
%Comparing every element value with the threshold and assign 0 or 1 to the binary matrix                                        
for ROW = 1:GRAY_ROW
    for COLUMN = 1:GRAY_COLUMN
        if IMAGE_GRAY(ROW,COLUMN)>80
            IMAGE_BINARY(ROW,COLUMN) =1;
        else
            IMAGE_BINARY(ROW,COLUMN) =0;
        end
    end
end
                                                       % Display the images 
subplot (1,3,1), imshow(IMAGE), title('Original RGB Image')
subplot (1,3,2), imshow(IMAGE_GRAY), title('GRAY Image')
subplot (1,3,3), imshow(IMAGE_BINARY), title('Binary Image')
