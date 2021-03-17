%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: Variables
%    VIDEO: What are variables?
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%

%%

% variables as place-holders for information
x = 1
a = 7
x + a
x*a^a

% reassign a value to a variable
x = 4
x*a^a

% with a semicolon to suppress the output
b = x*a^a
b = x*a^a;

%% variables for strings

s = 'hello';

s = 3;

%% longer variable names allow for interpretability

mike = 72;
tom  = 28;
mike + tom

whos

%% removing variables from the workspace

clear x
whos

x + 4

x  = 4;
xx = 5;
clear x* % clears everything that starts with x

clear % permanent!

%% common mistakes

% case-sensitive
varname = 1;
Varname


%% done.


