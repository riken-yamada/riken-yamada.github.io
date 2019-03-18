%% Kernel Logistic Regression for face recognition (ollivetti face)
%% Created by Makoto Yamada@Titech
clear all;
close all;

load olivettifaces;

%Number of classes
c = 40;     
n = 400;

X = faces;
Xte = u;

%Label data
label = zeros(n,1);
labelind = 1;
for ii = 1:n
    label(ii) = labelind;
    
    if mod(ii,10) == 0
        labelind = labelind + 1;
    end
end

%KLR parameter
delta   = 0.001; %Regularization parameter   
itrNewton = 1;   %Number of Newton iteration
sigma = 10^5;    %Gaussian kernel width

%Compute Training Gram matrix
Ktrain = kernel_Gaussian(X,X, sigma);

%KLR training
disp('Start KLR estimation');
tic
V_KLR = klr_train(Ktrain,label,delta,itrNewton);
toc
disp('Done');

%Compute Test Gram matrix
Ktest = kernel_Gaussian(X, Xte, sigma);

%Compute posterior probability
prob = mlogistic(V_KLR*Ktest,c);

%Compute classification rate
[val, ind] = max(prob);
rate = 0;
for ii = 1:c
    if ind(ii) == ii
        rate = rate + 1;
    end
end

rate = rate/c*100;

sstr = sprintf('Classification rate: %d percent.', rate);
disp(sstr);
