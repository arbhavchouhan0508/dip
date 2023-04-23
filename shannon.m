% name- arbhav chouhan
% id bt20ece082
% title- shannon fnan coding



probabilities = [0.3, 0.3, 0.2, 0.2];  
[codewords, avglen] = shannon_fano(probabilities);     
disp(codewords);
disp(avglen);

function [code1, average_length] = shannon_fano(p1)




if ((sum(p1>=0)~=length(p1)))
    error('Enter a probability vector');
end
p1 = p1/sum(p1);

if(length(p1)>2)
    
    [pdes,idx] = sort(p1,'descend');  
    qsum = (2*cumsum(pdes))-1; %cumulative sum of A starting at the beginning of the first array dimension in A whose size does not equal 1.
    [~,idx1] = min(abs(qsum)); % find min. value and discard it ... keep its index as we need index only
    if((idx1>1)&&(idx1<length(pdes)-1))
        q1 = pdes(1:idx1);                 %break into left half
        q2 = pdes((idx1+1):length(pdes)); % right half
        
        
        old_code1 = shannon_fano(q1);       % recursive call left
        old_code2 = shannon_fano(q2);       % recursive call right
        new_code = [strcat('0',old_code1) strcat('1',old_code2)];  % assign code 0 to left and 1 to right
       % disp(new_code);
    elseif(idx1==1)
        q1 = pdes(1);
        q2 = pdes(2:length(pdes));
        old_code1 = shannon_fano(q1);
        old_code2 = shannon_fano(q2);
        new_code = [old_code1  strcat('1',old_code2)];
    else
        q1 = pdes(1:((length(pdes)-1)));
        q2 = pdes(length(pdes));
        old_code1 = shannon_fano(q1);
        old_code2 = shannon_fano(q2);
        new_code = [strcat('1',old_code1)  old_code2];
    end
   % disp(idx);
    code1(idx) = new_code;
    
elseif(length(p1)==2)
    code1 = {'0', '1'};
else
    code1 = {'0'};
end
length1 = cellfun(@length, code1);
average_length = sum(length1.*p1);
end