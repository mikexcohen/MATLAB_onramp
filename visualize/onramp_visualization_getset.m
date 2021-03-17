%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: Data visualizations
%    VIDEO: Improve your figure with get and set
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%


%% slightly more advanced: get and set
% "set" allows you to access specific properties of graphics. 
% set uses "parameter-value pair" operations, which you will use
% often in plotting, as well as in some other advanced functions.
plot(1:10,rand(10,3))
set(gca,'xtick',1:2:9); % gca = "get current axis"; note the parameter-value pair afterwards
set(gca,'xtick',1:2:9,'xticklabel',{'one';'three';'five';'seven';'nine'}) % can put multiple parameter-value pairs in one function

% the complement to set is get. type "get(gca)" to see a list of parameters
% you can change
get(gca)
% you can also access (and return output from) axis properties:
axis_ylim = get(gca,'YLim'); % axis_ylim is the lower and upper bounds of the y-axis


% note that 'gca' points to the "current" axis, or the one most recently used. 
% You can mouse-click on an axis to make it current.
subplot(221)
plot(rand(10,3))

subplot(224)
plot(rand(10,3))
set(gca,'xlim',[-4 15])

%% change figure properties

% you can also change properties of figures, e.g.: 
set(gcf,'Color',[.6 0 .8],'name','My purple figure!','numberTitle','off')

%% set: not just for axes and figures

% Things can get slightly confusing, so make sure you use informative variable names.
title('Hello there') 
titleh = get(gca,'Title'); % the "title" property is a handle to the title object
%titleh = title('Hello there'); % does the same thing as the previous line
get(titleh)
set(titleh,'FontSize',40)
set(titleh,'String','LARGE TITLE')

% Let's touch up the figure with some lines showing the 0 crossings. 
% We can do this without needing to know the exact axis limits:
figure(3), clf
plot(5*randn(10,2))
hold on
plot(get(gca,'xlim'),[0 0],'k')

% handle to line
lineh = plot([6 6],get(gca,'ylim'));
get(lineh) % note: variables for handles end in h
set(lineh,'linestyle','--','linewidth',2,'color','k')

%% done.
