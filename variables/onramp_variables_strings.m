%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: Variables
%    VIDEO: Variables for strings
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%

%% characters

name = 'mike';
name = mike;

char4 = '4';

%% strings

nameS = "mike";

% notice:
name(2)
nameS(2)

%% cells

names = { 'mike' };

names = { name ; 4 }; % what happens without the semicolon in the middle?

%% cell arrays

celery{1} = [ 1 2 3 4 5 6 7 ];
celery{2} = 'hello world';
celery{3} = [ 1 3 6 7 4 3 5 6 7 87 76 43 4 5 6 767 ];

celery
celery{2}

%% [] {}

% square brackets for concatenation
[ 3 4:6 pi ]
[ 'Hello ' 'my name is Mike and I like ' num2str(7) ' apples.' ]

% curly brackets for cell arrays
cell1 = { 4 4 5 };
cell2 = { 'hello my' 'name' 'is' 'Mike' };



%% done.
