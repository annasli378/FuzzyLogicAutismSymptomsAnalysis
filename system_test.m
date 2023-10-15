fQ10 = readfis("qchat10");
fQ4 = readfis("q4");
%%
fAutyzm2= readfis("system.fis");
%% Pacjenci
pacjenci1 = load('toddlerAutism2018.mat');
%% 
%Case_No A1	A2	A3	A4	A5	A6	A7	A8	A9	A10	Q10-Score Age_Mons Ethnicity Family_memASD Sex Class/ASD Traits 
pac1 = table2array(pacjenci1.ToddlerAutismdatasetJuly2018(1,:))
pac2 = table2array(pacjenci1.ToddlerAutismdatasetJuly2018(10,:))
pac3 = table2array(pacjenci1.ToddlerAutismdatasetJuly2018(20,:))
%% 
pac = pac2;
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

%%
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