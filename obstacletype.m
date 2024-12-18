%%%%%%%%%%%%%%%Fire Base Values %%%%%%%%%%%%%%%%%%%%%%%%%%%
Hr=80;%from firebase server
Rr=6;%from firebase server
BMI=21;%from firebase server
Sleep_duration=9;%from firebase server
Intoxication_level=0.1;%from firebase server
avg_speed=35;%from firebase server
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf ("1 for static obstacle and 2 for dynamic obstacle \n");
userInput = input('Enter your selection: ', 's');
% Convert the input to an integer
    integerValue = str2double(userInput);
%%%%%%%%%%%%%%% Fuzzy for Reaction time %%%%%%%%%%%%%%%%%%%
fis = readfis('ReactionTimeFuzzy.fis');
inputValues = [BMI, Sleep_duration, Intoxication_level];
output = evalfis(fis, inputValues);
additionalTr = output(1);
Baseline_Tr=0.01*(Hr/Rr);
Tr=additionalTr+Baseline_Tr;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if integerValue==1
    fprintf("Static Obstacle \n");
userInput = input('Initial Speed of the Vehicle: ', 's');
% Convert the input to an integer
    Speed = str2double(userInput);
userInput = input('Distance between obstacle and vehicle: ', 's');
% Convert the input to an integer
    DisAO = str2double(userInput);
    staticadvisory
end
if integerValue==2
    userInput = input('Speed of the Vehicle in the front: ', 's');
% Convert the input to an integer
    initSpeedA = str2double(userInput);
userInput = input('Initial Speed of the Vehicle ', 's');
% Convert the input to an integer
    initSpeedB = str2double(userInput);
     fprintf("Dynamic Obstacle \n");
    dynamicadvisory
end
