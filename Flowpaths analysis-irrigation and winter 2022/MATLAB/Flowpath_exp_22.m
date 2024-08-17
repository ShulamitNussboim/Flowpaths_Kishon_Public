% thia script reads and plots all data from two rain campigns, piezometers
% sampling and west pipe (tile drainage) sampling as well as selected soil
% samples (the one which were analyzed). The data will be presented on map,
% on bar plot, per location or for comparison after obtaining thrm from this analysis. 
% Also ratio between data will be presented.
%All double '%%' were added when running in another script
%function Flowpath_exp_22(n,loc1)
clear all
close all
load win22_3.txt;win22=win22_3;lines3 = readlines("win22_pestNames.txt");win22_pestNames=(categorical(lines3));loc=win22(:,end);
lines4 = readlines("loc_name.txt");loc_name=(categorical(lines4));
lines44 = readlines("loc_name_shrt.txt");loc_name_shrt=(categorical(lines44));
%load win22_Shrt.txt;win22=win22_Shrt;lines4 = readlines("win22_pestNamesShrt.txt");win22_pestNames=(categorical(lines4));
%load win22_1.txt;win22=win22_1;lines3 = readlines("win22_pestNames.txt");win22_pestNames=(categorical(lines3));loc=win22(:,end);

%pesticides according to preferred pesticides: application, toxicity ect.
load rain_p2_win22.txt;
load rain_piez_win22.txt;
lines1 = readlines("win22_names.txt");
lines2 = readlines("piez_names.txt");
win22_names=(categorical(lines1));
piez_names=(categorical(lines2));
lines5 = readlines("frst_cmgn_nms.txt");
frst_cmgn_nms=(categorical(lines5));
lines5 = readlines("scnd_cmgn_nms.txt");
scnd_cmgn_nms=(categorical(lines5));
%The numbering is correct for full win22 (not short)
% Acetaminophen-1
% Acetamiprid-2
% Ametryn-3
% Atrazine-4
% Atrazine-Desethyl-5
% Atrazine-Desisopropyl-6
% Azoxystrobin-7
% Bezafibrate-8
% Boscalid-9
% Caffeine-10
% Carbamazepine-11
% Carbamazepine-10,11-epoxide-12
% Carbamazepine-2-hydroxy-13
% Carbamazepine-3-hydroxy-14
% Carbamazepine-trans-10,11-dihydroxy-15
% Carbendazim-16
% Carbofuran-17
% Chlorantraniliprole-18
% Cyproconazole-19
% Diazinon-20
% Diclofenac-21
% Difenoconazole-22
% Diflufenican-23
% Dimethomorph-cis/trans-24
% Diuron-25
% Fenaminphos sulfoxid-26
% Fenaminphos-27
% Fenhexamid-28
% Fluometuron-29
% Flutriafol-30
% Hexazinone-31
% Imidacloprid-32
% Indaziflam-33
% Lamotrigine-34
% Linuron-35
% Metalaxyl-36
% Metazachlor-37
% Methomyl-38
% Methoxyfenozide-39
% Metolachlor-40
% Metoprolol-41
% Metribuzin-42
% Oxadiazon-43
% Oxamyl-44
% Penconazole-45
% Pendimethalin-46
% Pirimicarb-47
% Prochloraz-48
% Prometon-49
% Prometryn-50
% Propachlor-51
% Propamocarb-52
% Propazine-53
% Propiconazole-54
% Propoxur-55
% Propyzamide-56
% Pyraclostrobin-57
% Sildenafil-58
% Simazine-59
% Sulfamethoxazole-60
% Sulfapyridine-61
%Sulfotep-62
% Tebuconazole-63
% Tebuthiuron-64
% Terbutryn-65
% Thiacloprid-66
% Triadimenol A-67
% HMX-68
% RDX-69
% Bromacil-70
% Clofibric acid-71
% Gemfibrosil-72
% Ibuprofen-73
% Naproxen-74
% Paraben-ethyl-75
% Paraben-methyl-76
% Paraben-n/i-butyl-77
% Paraben-propyl-78
%Sulfaxoflor-79
% Terbacil-80
%Triclopyr-81

%94 Were analyzed for, detected 78

%####loc#####
% S-1
% S1-2
% P2-3
% WWM-4
% EF1-5
% EF3-6
% EF4-7
% EF2-8
% EF5-9
% EF6-10
% EF7-11
% WPWF8-12
% POWF14-13
% WF14-14
% CWF15-15
% WF10-16
% 2S-17
% EEM-18
% 2WM-19
% 2EF1-20
% 2EF4-21
% 2EF3-22
% 2EF2-23
% 2EF5-24
% 2EF6-25
% I2EF6-26
% F2EF6-27
% 2EF7-28
% 2WF8-29
% 2WF9-30
% 2WF10-32
% 2WF12-32
% 2OPWF14-33
% 2WF15-34
% 2WF16-35
% 2WF17-36
% 2WF18-37
% 3s-38
% 2WM-39
% 1WPzD-40
% 1WPzSh-41
% 1EPzD-42
% 1EPzSh-43
% 2WPzD-44
% 2WPzSh-45
% 2EPzD-46
% 2EPzSh-47
% 3WPzD-48
% 3WPzSh-49
% 3EPzD-50
% 3EPzSh-51
% 4WPzD-52
% 4WPzSh-53
% 4EPzD-54
% 4EPzSh-55
% 5WPzD-56
% 5WPzSh-57
% 5EPzD-58
% 5EPzSh-59
% 6WPzD-60
% 6WPzSh-61
% 6EPzD-62
% 6EPzSh-63
% GD 5+6-64
% GD 15+16-65
% GD 17+18-66
% GD 19+20-67
% GD 21+22-68
% GD 23+24-69
% GB 21+22-70
% GB 4+5+6+7-71
% GB 10+11-72
% GB 8+9-73
% GB 23+24-74
% GB 12+13-75
% GB 19+20-76
% P2-4-77
% P2-5-78
% P2-6-79
% P2-7-80
% P2-8-81
% P2-9-82
% gJ 1+2-83
% gJ 3+4+5-84
% gJ 6+7+8-85
% gJ 9+10+11-86
% gJ 19+20+21-87
% gJ 22-88
% 3SEF010-89
% 3SEF2030-90
% 2SEF010-91
% 2SEF2030-92
% 2SWF010-93
% 2SWF2030-94
% SCWF15010-95
% SCWF152030-96
% SOWF14010-97
% SOWF142030-98
% 31SEF010-99
% 31SEF2030-100
% 21SEF010-101
% 21SEF2030-102
% 21SWF010-103
% 21SWF2030-104
% 2SCWF15010-105
% 2SCWF152030-106
% 2SOWF14010-107
% 2SOWF142030-108

%%%%Shrt%%%%
% Acetamiprid-1
% Atrazine-2	
% Atrazine-desethyl-3	
% Atrazine-Desisopropyl-4	
% Azoxystrobin-5
% Boscalid-6
% Caffeine-7
% Carbamazepine-8	
% Carbamazepine-10,11-epoxide-9	
% Carbamazepine-2-hydroxy-10
% Carbamazepine-3-hydroxy-11
% Carbamazepine-trans-10,11-dihydroxy-12	
% Carbendazim-13
% Chlorantraniliprole-14	
% Difenoconazole-15
% Diflufenican-16
% Dimethomorph-cis/trans-17	
% Diuron-18
% Fenaminphos sulfoxid-19	
% Fluometuron-20	
% Imidacloprid-21
% Indaziflam-22
% Lamotrigine-23
% Metalaxyl-24
% Methoxyfenozide-25	
% Metolachlor-26
% Oxadiazon-27
% Pendimethalin-28	
% Prometryn-29
% Propamocarb-30	
% Propoxur-31
% Propyzamide-32	
% Tebuconazole-33
% Terbutryn-34
% Thiacloprid-35	
% Triadimenol A-36
% Bromacil-37
% Ibuprofen-38
% Paraben-ethyl-39	
% Paraben-methyl-40	
% Terbacil-41

n=74%select compound

win22_pestNames(n)

%Piez
%for n=70:81
piez=win22(39:62,:);
%piez_names=(categorical(lines2));
date_pz=x2mdate(piez(:,1));
data_pz=piez(:,2:end);
rain_d_piez=x2mdate(rain_piez_win22(:,1));%rain dates
rain_piez=rain_piez_win22(:,2:end);
piezANDpipe(n,1,rain_d_piez,rain_piez,date_pz,data_pz);
% end
% return

%Pipes
p2=win22(76:81,:);
date_p2=x2mdate(p2(:,1));
data_p2=p2(:,2:end);
rain_d_p2=x2mdate(rain_p2_win22(:,1));
rain_p2=rain_p2_win22(:,2:end);
piezANDpipe(n,2,rain_d_p2,rain_p2,date_p2,data_p2);

%Stream
% p2=win22(77:82,:);
% date_p2=p2(:,1);
% data_p2=p2(:,2:end);
% Q_d=dsrg_d_win22(:,1);%discharge date
% Q=dsrg_p2_win22(:,2:end);%discharge
% piezANDpipe(2,3,rain_d_p2,rain_p2,date_p2,data_p2);

%Rain plot
% % figure('name','Rain')
% % bar(rain_d_piez,rain_piez,'b'); ylabel('Rain (mm)','color','b')
% % ylabel('Rain (mm)','color','b')
% % barFontSize = 20;
% % datetick

%Bar plots

%first and second event

frst_cmgn=win22(1:16,2:end);
% % piezANDpipe(n,4,rain_d_p2,rain_p2,date_p2,frst_cmgn);%date_p2 is not necessary and useless
scnd_cmgn=win22(17:37,2:end);
% % piezANDpipe(n,5,rain_d_p2,rain_p2,date_p2,scnd_cmgn);

% Acetaminophen-1;Acetamiprid-2;Ametryn-3;
% Atrazine-4;Atrazine-Desethyl-5;Atrazine-Desisopropyl-6;Azoxystrobin-7;Bezafibrate-8;Boscalid-9
% Caffeine-10;Carbamazepine-11;Carbamazepine-10,11-epoxide-12;Carbamazepine-2-hydroxy-13;Carbamazepine-3-hydroxy-14
% Carbamazepine-trans-10,11-dihydroxy-15;Carbendazim-16;Carbofuran-17;Chlorantraniliprole-18;Cyproconazole-19;Diazinon-20;Diclofenac-21
% Difenoconazole-22;Diflufenican-23;Dimethomorph-cis/trans-24;Diuron-25;Fenaminphos sulfoxid-26;Fenaminphos-27;Fenhexamid-28;
% Fluometuron-29;Flutriafol-30;Hexazinone-31;Imidacloprid-32;Indaziflam-33;Lamotrigine-34;Linuron-35;Metalaxyl-36;
% Metazachlor-37;Methomyl-38;Methoxyfenozide-39;Metolachlor-40
% Metoprolol-41;Metribuzin-42;Oxadiazon-43;Oxamyl-44;Penconazole-45;Pendimethalin-46;Pirimicarb-47;
% Prochloraz-48;Prometon-49;Prometryn-50;Propachlor-51;Propamocarb-52;Propazine-53;
% Propiconazole-54;Propoxur-55;Propyzamide-56;Pyraclostrobin-57;Sildenafil-58;Simazine-59;
% Sulfamethoxazole-60;Sulfapyridine-61;Sulfotep-62;Tebuconazole-63;Tebuthiuron-64;Terbutryn-65;Thiacloprid-66;
% Triadimenol A-67;HMX-68;RDX-69;Bromacil-70;Clofibric acid-71;Gemfibrosil-72;Ibuprofen-73;Naproxen-74;
% Paraben-ethyl-75;Paraben-methyl-76;Paraben-n/i-butyl-77;Paraben-propyl-78;Sulfaxoflor-79;Terbacil-80;Triclopyr-81
%Regression32 39 23 32
m=46;n1=55
;flwpth=2;%311-runoff east 1st campaign, 32runoff west %Select only materials that have full series to avoid compare inequal number of elements
m=1+m;n1=1+n1;%1 is for the date column
% Fst_cmpn=([1:16 40]);cmpn=Fst_cmpn;
% Snd_cmpn=([17:37 42]);cmpn=Snd_cmpn;
surWater=[15:16 29:32 34:37];cmpn=surWater;%Surface water at 1st and 2nd storms
%cmpn=1:length(win22);
%cmpn=find(win22(:,85)==flwpth);
%cmpn=[1 3:62 76:81 88:107];%no stream data (only stream near field)
compound1=win22(cmpn,m);
compound2=win22(cmpn,n1);
figure(22)
     scatter(compound1,compound2,[],win22(cmpn,end-1),'filled');%colors are given by the vector of numbers (1-8) given by last line of win22
     set(gca, 'FontSize', 24)
     xlabel([win22_pestNames(n1-1) '(ng/L)'])
     ylabel([win22_pestNames(m-1) '(ng/L)'])
colorbar
%Normalized
compound1=win22(cmpn,n1);compound1=compound1./max(compound1);
compound2=win22(cmpn,m);compound2=compound2./max(compound2);
figure(23)
     scatter(compound1,compound2,[],win22(cmpn,end-1),'filled');%colors are given by the vector of numbers (1-8) given by last line of win22
     set(gca, 'FontSize', 24)
     xlabel([win22_pestNames(n1-1) '(ng/L)'])
     ylabel([win22_pestNames(m-1) '(ng/L)'])
colorbar
% [curve, goodness, output] = fit(compound1,compound2,'poly1')
% hold on
% plot(curve,compound1,compound2);
%Clustering2 K-Means
figure(56)
ind=kmeans([compound1 compound2],2);
 scatter(win22(cmpn,n1),win22(cmpn,m),[],ind,'filled')%ind determines the groups
      xlabel(win22_pestNames(n1-1))
      ylabel(win22_pestNames(m-1))
colorbar
%x=linkage(win22(:,2:end));dendrogram(x)
%Ratio checks:
Ratio_check=win22(:,m)./win22(:,n1);
meanRatio_chek=mean(Ratio_check,"omitnan");
Std_Ratio_chek=std(Ratio_check,"omitnan");
figure(33)
loc2=unique(loc);
scatter(loc,Ratio_check)
box_mat=nan(108,24);
for i=[1 4:8] %8 locations. Locations that the material was not detected were removed, r done separately
indx_loc=find(loc==i);
box_mat(1:length(indx_loc),i)=Ratio_check(indx_loc);

%%%Creating linear regression for each location (not a plot, but finding the R^2)
A=win22(indx_loc,n1);
B=win22(indx_loc,m);
%NaNs, which are different for each material, have to be removed.
% includeA1=find(~isnan(A));
% includeB1=find(~isnan(B));
% %Taking the data from the same times:
% [a,b]=ismember(includeA1,includeB1);
% includeA=A(find(a));
% includeB=B(b(find(b)));
% box_mat(1:length(indx_loc),i+8)=win22(indx_loc,m);%separating datafrom eaech location
% box_mat(1:length(indx_loc),i+16)=win22(indx_loc,n);
%[xData, yData] = prepareCurveData( A, B );

% Set up fittype and options.
%ft = fittype( 'poly1' );

% Fit model to data.
% includeA1=and((~isnan(A)),(~isnan(B)));
% includeB1=(~isnan(B));
% if length(A(includeA1)<2)
%    % K=i
%     continue
% end
% [fitresult, gof]=fit(A(includeA1),B(includeA1),ft)
%%%

K=i;
end
% % figure(44)
% % boxplot(box_mat(:,1:8),'Notch','on','Labels',{'loc = 1','loc = 2','loc = 3','loc = 4','loc = 5','loc = 6','loc = 7','loc = 8',});
% % %one location
%boxplot(box_mat(:,1:8))
% S-1	S1-2	P2-3	WWM-4	EF1-5	EF3-6	EF4-7	EF2-8	EF5-9	EF6-10	EF7-11	WPWF8-12	POWF14-13	WF14-14	

%CWF15-15	WF10-16	2S-17	EEM-18	2WM-29	2EF1-20	2EF4-21	2EF3-22	2EF2-23	2EF5-24	2EF6-25	I2EF6-26	F2EF6-27	2EF7-28	2WF8-29	

%2WF9-30	2WF10-31	2WF12-32	2OPWF14-33	2WF15-34	2WF16-35	2WF17-36	2WF18-37	3s-38	2WM-39	

%1WPzD-40	1WPzSh-41   1EPzD-42	1EPzSh-43	2WPzD-44	2WPzSh-45	2EPzD-46	2EPzSh-47	3WPzD48	

%3WPzSh-49	3EPzD-50	3EPzSh-51	4WPzD-52	4WPzSh-53	4EPzD-54	4EPzSh-55	5WPzD-56	5WPzSh-57	5EPzD-58	5EPzSh-59	6WPzD-60

% 6WPzSh-61	6EPzD-62	6EPzSh-63	GD_5_6-64	GD_15_16-65	GD_17_18-66	GD_19_20-67	GD_21_22-68	GD_23_24-69	GB_21_22-70	GB_4_5_6_7-71	GB_10_11-72

% GB_8_9-73	GB_23_24-74	GB_12_13-75	GB_19_20-76	P2-4-77	P2-5-78	P2-6-79	P2-7-80	P2-8-81	P2-9-82	1_3	3_4_6-83	6_7_9-84

% 9_10_12-85	19_20_22-86	23-87	3SEF010-88	3SEF2030-89	2SEF010-90	2SEF2030-91	2SWF010-92	2SWF2030-93	

% SCWF15010-94	SCWF152030-95	SOWF14010-96	SOWF142030-97	31SEF010-98	31SEF2030-99 21SEF010-100

% 21SEF2030-101	21SWF010-102	21SWF2030-103	2SCWF15010-104	2SCWF152030-105

% 2SOWF14010-107	2SOWF142030-108

%  figure(441)
%  loc1=11; %Selecting wanted sampling location. Off if run in another script, for example SpatialAnalysis
%  loc2=4; loc3=39;loc4=79; loc5=82;loc6=77;%57,53, 49,45,41-wpzsh1,14-wf14
% piezANDpipe(n,6,rain_d_p2,rain_p2,date_p2,win22,loc1);%loc1=number from the list above
% win22_pestNames(n)
% win22_names(loc1)
% bar(loc)

%Cluster analysis

%Cluster analysis cannot be taken over data set that includes missing data.
%Thus the first part will create a subset without missing data. This will
%enable to export the subset for analsis in JMP and also implement
%clustering analysis by MATLAB here

%colmns=[4 7 9 11 12 18 ]+1;%Columns number of the selected columns. 1 is added to the column number
colmns=[25 32 36 39 40 52]+1;%For groundwater;+1 for date column
rows=[40:63];%optionally to indicate specific group
% since there is a date column .It is recommanded to select columns
% that has relatively many data for all features.

dataset111=win22(rows,[1 colmns]);%Includding the dates
indx1=nan(110,size(dataset111,2));%110=total lines in win22;
for f=2:size(dataset111,2)
    indx2=find(~isnan(dataset111(:,f)));
    indx1(1:length(indx2),f-1)=indx2;
end
for f=1:size(dataset111,2)-1 
    if f==1
    C=intersect(indx1(:,f),indx1(:,1+1));
    else
     C=intersect(C,indx1(:,f));   
    end
end
% % figure(555)
dataset(1:length(C),:)=dataset111(C,:);
p=plot(dataset(:,1),dataset(:,2:end),'.');
%p.MarkerSize = 15;
datetick
cd='C:\Users\user\Documents\Shulamit\PhD\Maps\QGIS\Flowpaths';
filename='dataset_GW1.xlsx'
writematrix(dataset,filename,'Sheet',1,'Range','A1')
cd='C:\Users\user\Documents\Shulamit\PhD\Matlab_PhD\Chemistry';
% win22_pestNames(n)
% loc_name(loc1)
% % bar(win22_pestNames(1:end-1),[win22(loc1,2:end-3); win22(loc2,2:end-3);win22(loc3,2:end-3)]);%end-2 if win22 instead of win22_2 is used
% % % hold on
% % % bar(win22_pestNames(1:end-1),win22(loc2,2:end-3));%end-2 if win22 instead of win22_2 is used
% % % hold on
% % % bar(win22_pestNames(1:end-1),win22(loc3,2:end-3));%end-2 if win22 instead of win22_2 is used
% % ylabel('ng/L')
% % legend('P2','WWM','WM')
% % set(gca,'FontSize',20);

%%%PROblems in lines-see gemafibril%%%
%This figure plot all data of a certian compound
figure('name','All data for compound')
barFontSize = 20;
%bar(loc_name(1:end-1),win22(1:end,n+1))
%excluding all stream data
bar(loc_name_shrt(1:end-1),win22([1:62 76:81],n+1))
ylabel('ng/L')
set(gca,'FontSize',20)
% % 
% % figure(666)
% % %This figure compare two locations
% % plot(win22(loc3,1:end),win22(loc2,1:end),'o')
% % ylabel('ng/L')
% % set(gca,'FontSize',20);
% WWM=win22(4,2:end-3);
% WM=win22(19,2:end-3);
% P2=win22(3,2:end-3);
% P21=win22(loc6,2:end-3);
% P26=win22(loc4,2:end-3);
% P29=win22(loc5,2:end-3);

% % figure('name','Subsurface seaonal')
b=1+46%1 is the date column. number is the compound column
% % date=[738533 738537 738555 738574 738579];
% % errlow=0.15*win22;
% % errhigh=0.15*win22;
A=win22(3,2:end);%P2%Removed b to show data on"curveFitter"
B=win22(4,2:end);%WWM
D=win22(19,2:end);%WM
E=win22(79,b);%P2-7
F=win22(82,b);%P2-9
G=win22(15,2:end);%WF15, secondary driangae channel right on the manhole
H=win22(34,2:end);%2WF15
I=win22(35,2:end);%2WF16
J=win22(36,2:end);%2WF17
K=win22(37,2:end);%2WF18, secondary driangae channel right on the manhole
L=win22(38,2:end);%3S, s
M=win22(29,2:end);%2WF8
N=win22(30,2:end);%2WF9
O=win22(31,2:end);%2WF10
P=win22(16,2:end);%WF10
Q=win22(12,2:end);%WF8
% % bar(date,[A B D E F])
% % hold on
% % er = errorbar(date,[A B D E F],errlow([2 4 39 79 82],b),errhigh([2 4 39 79 82],b));    
% % er.Color = [0 0 0];                            
% % er.LineStyle = 'none';  
% % ylabel('ng/L')
% % set(gca,'FontSize',20)
% % datetick
% % % 
%   
