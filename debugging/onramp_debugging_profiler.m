%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: Debugging
%    VIDEO: tic/toc, MATLAB profiler
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%


%% using tic/toc to time code

% brief intro to tic/toc
tic
pause(1)
toc

% good practice to run several times
data = randn(100000,1);
tic, fft(data); toc % MATLAB initializes fft on first run
tic, fft(data); toc % now should be faster

%% using tic/toc to show the importance of initialization

clear
n = 3000;

% no initialization
tic
for i=1:n
    amat1(i,i) = i;
end
t(1) = toc;


% with initialization
tic
amat2 = zeros(n);
for i=1:n
    amat2(i,i) = i;
end
t(2) = toc;


% better?:
tic
amat3 = diag(1:n);
t(3) = toc;


% now plot the computation times
bar(t)
set(gca,'xtick',1:3,'xticklabel',{'No init';'init';'diag'})
ylabel('Computation time (sec.)')
title('Computation times to achieve the same result.')

%% MATLAB profiler

% Put the code below into a separate file (e.g., tmpscript) and run
profile on
tmpscript;
profile viewer;
% Then inspect the profiler results and 
% think about ways to improve the code.



% number of elements
N = 1000;

% initialize
data   = randn(10,N) ;
result = zeros(N);

for i=1:100
    
    clear ls1
    for j=1:N
        ls1(j,j) = i + j/N;
    end
    
    % make a nice gradient
    ls1 = transpose(ls1);
    ls2 = ls1*ls1';
    
    dataX = abs( fft(data) ) + randn(size(data));
    
    result = result + ls2*rand + dataX'*dataX;
end


%% end.
