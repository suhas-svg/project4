totalswitches = 0;
totalcollisions=0;
for i=1:1:100
rng('shuffle')
Hr=60+80*rand();%from firebase server
Rr=12+8*rand();%from firebase server
BMI=15+20*rand();%from firebase server
Sleep_duration=3+6*rand();%from firebase server
Intoxication_level=rand();%from firebase server
avg_speed=35;%from firebase server
Speed=100*rand();
DisAO =60*rand();
fis = readfis('ReactionTimeFuzzy.fis');
inputValues = [BMI, Sleep_duration, Intoxication_level];
output = evalfis(fis, inputValues);
additionalTr = output(1);
Baseline_Tr=0.01*(Hr/Rr);
Tr=additionalTr+Baseline_Tr;
staticadvisory
if swap == 1
    totalswitches=totalswitches+1;
end
if (swap == 1) && (humanModel.sx1.Data(end) >= 0)
    totalcollisions=totalcollisions+1;
end
end
fprintf("There are %d switches of which %d result in collision",totalswitches,totalcollisions)