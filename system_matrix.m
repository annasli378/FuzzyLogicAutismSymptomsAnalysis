clear all, close all
%% Read FIS
fQ10 = readfis("qchat10");
fQ4 = readfis("q4");
fAutyzm2= readfis("predAut.fis");
%% Patients database
pacjenci1 = load('toddlerAutism2018.mat');
pacjenci2 = load('autismArabiaSau.mat');

[w, k] = size(pacjenci1.ToddlerAutismdatasetJuly2018);
pacAge = 0;q_res = 0; autyzm_res=0;
results={};recomm={};groundTruth={};
%% Read patients in loop
for i=1:w
    pac = table2array(pacjenci1.ToddlerAutismdatasetJuly2018(i,:));
    pacAge = pac(13);

    if pacAge < 18
        % Eye contact, babbles, looks at things, responds to face
        input_forQ = [pac(3) pac(9) pac(7) pac(8)];
        q_res = evalfis(fQ4,input_forQ);
    else
        input_forQ = pac(2:11);
        q_res = evalfis(fQ10,input_forQ);
    end
    
    input_forA = [q_res, pac(14:16)];
    autyzm_res = evalfis(fAutyzm2,input_forA);

    results{i}=autyzm_res(1);
    recomm{i}=autyzm_res(2:4);
    groundTruth{i}=pac(17);
end


%Case_No A1	A2	A3	A4	A5	A6	A7	A8	A9	A10	Q10-Score Age_Mons Ethnicity Family_memASD Sex Class/ASD Traits 
%% Diagnosis
GT1 = cell2mat(groundTruth);
przyp_autyzmGT1 = sum(GT1==1)
autyzm401 = cell2mat(results)>=0.5;
przyp_autyzm401 = sum(autyzm401)
diagnoza1 = cell2mat(results);
diagnoza_autyzm1 = diagnoza1(logical(GT1));
diagnoza_zdrowy1 = diagnoza1(~logical(GT1));
%%
figure,
histogram(diagnoza_autyzm1 )
title('Probabilities for people with ASD')
figure,
histogram(diagnoza_zdrowy1 )
title('Probabilities for healthy people')

%%
figure,
histogram(cell2mat(results) )
figure,
C = confusionmat(GT1,double(autyzm401))
confusionchart(C)

%% 
[w, k] = size(pacjenci2.AutismSpectrumDisorderScreeningDataforToddlersinSaudiArabiaData);
pacAge = 0;q_res = 0; autyzm_res=0;results={};recomm={};groundTruth={};
%% Read in loop
for i=1:w
    pac = table2array(pacjenci2.AutismSpectrumDisorderScreeningDataforToddlersinSaudiArabiaData(i,:));
    pacAge = pac(13);

    if pacAge < 18
        % Eye contact, babbles, looks at things, responds to face
        input_forQ = [pac(3) pac(9) pac(7) pac(8)];
        q_res = evalfis(fQ4,input_forQ);
    else
        input_forQ = pac(2:11);
        q_res = evalfis(fQ10,input_forQ);
    end
    
    input_forA = [q_res, pac(14:16)];
    autyzm_res = evalfis(fAutyzm2,input_forA);

    results{i}=autyzm_res(1);
    recomm{i}=autyzm_res(2:4);
    groundTruth{i}=pac(17);
end


%Case_No A1	A2	A3	A4	A5	A6	A7	A8	A9	A10	Q10-Score Age_Mons Ethnicity Family_memASD Sex Class/ASD Traits 
%%
GT = cell2mat(groundTruth);
przyp_autyzmGT = sum(GT==1)
autyzm40 = cell2mat(results)>=0.5;
przyp_autyzm40 = sum(autyzm40)
diagnoza = cell2mat(results);
diagnoza_autyzm = diagnoza(logical(GT));
diagnoza_zdrowy = diagnoza(~logical(GT));
%%
figure,
histogram(diagnoza_autyzm )
title('Probabilities for people with ASD')
figure,
histogram(diagnoza_zdrowy1 )
title('Probabilities for healthy people')

%%
figure,
histogram(cell2mat(results) )
figure,
C = confusionmat(GT,double(autyzm40))
confusionchart(C)
%%
pac = table2array(pacjenci1.ToddlerAutismdatasetJuly2018(166,:))
pacAge = pac(13);
q_res = 0; autyzm_res=0;
if pacAge < 18
    % Eye contact, babbles, looks at things, responds to face
    input_forQ = [pac(3) pac(9) pac(7) pac(8)];
    q_res = evalfis(fQ4,input_forQ);
else
    input_forQ = pac(2:11);
    q_res = evalfis(fQ10,input_forQ);
end

input_forA = [q_res, pac(14:16)]
autyzm_res = evalfis(fAutyzm2,input_forA);

disp('Probability of autism in a child:')
disp(autyzm_res(1))
disp('Has the child been diagnosed with autism:')
disp(pac(17))
disp('Medical visit recommended in:')
disp(autyzm_res(2))
disp('Observation recommended in:')
disp(autyzm_res(1))
disp('Therapy through play recommended in:')
disp(autyzm_res(1))