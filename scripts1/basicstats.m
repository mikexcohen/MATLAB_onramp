function stats = basicstats(invar)
% stats = basicstats(invar)
% 
% This function computers the mean, sum, and standard deviation of an input numeric vector.
% 
%      INPUT:   invar - input vector, must be numeric at least 3 elements long.
% 
%     OUTPUT:   stats - a 3-element vector containing [ mean sum stdev ]
% 
%  written by mikexcohen.com
% 

%% input checks

% check that the input is numeric
if ~isnumeric(invar)
    help basicstats
    error('Input must be numeric!')
end

% input has at least 3 numbers
if numel(invar)<3
    help basicstats
    error('Input must contain at least 3 numbers!')
end

% must be a vector, not a matrix
if ~isvector(invar)%sum(size(invar)~=1)>1
    error('Only vector inputs, not matrix inputs!')
end

%% compute the basic statistics

% compute the mean
themean = mean(invar);

% compute the sum
thesum = sum(invar);

% compute the standard deviation
thestdev = std(invar);

%% display the results to the command window

clc
disp([ 'The mean of the input is ' num2str(themean) '.' ])
disp([ 'The sum of the input is ' num2str(thesum) '.' ])
disp([ 'The standard deviation of the input is ' num2str(thestdev) '.' ])

%% prepare the output

stats = [ themean thesum thestdev ];

