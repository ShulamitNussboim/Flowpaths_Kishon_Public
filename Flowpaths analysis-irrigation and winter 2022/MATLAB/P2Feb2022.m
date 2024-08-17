%This script reads and plots the piezometers data: water level and ec as
%were read during the piezometers campaign (23/1/2022-3/2/2022):
clear all 
close all
fontSize = 20;
load piez_data.txt
load p2_mat.txt
date1=x2mdate(p2_mat(1:6,1));
dateR1=x2mdate(p2_mat(7:102));
[dateR,a,b]=unique(dateR1)
rain=p2_mat(a,2);
p2_cl=p2_mat(1:6,2);
p2_k=p2_mat(1:6,3);
p2_dp=p2_mat(1:6,4);
p2_tp=p2_mat(1:6,5);
p2_no3=p2_mat(1:6,6);
p2_nh4=p2_mat(1:6,7);
p2_so4=p2_mat(1:6,8);
p2_tn=p2_mat(1:6,9);
yyaxis left
figure('name','Cl')
bar(date1,p2_cl)
ylabel('Cl (mg/l)')
yyaxis right
bar(dateR,rain,0.4); ylabel('Rain (mm)')
ylabel('Rain (mm)')
title('Cl')
set(gca,'FontSize',20)
datetick('keepticks','keeplimits')
datetick
figure('name','K')
yyaxis left
bar(date1,p2_k)
ylabel('K (mg/l)')
yyaxis right
bar(dateR,rain,0.4); ylabel('Rain (mm)')
ylabel('Rain (mm)')
title('K')
set(gca,'FontSize',20)
datetick('keepticks','keeplimits')
datetick
yyaxis left
figure('name','DP')
bar(date1,p2_dp)
ylabel('DP (mg/l)')
yyaxis right
bar(dateR,rain,0.4); ylabel('Rain (mm)')
ylabel('Rain (mm)')
title('DP')
set(gca,'FontSize',20)
datetick('keepticks','keeplimits')
datetick
figure('name','TP')
yyaxis left
bar(date1,p2_tp)
ylabel('TP (mg/l)')
yyaxis right
bar(dateR,rain,0.8); ylabel('Rain (mm)')
ylabel('Rain (mm)')
title('TP')
set(gca,'FontSize',20)
datetick('keepticks','keeplimits')
datetick
yyaxis left
figure('name','NO_3')
bar(date1,p2_no3)
ylabel('NO_3 (mg/l)')
yyaxis right
bar(dateR,rain,0.4); ylabel('Rain (mm)')
ylabel('Rain (mm)')
title('NO_3')
set(gca,'FontSize',20)
datetick('keepticks','keeplimits')
datetick
figure('name','NH_4')
yyaxis left
bar(date1,p2_nh4)
ylabel('NH_4 (mg/l)')
yyaxis right
bar(dateR,rain,0.4); ylabel('Rain (mm)')
ylabel('Rain (mm)')
title('NH_4')
set(gca,'FontSize',20)
datetick('keepticks','keeplimits')
datetick
yyaxis left
figure('name','SO_4')
bar(date1,p2_so4)
ylabel('SO_4 (mg/l)')
yyaxis right
bar(dateR,rain,0.4); ylabel('Rain (mm)')
ylabel('Rain (mm)')
title('SO_4')
set(gca,'FontSize',20)
datetick('keepticks','keeplimits')
datetick
figure('name','TN')
bar(date1,p2_tn)
ylabel('TN (mg/l)')
yyaxis right
bar(dateR,rain,0.4); ylabel('Rain (mm)')
ylabel('Rain (mm)')
title('TN')
set(gca,'FontSize',20)
datetick('keepticks','keeplimits')
datetick