% name - arbhav chouhan
% id - bt20ece082
% title- generate histogram and perform histogram equalization
clc;
clear;
close all;

% read the image

a=imread('lena.png');
a=rgb2gray(a);
[b c]=size(a);
a=double(a);

hist1=zeros(1,256);
for i=1:b
    for j=1:c
        for k=0:255
            if a(i,j)==k
                hist1(k+1)=hist1(k+1)+1;
            end
        end
    end
end

%generating pdf out of histogram by dividing total no of pixels
pdf=(1/(b*c))*hist1;

%generating cdf out of pdf
cdf(1)=pdf(1);

for i=2:256
    cdf(i)=cdf(i-1)+pdf(i);
end

cdf=round(255*cdf);
ep=zeros(b);
for i=1:b
    for j=1:c
        t=(a(i,j)+1);
        ep(i,j)=cdf(t);
    end
end
hist2=zeros(1,256);
for i=1:b
    for j=1:c
        for k=0:255
            if ep(i,j)==k
                hist2(k+1)=hist2(k+1)+1;
            end
        end
    end
end


subplot(2,2,1);
imshow(uint8(a));
subplot(2,2,3);
imshow(uint8(ep));
subplot(2,2,2);
plot(hist1);
subplot(2,2,4);
plot(hist2); 