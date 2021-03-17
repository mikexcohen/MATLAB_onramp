%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: Debugging
%    VIDEO: The FIP (find, inspect, plot) debugging strategy
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%

%% how to debug

% 1) (F)ind the offending line and piece of code
% 2) (I)nspect error message and variables (check sizes!)
% 3) (P)lot (or image, or bar, or whatever is appropriate)
% 4)    Fix or change
% 5)    Learn a lesson!

% generate random phase values
N = 100;
phases = 2*pi*rand(N,1);

% initialize
meanvecL = zeros(N);

% loop over time points
for sampi=1:N
    
    % pick random points to sample
    pnts2sample = round( sampi*rand(sampi,1) );
    
    % compute mean vector length
    meanvecL(sampi) = abs(mean(exp(1i*phases(pnts2sample))));
end

% plot the results
figure(1), clf
plot(1:N,meanvecL,'s-','linew',2,'markersize',10,'markerfacecolor','k')


%% done.
