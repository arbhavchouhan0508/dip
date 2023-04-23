
% name - arbhav chouhan
% id - bt20ece082
% tittle - bit plane slicing


%reading the input image
clc;
clear;
close all;
A=imread("lena.png");
[m,n]=size(A);

%bit 7 plane
for i=1:m
    for j=1:n
        B7(i,j)=bitand(A(i,j),128);
    end
end

%bit 6 plane
for i=1:m
    for j=1:n
        B6(i,j)=bitand(A(i,j),64);
    end
end

%bit 5 plane
for i=1:m
    for j=1:n
        B5(i,j)=bitand(A(i,j),32);
    end
end

%bit 4 plane
for i=1:m
    for j=1:n
        B4(i,j)=bitand(A(i,j),16);
    end
end

%bit 3 plane
for i=1:m
    for j=1:n
        B3(i,j)=bitand(A(i,j),8);
    end
end

%bit 2 plane
for i=1:m
    for j=1:n
        B2(i,j)=bitand(A(i,j),4);
    end
end

%bit 1 plane
for i=1:m
    for j=1:n
        B1(i,j)=bitand(A(i,j),2);
    end
end

%bit 0 plane
for i=1:m
    for j=1:n
        B0(i,j)=bitand(A(i,j),0);
    end
end


%result
subplot(3,4,1),imshow(A),title("original image");
subplot(3,4,2),imshow(B7),title("bit7");
subplot(3,4,3),imshow(B6),title("bit6");
subplot(3,4,4),imshow(B5),title("bit5");
subplot(3,4,5),imshow(B4),title("bit4");
subplot(3,4,6),imshow(B3),title("bit3");
subplot(3,4,7),imshow(B2),title("bit2");
subplot(3,4,8),imshow(B1),title("bit1");
subplot(3,4,9),imshow(B0),title("bit0");




