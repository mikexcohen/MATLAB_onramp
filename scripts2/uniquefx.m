function ufvals = uniquefx(x,varargin)
% UNIQUEFX(x[,sortF])   returns a table with unique elements and their counts
% 
%  INPUT:
%           x  -  numeric vector or matrix (matrices are vectorized)
%       sortF  -  (boolean) optional sort by frequency (default=false)
% 
% OUTPUT:
%      ufvals  - Nx2 matrix with unique values and their frequencies
% 
%   EXAMPLE:
%      >> uniquefx([1 1 3 3 3 3 7 7 7],true)
%      >>   ans =
%               1     2
%               7     3
%               3     4
% 


%% input checks

% make sure input is numeric
if ~isnumeric(x)
    help uniquefx
    error('Input must contain all numbers!')
end

% if input is a matrix
if ~isvector(x)
    x = x(:);
    warning('Vectorizing the matrix input.')
end

% determine whether to sort by frequency
if nargin==1
    sortByFreq = false;
else
    sortByFreq = varargin{1};
end

%% main function

% extract the unique elements
u = unique(x);

% find the frequencies
ufvals = zeros(length(u),2);
for ui=1:length(u)
    ufvals(ui,1) = u(ui);
    ufvals(ui,2) = sum(x==u(ui));
end

% optional sort by frequency
if sortByFreq
    ufvals = sortrows(ufvals,2);
end




