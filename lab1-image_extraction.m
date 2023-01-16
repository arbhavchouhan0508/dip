clc
clear all;
close all;
I = imread('a.jpg');
%showing extract image
%figure1
imshow(I);

% extracting first layer

Ir=I(:,:,1);
%figure2
imshow(Ir);

% extracting second layer
Ib=I(:,:,2);
%figure3
imshow(Ib);

% extracting third layer

Ig=I(:,:,3);
%figure4
imshow(:,:,3);

% making layer zero 
IR=I;
IR(:,:,1)=0;
%figure5
imshow(IR);

IB=I;
IB(:,:,2)=0;
%figure6
imshow(IB);

IG=I;
IG(:,:,3)=0;
%figure7
imshow(IG);

