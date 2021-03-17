%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: Variables
%    VIDEO: Indexing
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%

%%

%% indexing vectors

% accessing a single element of a vector
vec(2)

% uh oh...
vec(.4)



% accessing multiple elements with the colon operator
vec(2:3)

% uh oh...
vec(1:.5:2)


% accessing multiple elements directly
vec([ 1 1 3 2 1 2 3 2 ])

%% indexing matrices

amat(1,2:3)

amat(1,[2 3])

% linear indexing (best avoided for now)
amat(4:5)


%% done.
