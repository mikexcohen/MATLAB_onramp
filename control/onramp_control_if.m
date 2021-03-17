%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: Control statements
%    VIDEO: Control statement architecture; if and switch
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%

%% if-statements

% Exactly how it sounds
if 4>5
    disp('Something has gone awry in the universe')
end


% with an alternative
if 4>5
    disp('Something is still very wrong')
else
    disp('Whew! Everything''s normal.') % note the two single-quote marks inside the string
end


% more alternatives
randnum = randn;
if randnum>2
    disp('Big number')
elseif randnum>0 && randnum<2
    disp('Not so big')
elseif randnum<0 && randnum>-2
    disp('A bit on the negative side')
else
    disp('super negative')
end


%% switch

% the 'switch/case' statement is similar to 'if/else'
animal = 'monkey';


switch animal
    case 'dog' % compares variable "animal" to 'dog'
        fav_food = 'cheese';
    case 'cat'
        fav_food = 'bird-flavored yogurt';
    case 'monkey'
        fav_food = 'bananas';
    otherwise
        fav_food = 'pizza';
end % end switch

disp([ 'In the wild, the ' animal ' prefers to eat ' fav_food '.' ])


%% done.

