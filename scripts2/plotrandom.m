function outvec = plotrandom(varargin)
% PLOTRANDOM   generate and plot sorted random numbers
% 
%   outvec = plotrandom(N,plottoggle)
% 
%   INPUTS:    N       -  number of numbers to generate. 
%                      -  Must be in range [5,100]
%                      -  Default value is 30
%          plottoggle  -  0 for no plot (default), anything else for a plot
% 
%   OUTPUT:  outvec    - sorted random number vector
% 
%  mikexcohen.com


% a function that takes 0, 1, or 2 inputs: 
%  1) N numbers to generate and sort (default 30). N between 5 and 100
%  2) plot toggle (default false).
% and outputs the sorted random numbers


%% input checks

% set default values if none inputted
if nargin==0
    N = 30;
    plottoggle = false;
elseif nargin==1
    N = varargin{1};
    plottoggle = false;
elseif nargin>1
    N = varargin{1};
    plottoggle = varargin{2};
end

% N is numeric and a single number (scalar)
if ~isnumeric(N) || length(N)>1
    help plotrandom
    error('First input needs to be one number.')
end

% N must be between 5 and 100
if N<5 || N>100
    help plotrandom
    error('First input needs to be between 5 and 100.')
end
    

%% generate random numbers and sort

vec = randn(N,1);
outvec = sort( vec );

%% generate a plot if requested

if plottoggle
    
    % new figure
    figure(100), clf
    
    % plot the data
    plot(outvec,'ks-','linewidth',2,'markersize',16,'markerfacecolor','w')
    xlabel('X axis')
    ylabel('Y axis')
    title('The plot.')
    set(gca,'xlim',[.5 N+.5])
end






