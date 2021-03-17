%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: Control statements
%    VIDEO: For-loops
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%

%% for-loops

% A for-loop is a way to iterate repeatedly:

for counting_variable = 1:10
    disp(counting_variable); % disp stands for display, which prints information in the command window
end

%% another example:

for i = 1:2:10
    disp([ 'The ' num2str(i) 'th iteration value times 2 divided by 3 and added to 7 is ' num2str((i*2)/3+7) '.' ])
end


%%
% an if-statement embedded in a loop
for numi=1:10
    if mod(numi,2)==0
        disp([ 'The number ' num2str(numi) ' is even.' ])
    else
        disp([ 'The number ' num2str(numi) ' is odd. And that''s the way the news goes.' ])
    end
end


% You can embed loops within loops
for i = 1:5
    for j = 3:7
        product_matrix(i,j) = i*j; % Matlab produces a warning here because product_matrix is not initialized.
    end
end
% Two important things to note about the example above: (1) You can use the same numbers as
% indices AND as variables; (2) Unspecified elements in a matrix are
% automatically created and set to zero. 



number_rows    = 5; % having many spaces is allowed and facilitates code aesthetics
number_columns = 7;

% initialize matrix with zeros
product_matrix = zeros(number_rows,number_columns);

for i=1:number_rows
    for j=1:number_columns
        product_matrix(i,j)=i*j;
    end % end j-loop
end % end i-loop
% note the comments following end-statements. When you have multiple long
% loops, this kind of commenting will be helpful. Also note that when you 
% click on one of the "for" or "end" statements, its pair will be underlined. 



% a common problem in for loops:
avec = zeros(7,1);
for i=-3:3
    avec(i) = i;
end



%% done.
