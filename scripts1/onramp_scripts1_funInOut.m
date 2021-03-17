%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: Scripts and functions, part 1
%    VIDEO: Function inputs and outputs
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%


%% basic function usage

% functions take inputs in parentheses
vect = [ 1 2 3 ];
sum(vect)
% or
sum([ 1 2 3 ])

% function outputs stored as variables
numsum = sum([ 1 2 3 ]);


% some functions take multiple inputs
linspace(1,3,5)

% some functions take multiple outputs
[ maxval,maxidx ] = max([1 4 2 2])

%% functions for determining the size of variables

% create a matrix of random numbers
randmat = randn(30,4,10);
randvec = randn(20,1); % a matrix, not a vector!

% size 
size(randmat)
size(randmat,2)

% length
length(randvec)
length(randmat)

% numel
numel(randvec)
numel(randmat)


%% done.

