% name- arbhav chouhan 
% id - bt20ece082
% title - calculate image parameter entropy mean median

clc;
clear;
close all;

 
I = [1 1 1
     2 0 0
     3 3 3]; 
[row,col] = size(I);

% gray scale image
    I = rgb2gray(I);

I = double(I);

% Calculating the Frequency of Every Pixel Intensity in the Input Image
Frequency = zeros(1,8);
for i = 1:row
    for j = 1:col
        for k = 0:255
            if I(i,j)==k
                Frequency(k+1)= Frequency(k+1)+1;
            end
        end
    end
end

% Probablity
Probability = (1/(row*col))*Frequency;

% Entropy = summation(-p*log2(p)), for all pixels in 'I' with Probability 'p'
Entropy = 0;
for m = 1:8
    if(Probability(m)~=0)
        Entropy = Entropy + (Frequency(m))*(Probability(m))*(log2(Probability(m)));
    end
end
Entropy = -(Entropy);

% Average Pixel Intensity
Sum_of_Pixels = 0;
for S = 1:(row*col)
    Sum_of_Pixels = Sum_of_Pixels + I(S);
end
Avg_Pixel_Intensity = Sum_of_Pixels/(row*col);

% Calculating Median Pixel Value
I_sort = sort(I(:)); % Sorts the Array I in Ascending Order
S = size(I_sort);
Index_of_Median = round(S(1)/2);
Median_Pixel_Value = I_sort(Index_of_Median);