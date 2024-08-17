%Thid function plots bar according to selected material and names the
%figure
function piezANDpipe(n,type,date_r,rain,date,data,loc1)%n-of selected pesticide;type- the sampling campaign/location;date_r=date rain.
%n- number of column
%type- sampling area (west-1, east=2, stream-3)
%date of rain series
%rain series
%date of chemistry series
%Chemistry series
%wanted location (for option 6)
%loc-1-piezometer,2-pipes, manholes,4-soil,5-field,6-secondary drainage
%trench,7- primary drainage trench, 8-stream)
errlow=0.15*data;
errhigh=0.15*data;
if type==1
figure('Name',sprintf('WPzD %d',n))
yyaxis right
bar(date_r,rain,'b'); ylabel('Rain (mm)','color','b')
ylabel('Rain (mm)','color','b')
yyaxis left
barFontSize = 20;
bar(date(1:4:24),data(1:4:24,n),'barwidth',0.4)
hold on
er = errorbar(date(1:4:24),data(1:4:24,n),errlow(1:4:24,n),errhigh(1:4:24,n));    
er.Color = [0 0 0];                            
er.LineStyle = 'none';  

ylabel('ng/L','color','k')
set(gca,'FontSize',20)
datetick

figure('Name',sprintf('WPzSh %d',n))
yyaxis right
bar(date_r,rain,'b'); ylabel('Rain (mm)','color','b')
ylabel('Rain (mm)','color','b')
yyaxis left
barFontSize = 20;

bar(date(2:4:24),data(2:4:24,n),'barwidth',0.4)%'k' for black
hold on
er = errorbar(date(2:4:24),data(2:4:24,n),errlow(2:4:24,n),errhigh(2:4:24,n));    
er.Color = [0 0 0];                            
er.LineStyle = 'none';  

ylabel('ng/L','color','k')
set(gca,'FontSize',20)
datetick

% for k = 1:numel(D)
%   f(k) = figure(k)
%   h(k) = plot(...)
%   title(['Doubling Time  ' D{k}])
% end
 

figure('Name',sprintf('EPzD %d',n))
yyaxis right
bar(date_r,rain,'b'); ylabel('Rain (mm)','color','b')
ylabel('Rain (mm)')
yyaxis left
barFontSize = 20;
bar(date(3:4:24),data(3:4:24,n),'barwidth',0.4)
hold on
er = errorbar(date(3:4:24),data(3:4:24,n),errlow(3:4:24,n),errhigh(3:4:24,n));    
er.Color = [0 0 0];                            
er.LineStyle = 'none'; 
ylabel('ng/L')
set(gca,'FontSize',20)
datetick

figure('Name',sprintf('EPzSh %d',n))
yyaxis right
bar(date_r,rain,'b'); ylabel('Rain (mm)','color','b')
ylabel('Rain (mm)')
yyaxis left
barFontSize = 20;
bar(date(4:4:24),data(4:4:24,n),'barwidth',0.4)
hold on
er = errorbar(date(4:4:24),data(4:4:24,n),errlow(4:4:24,n),errhigh(4:4:24,n));    
er.Color = [0 0 0];                            
er.LineStyle = 'none'; 
ylabel('ng/L')
set(gca,'FontSize',20)
datetick 
else
if type==2
figure('name','P2')
yyaxis right
bar(date_r,rain); ylabel('Rain (mm)')

yyaxis left
barFontSize = 20;
bar(date,data(:,n),'barwidth',0.4)%'k'
hold on
er = errorbar(date,data(:,n),errlow(:,n),errhigh(:,n));    
er.Color = [0 0 0];                            
er.LineStyle = 'none';  

ylabel('ng/L')
set(gca,'FontSize',20)
%datetick('keepticks','keeplimits')
datetick
% else
% if type==3
% figure('name','stream')
% yyaxis right
% bar(date_r,rain); ylabel('Q(m^3/s)')
% set(gca,'FontSize',20)
% yyaxis left
% barFontSize = 20;
% bar(date,data(:,n))
% ylabel('ng/L')
% datetick('keepticks','keeplimits') 

else 
if type==4
lines5 = readlines("frst_cmgn_nms.txt");
frst_cmgn_nms=(categorical(lines5));
%frst_cmgn_nms=reordercats(frst_cmgn_nms)
figure('name','1st_round')
barFontSize = 20;
bar(frst_cmgn_nms(1:end-1),data(:,n))
ylabel('ng/L')
set(gca,'FontSize',20)

else 
if type==5
lines6 = readlines("scnd_cmgn_nms.txt");
scnd_cmgn_nms=(categorical(lines6));
%scnd_cmgn_nms=reordercats(scnd_cmgn_nms)
figure('name','2nd_round')
barFontSize = 20;
bar(scnd_cmgn_nms(1:end-1),data(:,n)) 
ylabel('ng/L')
set(gca,'FontSize',20)
% %avoid alphabethical order
% scnd_cmgn_nms = reordercats(scnd_cmgn_nms,string(scnd_cmgn_nms));
% bar(scnd_cmgn_nms(1:end-1),data(:,n))
% ylabel('ng/L')
% set(gca,'FontSize',20)
else type==6
lines3 = readlines("win22_pestNames.txt");
win22_pestNames=(categorical(lines3));
lines4 = readlines("win22_pestNamesShrt.txt");win22_pestNamesShrt=(categorical(lines4));
figure('name','pest loc')
barFontSize = 20;
win22_pestNamesShrt=unique(win22_pestNamesShrt,'stable');
win22_pestNamesShrt=reordercats(win22_pestNamesShrt)
%bar(win22_pestNames(1:end-1),data(loc1,2:end))
bar(win22_pestNames(1:end-1),data(loc1,2:end-3))
ylabel('ng/L')
set(gca,'FontSize',20)
end 
end
end
end
