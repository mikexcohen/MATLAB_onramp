%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: Variables
%    VIDEO: Variables for structures
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%


%%

% The most flexible type of variable is a structure. Structures contain fields that 
% are used for different kinds of data. For example:

ANTS.name = 'mike'; % ANTS = Analyzing Neural Time Series
ANTS.position = 'author';
ANTS.favorite_toothpaste_flavor = 'cinnamon';
ANTS.number_of_watches = 18;
ANTS.favorite_color = [ .8 .1 .8 ]; % RGB values

% You can also have an array of structures
ANTS(2).name = 'Mickey Mouse';
ANTS(2).position = 'learner';
ANTS(2).favorite_toothpaste_flavor = 'bratworst'; % gross, but who am I to judge?
ANTS(2).number_of_watches = 1;
ANTS(2).favorite_color = [ 1 1 1 ];

% now you can get information about all fields from one specific element of
% the structure:
ANTS(1)

% or information about one field within one member:
ANTS(1).number_of_watches

% or information about one field from all members:
ANTS.favorite_toothpaste_flavor

% note that this last result came out as two separate answers. If you want
% to combine them into a single output (e.g., a cell array), use curly
% brackets:
{ANTS.favorite_toothpaste_flavor}


%% done.
