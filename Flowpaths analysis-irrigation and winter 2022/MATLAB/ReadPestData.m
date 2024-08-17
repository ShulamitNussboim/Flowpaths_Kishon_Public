%This script reads pesticides data from the Faculta lab, having x samples.
%The pesticides appear in the list attached with the names.
close all
clear all
load PestApr21.txt;pestdata=PestApr21;lines = readlines("PestNames_irr.txt");
%load selected.txt;pestdata=selected;lines = readlines("sel_names.txt")
x=4;%num of locations
% Read all lines & collect in cell array
%loaction1 is the blank for analysis, not relevant to field data. Starting
%locations from 2 (P1)
names=categorical(lines)
P1=pestdata(2:x:end);
ylabel('\mu g/ml')
P2=pestdata(3:x:end);
WF8=pestdata(4:x:end);
% figure('name','P1')
% bar(names(1:end-1),P1)
% ylabel('ng/L')
figure('name','P2')
bar(names(1:end-1),(P2))
ylabel('ng/L')
figure('name','WS8')
ylabel('ng/L')
bar(names(1:end-1),(WF8))
figure('name','All (log)')
bar(names(1:end-1),[log(P1),log(P2),log(WF8)])
ylabel('ng/L')
figure('name','All')
bar(names(1:end-1),[(P1),(P2),(WF8)])
ylabel('ng/L')