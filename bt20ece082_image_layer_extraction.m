% name - arbhav chouhan
% id - bt20ece082
% title - layer extraction


clc
clear 
close all;

I = imread('a.jpg');
%showing extract image
%figure1
%imshow(I);
Igray=rgb2gray(I);
figure,imshow(Igray);
title("gray scale image");

% extracting first layer

Ir=I(:,:,1);
%figure2
%imshow(Ir);

% extracting second layer
Ib=I(:,:,2);
%figure3
%imshow(Ib);

% extracting third layer

Ig=I(:,:,3);
%figure4
%imshow(:,:,3);

% making layer zero 
IR=I;
IR(:,:,1)=0;
%figure5
%imshow(IR);

IB=I;
IB(:,:,2)=0;
%figure6
%imshow(IB);

IG=I;
IG(:,:,3)=0;
%figure7
%imshow(IG);

subplot(3,3,1),imshow(I),title("original image");
subplot(3,3,2),imshow(Ir),title("red layer");
subplot(3,3,3),imshow(Ib),title("blue layer");
subplot(3,3,4),imshow(Ig),title("green layer");
subplot(3,3,5),imshow(IR),title("red 0");
subplot(3,3,6),imshow(IB),title("blue 0");
subplot(3,3,7),imshow(IG),title("green 0");



