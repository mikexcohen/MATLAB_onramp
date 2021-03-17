%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: Data visualizations
%    VIDEO: Making bar plots with error bars
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%


%% basic barplots

figure(3), clf

% basic bar
bar(1:4,[1 -2 5 4])

% specify x and y values separately
bar([1 2 5 6],9:-2:3)

% matrix input can be powerful but confusion
mat = [1 2 3; 2 3 4];
bar(mat') % what happens when you transpose mat?

%% barplots with errorbars

% specify x-values
x = [1 3 4 7 8];
y = [1 9 3 4 5];
e = [1 2 4 .2 .2];

% simple errorbar function
subplot(211)
errorbar(x,y,e,'r.')
title('errorbar alone')


% often looks nicer like this:
subplot(212)
bar(x,y)
hold on
errorbar(x,y,e,'.')
title('bar and errorbar')


%% done.
