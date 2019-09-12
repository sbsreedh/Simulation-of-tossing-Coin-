clc;clear all;close all;
%i=1;
for i = 1 : 20
A = randi([0:1],[50,1]);
No_of_heads(i)=sum(A(:) == 1); % Total No of heads %
end
subplot(2,2,1); hist(No_of_heads);
xlim([0 50]);
xlabel('Number of heads')
ylabel('Time')
title('20 times')
hold all;

i=1;
for i = 1 : 100
A = randi([0:1],[50,1]);
No_of_heads(i)=sum(A(:) == 1); % Total No of heads %
end
subplot(2,2,2); hist(No_of_heads);
xlim([0 50]);
xlabel('Number of heads')
ylabel('Time')
title('100 times')

i=1;
for i = 1 : 200
A = randi([0:1],[50,1]);
No_of_heads(i)=sum(A(:) == 1); % Total No of heads %
end
subplot(2,2,3); hist(No_of_heads);
xlim([0 50]);
xlabel('Number of heads')
ylabel('Time')
title('200 times')

i=1;
for i = 1 : 1000
A = randi([0:1],[50,1]);
No_of_heads(i)=sum(A(:) == 1) ;% Total No of heads %
end
subplot(2,2,4); hist(No_of_heads);
xlim([0 50]);
xlabel('Number of heads')
ylabel('Time')
title('1000 times')
