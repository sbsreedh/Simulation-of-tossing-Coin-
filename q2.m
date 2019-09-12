%---------------------------------------------------------------%

%Problem 2:
%Number of Trials=200
%P[heads]=0.8
%-----------------------------------------------------------------%
Num_of_heads=0; %heads in trials
Num_of_Longestrun=0;%maximum # run in the trails
RunOfHeads=0; % present number of successive heads
Num_of_Trials=200;
Num_of_flips_50=50;
Flip_results=zeros(1,200);
%FlipResults = zeros(1,NumOfFlips);

for N = 1:Num_of_Trials
    IsHead = flipcoin(0.8);
    if(IsHead)
        Flip_results(N) = 1;
        RunOfHeads = RunOfHeads+1;
        Num_of_heads = Num_of_heads+1;% if the run of heads exceed the longest history, update the% records
        if(RunOfHeads > Num_of_Longestrun)
            Num_of_Longestrun = RunOfHeads;
        end
    else
        RunOfHeads = 0;
    end
end
disp('number of flips')
disp(Num_of_Trials)
disp('number of heads')
disp(Num_of_heads)
disp('longest run of heads')
disp(Num_of_Longestrun)
figure;
histogram(Flip_results)
xlabel('0-tail 1-heads')
ylabel('times')