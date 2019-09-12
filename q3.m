%Simulation of tossing 100 times and plotting hostogram of head run lengths.
close all; clear all; clc;
No_of_heads=0;
length=0;
n=1;
%index = 1;
flag = 0;
for i = 1:100
    IsHead = flipcoin(0.5);
    if(IsHead)
        No_of_heads=No_of_heads+1;
        length=length+1;
        
    else
        if length>0
         record(n)=length+1;
         n=n+1;
         
    length=0;
   %  flag = 0;
         end
    end
end 
hist(record);
xlabel('Run Lengths');
ylabel('Times')
title('Histogram of Head run lengths')
        