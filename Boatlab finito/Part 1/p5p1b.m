%Task 1b)
data = load('boat_variables.mat');
w_1 =0.005; 
w_2 =0.05;

%Loading data after transient respons
length_out = length(data.ans(3,:));   
output = data.ans(3,length_out/2:end); 

%Calculating amplitude
bottom = min(output);
top = max(output);
amp = (top-bottom)/2;                  

%Amplitude for w_1 and w_2
H_w_2 = 0.8308;                        
H_w_1 = 29.35;                         

%Computation of parameters
T = sqrt(((w_2^2)*H_w_2^2-(w_1^2)*H_w_1^2)/((w_1^4)*H_w_1^2-(w_2^4)*H_w_2^2));
K = H_w_1*w_1*(sqrt((T*w_1)^2+1));
