%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: Variables
%    VIDEO: Variables for logic
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%


%% boolean (a.k.a. logicals, a.k.a. true/false)

% sometimes, it's useful to know if a statement is TRUE or FALSE. 
% You can use a double-equals sign to ask the question of truth:
5==5

% The opposite of true (1) is false (0):
5==4

% not allowed:
4=5

% You can assign these answers to variables:
fourIsFive = 4==5;

whos fourIsFive


% you can use the tilde "~" to negate a statement:
~(1==1) % false because the negation of 1==1 is false
~(4>3)  % also false because the negation of 4>3 is false
~(4<3)  % true because it is false (~) that 4 is greater than 3. Tricky!

% Remember:
%    One equals sign is a statement ("you have this value").
%    Two equals signs means you are asking a question ("are these the same?").


%% done.
