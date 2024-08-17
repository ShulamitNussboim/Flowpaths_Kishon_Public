%This script presents clustering applying dendrogram for each campign
%(16/1/22 and 27/1/22) separatly. The plots are made by dendrogram MATLAB
%file

clear all
close all
% % 
% % load FstCmpn.txt
load SndCmpn.txt
load ShWGW_normalized.txt
% % load FstCmpnInvrse.txt
% % load SndCmpnInvrse.txt
% % load FstCmpn.txt
% % 
% % A1=linkage(FstCmpn,'ward');
A2=linkage(SndCmpn,'ward');
% % A3=linkage(FstCmpnInvrse,'ward');
% % A4=linkage(SndCmpnInvrse,'ward');
% % 
% figure(1)
% dendrogram(A1,size (A1,1)+1,'ColorThreshold','default')
figure(2)
H=dendrogram(A2,size(A2,1)+1,'ColorThreshold','default')
set(H,'LineWidth',2)
% % figure(3)
% % dendrogram(A3,size(A3,1)+1,'ColorThreshold','default')
% % figure(4)
% % dendrogram(A4,size(A4,1)+1,'ColorThreshold','default')
% % 
% % %No soil data
% % 
% % load FstCmpnNoSoil.txt
% % load SndCmpnNoSoil.txt
% % load FstInvsNoSoil.txt
% % load SndInvsNoSoil.txt
% % 
% % B1=linkage(FstCmpnNoSoil,'ward');
% % B2=linkage(SndCmpnNoSoil,'ward');
% % B3=linkage(FstInvsNoSoil,'ward');
% % B4=linkage(FstInvsNoSoil,'ward');
% % 
% % figure(5)
% % dendrogram(B1,size (B1,1)+1,'ColorThreshold','default')
% % figure(6)
% % dendrogram(B2,size(B2,1)+1,'ColorThreshold','default')
% % figure(7)
% % dendrogram(B3,size(B3,1)+1,'ColorThreshold','default')
% % figure(8)
% % dendrogram(B4,size(B4,1)+1,'ColorThreshold','default')

%Short data (no soil, only highly detectedpesticides)

% % load Short1st.txt
% % load Short2nd.txt
% % load Short1stInv.txt
% % load Short2ndInv.txt
% % 
% % A=[1];%selected columns 
% % C1=linkage(Short1st,'ward');
% % C2=linkage(Short2nd,'ward');
% % C3=linkage(Short1stInv,'ward');
% % C4=linkage(Short2ndInv,'ward');
% % 
% % figure(99)
% % [H,T,outperm]=dendrogram(C1,size (C1,1)+1,'ColorThreshold','default')
% % set(H,'LineWidth',2)
% % figure(10)
% % H=dendrogram(C2,size(C2,1)+1,'ColorThreshold','default');
% % set(H,'LineWidth',2)
% % figure(11)
% % H=dendrogram(C3,size(C3,1)+1,'ColorThreshold','default')
% % set(H,'LineWidth',2)
% % figure(12)
% % H=dendrogram(C4,size(C4,1)+1,'ColorThreshold','default')
% % set(H,'LineWidth',2)

% % %Normalized data
% % figure(13)
% % %load normalized_srt2nd.txt
% % load mixed.txt
% % %C1=linkage(normalized_srt2nd,'ward');
% % C1=linkage(mixed,'ward');
% % [H,T,outperm]=dendrogram(C1,size (C1,1)+1,'ColorThreshold','default');
% % set(H,'LineWidth',2)

%Analisys for groundwater only
%Select two column and execute clustering. 
load GW.txt
%Find only shallow groundwater at West field:
WShGW=GW(2:4:end,:);
%Fit checking ready to use in the curveFitter
A1=WShGW(1,:);
A2=WShGW(2,:);
A3=WShGW(3,:);
A4=WShGW(4,:);
A5=WShGW(5,:);
A6=WShGW(6,:);
%Normalizing
max_col=max(WShGW);
norm_WShGW=WShGW./max_col;
ind_nan=find(isnan(norm_WShGW));
norm_WShGW(ind_nan)=0;
WShGW_cluster =clusterdata(norm_WShGW,3); 
A=[4 5 6 7 8 9 10 11 12	13	14	15	16	17	18	19	20	21	22	23	24	25	26	27	28	29	30	31	32	33	34	35	36	37	38	39	40	41	42	43	44	45	46	47	48	49  50	51	52	53	54	55	56	57	58	59	60	61	62	63	64	65];%All columns with full data of GW (see Chemistry>win22)
full_norm_WShGW=norm_WShGW(:,A)

% [H,T,outperm]=dendrogram(norm_WShGW,0);%norm_WShGW(:,A)
% set(H,'LineWidth',2)
%tree = linkage(norm_WShGW(:,A));
tree = linkage(norm_WShGW);
H=dendrogram(tree)
set(H,'LineWidth',2)
H(1).Color=([0.494117647058824 0.184313725490196 0.556862745098039])
H(2).Color=([1 0.270588235294118 1])
H(4).Color=([1 0.0745098039215686 0.650980392156863])