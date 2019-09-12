%------------------------------------------------------------------%
%Simulate tossing a fair coin and count the number of tosses until 
%reaching a user?specified positive number of 
%heads
%------------------------------------------------------------------%

prompt='Please provide a positive number of heads: ';
No_of_heads=0;
No_of_tosses=0;
X=input(prompt);
while(No_of_heads<X)
    No_of_tosses=No_of_tosses+1;
    IsHead = flipcoin(0.5);
    
      if (IsHead)
          
       No_of_heads= No_of_heads+1;% Total No of heads %
      end
end
disp('Number of tosses is ')
disp(No_of_tosses)

