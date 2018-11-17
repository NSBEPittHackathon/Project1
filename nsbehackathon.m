clear
clc
close all
wordfilename='vocabwords.txt';
W = importdata(wordfilename);
deffilename='vocabdef.txt';
D= importdata(deffilename);
for i= 1:length(W)/2
Wchunk1(i)=W(i);
Wchunk2(i)=W(i+length(W)/2);
Dchunk1(i)=D(i);
Dchunk2(i)=D(i+length(W)/2);
end

%% Learn
go_on=0;
while (go_on == 0)
    for i=1:length(Wchunk1)
 disp(Wchunk1(:,i));
 disp(Dchunk1(:,i));
 if i==length(Wchunk1)
     disp('Last word')
 else
 disp('Press enter to go to the next word');
 end
 pause
 clc
end
        prompt = 'Have you finish learning? y/n ';
        str = input(prompt, 's');
            if (str == 'n'||str == 'N')
                go_on = 0;
            elseif (str == 'y'||str == 'Y')
                go_on = 1;
            elseif (str ~= 'y'||str ~= 'n'||str ~= 'N'||str ~= 'Y')
            end  
            clc
end 

%% Test
for i=1:length(Wchunk1)
 fprintf('What is the word that matches the given definition \n\n');
 disp(Dchunk1(i))
 fprintf('\n')
 answer='The word is:  ';
 Answerchunk1(i,:)=input(answer(1,:), 's');
 result=strcmp(Answerchunk1(i),Wchunk1(i));
 if result== 0
     Wr1(i)=Answerchunk1(i);
 end
 clc        
end
 
    %% Chunk 2 learn
go_on2=0;
while (go_on2 == 0)
    for i=1:length(Wchunk2)
 disp(Wchunk2(:,i));
 disp(Dchunk2(:,i));
 if i==length(Wchunk2)
     disp('Last word')
 else
 disp('Press enter to go to the next word');
 end
 pause
 clc
end
        prompt = 'Have you finish learning? y/n ';
        str2 = input(prompt, 's');
            if (str2 == 'n'||str2 == 'N')
                go_on2 = 0;
            elseif (str2 == 'y'||str2 == 'Y')
                go_on2 = 1;
            elseif (str2 ~= 'y'||str2 ~= 'n'||str2 ~= 'N'||str2 ~= 'Y')
            end  
            clc
end 

% for i=1:length(wrong1)
%     difchunk2(i)= wrong(i);
% end
% for i = length(wrong1):length(Wchunk2)
%     for ii= 1:length(Wchunk2)-length(wrong1)
%         difchunk2(i)=Wchunk2(ii);
%         count= count +1;
%     end
% end
