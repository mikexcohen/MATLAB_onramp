%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: Scripts and functions, part 1
%    VIDEO: Comments, cells, spacing
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%


%% comments and cells

% A comment is text that is ignored by MATLAB
% and is used to annotate and explain code.

q = 7; % comments on same line as code

%{
A block of lines,
all commented.
%}

%% cells

% Press Ctrl-Enter to run the entire cell.
x = 1;

disp([ 'Running this cell to print the number ' num2str(x) ])

%% Spacing

% spacing is often unnecessary but always useful. Consider:
ans1=4*5+3/4-13^5;
ans2 = 4*5 + 3/4 - 13^5;

% spacing for assignments and control statements as well:
v=9;
for vi=1:v
result1(vi)=vi^v-4+3/vi^2;end

% or:
v = 9;
result2 = zeros(v,1);
for vi = 1:v
    result2(vi) = vi^v - 4 + 3/(vi^2);
end


%% done.
