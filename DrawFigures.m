clc;
clear;

% figure(1)
% x=[5,10,20,50,100];
% y=[51132100/19107600,59965100/12802600,63278900/7938370,60401700/3418090,51319400/2087330];
% plot(x,y,'-or');
% axis([0,110,0,30]);
% xlabel("乙醇浓度(ppm)");
% ylabel("响应比");
% export_fig C:\Users\26914\Desktop\Pictures\concentration.png -transparent

% x=xlsread("C:\Users\26914\Desktop\Data.xlsx","Time");
% y=xlsread("C:\Users\26914\Desktop\Data.xlsx","Channel");
% figure('color',[1,1,1]);
% y1=51132100./y;
% plot(x,y1,'LineWidth',4);
% xlabel("时间/秒");
% ylabel("约化响应比");
% axis([0,5000,0,30]);
% set(gcf,'position',[0,0,1000,1000]);
% set(gca,'FontSize',20);
% box off
% ax2 = axes('Position',get(gca,'Position'),...
%            'XAxisLocation','top',...
%            'YAxisLocation','right',...
%            'Color','none',...
%            'XColor','k','YColor','k');
% set(ax2,'YTick', []);
% set(ax2,'XTick', []);
% box on
% set(gca,'LineWidth',2);
% export_fig C:\Users\26914\Desktop\Pictures\Standarlized_Ratio-Time.png

x=xlsread("C:\Users\26914\Desktop\Data.xlsx","Time");
y=xlsread("C:\Users\26914\Desktop\Data.xlsx","Channel");
% [x,y]=Delete(x,y,839,1163);
% [x,y]=Delete(x,y,809,839);
% % [x,y]=Delete(x,y,1672,2092);
% [x,y]=Delete(x,y,3391,3831);
% [x,y]=Delete(x,y,595,616);
% [x,y]=Delete(x,y,1377,1396);
% [x,y]=Delete(x,y,3053,3069);
% % [x,y]=Delete(x,y,1882,2736);
% [x,y]=Delete(x,y,2730,3300);
% % [x,y]=Delete(x,y,1619,1632);
% % [x,y]=Delete(x,y,1616,1906);
% [x,y]=Delete(x,y,0,237);
% [x,y]=Delete(x,y,342,358);
% [x,y]=Delete(x,y,535,847);
% [x,y]=Delete(x,y,1602,1613);
% [x,y]=Delete(x,y,0,1508);
% [x,y]=Delete(x,y,2445,5340);
% y=Shift(x,y,0,346,-4.4e6);
[x,y]=Delete(x,y,0,1424);
[x,y]=Delete(x,y,1583,6000);
[x,y]=Delete(x,y,321,347);
figure('color',[1,1,1]);
plot(x,y,'LineWidth',1);
xlabel("时间/秒");
ylabel("电阻/Ω");
axis([0,1200,0,7e7]);
set(gcf,'position',[0,0,1600,800]);
set(gca,'FontSize',20);
box off
% ax2 = axes('Position',get(gca,'Position'),...
%            'XAxisLocation','top',...
%            'YAxisLocation','right',...
%            'Color','none',...
%            'XColor','k','YColor','k');
% set(ax2,'YTick', []);
% set(ax2,'XTick', []);
box on
set(gca,'LineWidth',2);
export_fig C:\Users\26914\Desktop\Pictures\Resistance-Time.png