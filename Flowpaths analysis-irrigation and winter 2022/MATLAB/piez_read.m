%This script reads and plots the piezometers data: water level and ec as
%were read during the piezometers campaign (23/1/2022-3/2/2022):
clear all 
close all
fontSize = 20;
load piez_data.txt
load piez_rain.txt
load rain_piez_win22.txt;%Was added to provide similar graphics as in  the script 'Flowpath_exp_22'. Was used for NO3 WPzSh
date=x2mdate(piez_data(1:12,1));
%lines = readlines("piez_names.txt")
lines = readlines("nut_names.txt")%Nutrienst names
nut_names=(categorical(lines));
%EPzD EC
EPzD=piez_data(1:12,2:11);%East deep piezometer
well_d_ed=11;%Well (piezometer) depth
yyaxis left
figure('name','EPzD EC')
barFontSize = 20;
bar(date,EPzD(1:12,end))
ylabel('EC (mS/cm)')
yyaxis right
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
ylabel('Rain (mm)')
title('EPzD EC')
set(gca,'FontSize',20)
datetick('keepticks','keeplimits')
%EPzD WL
yyaxis left 
figure('name','EPzD WL')%Initial water level
bar(date,well_d_ed-EPzD(1:12,1))
ylabel('Water level (m)')
yyaxis right 
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
ylabel('Rain (mm)')
title('EPzD WL')
set(gca,'FontSize',20)
datetick('keepticks','keeplimits')
%EPzSh EC
EPzSh=piez_data(1:12,12:21);%East dallow piezometer
well_d_esh=5;%well depth
yyaxis left
figure('name','EPzSh EC')
bar(date,EPzSh(1:12,end))
ylabel('EC (mS/cm')
yyaxis right
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
ylabel('Rain (mm)')
title('EPzSh EC')
set(gca,'FontSize',20)
datetick('keepticks','keeplimits')
%EPzSh WL
yyaxis left
figure('name','EPzSh WL')%Initial water level
bar(date,well_d_ed-EPzSh(1:12,1))
ylabel('Water level (m)')
yyaxis right 
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
ylabel('Rain (mm)')
title('EPzSh WL')
set(gca,'FontSize',20)
datetick('keepticks','keeplimits')
%WPzD EC
WPzD=piez_data(:,22:31);%West deep piezometer
well_d_wd=9;%well depth
yyaxis left
figure('name','WPzD EC')
bar(date,WPzD(1:12,end))
ylabel('EC (mS/cm')
yyaxis right
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
set(gca,'FontSize',20)
datetick('keepticks','keeplimits')
%WPzD WL
yyaxis left
figure('name','WPzD WL')
bar(date,well_d_wd-WPzD(1:12,1))
ylabel('Water level (m)')
yyaxis right
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
ylabel('Rain (mm)')
title('WPzD WL')
bar(date,well_d_wd-WPzD(1:12,1))
ylabel('Water level (m)')
yyaxis right
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
ylabel('Rain (mm)')
title('WPzD WL')
set(gca,'FontSize',20)
datetick('keepticks','keeplimits')
%WPzSh EC
WPzSh=piez_data(1:12,32:41);%West Shallow piezometer
well_d_wsh=5;%well depth
yyaxis left
figure('name','WPzSh EC')
bar(date, [WPzSh(1:12,end)])%17.6 was measured in lab since field meter was not calibrated on 23/1
ylabel('EC (mS/cm)')
yyaxis right
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
ylabel('Rain (mm)')
title('WPzSh EC')
set(gca,'FontSize',20)
%WPzSh WL
datetick('keepticks','keeplimits')
yyaxis left
figure('name','WPzSh WL')%Initial water level
bar(date,well_d_wsh-WPzSh(1:12,1))
ylabel('Water level(m)')
yyaxis right
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
title('WPzSh WL')
ylabel ('Rain (mm)')
legend('WL (m)','Rain(mm)')
set(gca,'FontSize',20)
datetick('keepticks','keeplimits')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%PLOT NUTRIENTS%%%%%%%%%%%%%%%%%%%%%%%%%
%WPzSH
k_wpzsh=piez_data(13:4:36,3);
cl_wpzsh=piez_data(13:4:36,4);
dp_wpzsh=piez_data(13:4:36,5);
tp_wpzsh=piez_data(13:4:36,6);
no3_wpzsh=piez_data(13:4:36,7);
nh4_wpzsh=piez_data(13:4:36,8);
so4_wpzsh=piez_data(13:4:36,9);
tn_wpzsh=piez_data(13:4:36,10);
date_wpzsh=x2mdate(piez_data(13:4:36,1));
%WPzD
k_wpzd=piez_data(14:4:36,3);
cl_wpzd=piez_data(14:4:36,4);
dp_wpzd=piez_data(14:4:36,5);
tp_wpzd=piez_data(14:4:36,6);
no3_wpzd=piez_data(14:4:36,7);
nh4_wpzd=piez_data(14:4:36,8);
so4_wpzd=piez_data(14:4:36,9);
tn_wpzd=piez_data(14:4:36,10);
date_wpzd=x2mdate(piez_data(14:4:36,1));
%EPzSh
k_epzsh=piez_data(15:4:36,3);
cl_epzsh=piez_data(15:4:36,4);
dp_epzsh=piez_data(15:4:36,5);
tp_epzsh=piez_data(15:4:36,6);
no3_epzsh=piez_data(15:4:36,7);
nh4_epzsh=piez_data(15:4:36,8);
so4_epzsh=piez_data(15:4:36,9);
tn_epzsh=piez_data(15:4:36,10);
date_epzsh=x2mdate(piez_data(15:4:36,1));
%EPzD
k_epzd=piez_data(16:4:36,3);
cl_epzd=piez_data(16:4:36,4);
dp_epzd=piez_data(16:4:36,5);
tp_epzd=piez_data(16:4:36,6);
no3_epzd=piez_data(16:4:36,7);
nh4_epzd=piez_data(16:4:36,8);
so4_epzd=piez_data(16:4:36,9);
tn_epzd=piez_data(16:4:36,10);
date_epzd=x2mdate(piez_data(16:4:36,1));

%%Bar plots
datetick
figure('name','k_wpzsh')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_wpzsh,k_wpzsh,0.4)
set(gca,'FontSize',20)
ylabel('K (mg/l)')
title(nut_names(1));
datetick
figure('name','cl_wpzsh')
yyaxis right
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis left
bar(date_wpzsh,cl_wpzsh,0.4)
set(gca,'FontSize',20)
title(nut_names(2));
ylabel('Cl (mg/l)')
datetick
figure('name','dp_wpzsh')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_wpzsh,dp_wpzsh,0.4)
set(gca,'FontSize',20)
title(nut_names(3));
ylabel('DP (mg/l)')
datetick
figure('name','tp_wpzsh')
yyaxis right
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis left
bar(date_wpzsh,tp_wpzsh,0.4)
set(gca,'FontSize',20)
title(nut_names(4));
ylabel('TP (mg/l)')
datetick
figure('name','no3_wpzsh')
yyaxis right
ylabel('Rain (mm)','color','b')
bar(x2mdate(rain_piez_win22(:,1)),rain_piez_win22(:,2)); ylabel('Rain (mm)','color','b')
yyaxis left
bar(date_wpzsh,no3_wpzsh,0.4)
set(gca,'FontSize',20)
title(nut_names(5));
ylabel('NO3 (mg/l)')
datetick
figure('name','nh4_wpzsh')
yyaxis right
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis left
bar(date_wpzsh,nh4_wpzd,0.4)
set(gca,'FontSize',20)
title(nut_names(6));
ylabel('NH4 (mg/l)')
datetick
figure('name','so4_wpzsh')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_wpzsh,so4_wpzsh,0.4)
set(gca,'FontSize',20)
title(nut_names(7));
ylabel('SO4 (mg/l)')
datetick
figure('name','tn_wpzsh')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_wpzsh,tn_wpzsh,0.4)
set(gca,'FontSize',20)
title(nut_names(8));
ylabel('TN (mg/l)')
datetick

%wpzd
figure('name','k_wpzd')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_wpzd,k_wpzd,0.4)
set(gca,'FontSize',20)
ylabel('K (mg/l)')
title(nut_names(1));
datetick
figure('name','cl_wpzd')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_wpzd,cl_wpzd,0.4)
set(gca,'FontSize',20)
title(nut_names(2));
ylabel('Cl (mg/l)')
datetick
figure('name','dp_wpzd')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_wpzd,dp_wpzd,0.4)
set(gca,'FontSize',20)
title(nut_names(3));
ylabel('DP (mg/l)')
datetick
figure('name','tp_wpzd')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_wpzd,tp_wpzd,0.4)
set(gca,'FontSize',20)
title(nut_names(4));
ylabel('TP (mg/l)')
datetick
figure('name','no3_wpzd')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_wpzd,no3_wpzd,0.4)
set(gca,'FontSize',20)
title(nut_names(5));
ylabel('NO3 (mg/l)')
datetick
figure('name','nh4_wpzd')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_wpzd,nh4_wpzd,0.4)
set(gca,'FontSize',20)
title(nut_names(6));
ylabel('NH4 (mg/l)')
datetick
figure('name','so4_wpzd')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_wpzd,so4_wpzd,0.4)
set(gca,'FontSize',20)
title(nut_names(7));
ylabel('SO4 (mg/l)')
datetick
figure('name','tn_wpzd')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_wpzd,tn_wpzd,0.4)
set(gca,'FontSize',20)
title(nut_names(8));
ylabel('TN (mg/l)')
datetick

%epzsh
figure('name','k_epzsh')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_epzsh,k_epzsh,0.4)
set(gca,'FontSize',20)
title(nut_names(1));
ylabel('K (mg/l)')
datetick
figure('name','cl_epzsh')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_epzsh,cl_epzsh,0.4)
set(gca,'FontSize',20)
title(nut_names(2));
ylabel('Cl (mg/l)')
datetick
figure('name','dp_epzsh')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_epzsh,dp_epzsh,0.4)
set(gca,'FontSize',20)
title(nut_names(3));
ylabel('DP (mg/l)')
datetick
figure('name','tp_epzsh')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_epzsh,tp_epzsh,0.4)
set(gca,'FontSize',20)
title(nut_names(4));
ylabel('TP (mg/l)')
datetick
figure('name','no3_epzsh')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_epzsh,no3_epzsh,0.4)
set(gca,'FontSize',20)
title(nut_names(5));
ylabel('NO3 (mg/l)')
datetick
figure('name','nh4_ewpzd')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_epzsh,nh4_epzd,0.4)
set(gca,'FontSize',20)
title(nut_names(6));
ylabel('NH4 (mg/l)')
datetick
figure('name','so4_epzd')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_epzsh,so4_epzd,0.4)
set(gca,'FontSize',20)
title(nut_names(7));
ylabel('SO4 (mg/l)')
datetick
figure('name','tn_epzsh')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_epzsh,tn_epzsh,0.4)
set(gca,'FontSize',20)
title(nut_names(8));
ylabel('TN (mg/l)')
datetick

%epzd
figure('name','k_epzd')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_epzd,k_epzd,0.4)
set(gca,'FontSize',20)
title(nut_names(1));
ylabel('K (mg/l)')
datetick
figure('name','cl_epzd')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_epzd,cl_epzd,0.4)
set(gca,'FontSize',20)
title(nut_names(2));
ylabel('Cl (mg/l)')
datetick
figure('name','dp_wpzd')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_epzd,dp_epzd,0.4)
set(gca,'FontSize',20)
title(nut_names(3));
ylabel('DP (mg/l)')
datetick
figure('name','tp_epzd')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_epzd,tp_epzd,0.4)
set(gca,'FontSize',20)
title(nut_names(4));
ylabel('TP (mg/l)')
datetick
figure('name','no3_epzd')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_epzd,no3_epzd,0.4)
set(gca,'FontSize',20)
title(nut_names(5));
ylabel('NO3 (mg/l)')
datetick
figure('name','nh4_epzd')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_epzd,nh4_epzd,0.4)
set(gca,'FontSize',20)
title(nut_names(6));
ylabel('NH4 (mg/l)')
datetick
figure('name','so4_epzd')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_epzd,so4_epzd,0.4)
set(gca,'FontSize',20)
title(nut_names(7));
ylabel('SO4 (mg/l)')
datetick
figure('name','tn_epzd')
yyaxis left
bar(x2mdate(piez_rain(1:12,1)),piez_rain(1:12,2)); ylabel('Rain (mm)')
yyaxis right
bar(date_epzd,tn_epzd,0.4)
set(gca,'FontSize',20)
title(nut_names(8));
ylabel('TN (mg/l)')
datetick
