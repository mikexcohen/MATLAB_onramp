%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: Functions, part 2
%    VIDEO: Anonymous functions
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%



%% a simple anonymous function

% define function: 
% name = @(input) function;

% example:
myfunc = @(x) x^2;

% a different class of variable:
whos
myfunc

% a better function name:
x2fun = @(x) x^2;


% test that it works when you know the answer
x2fun(0)
x2fun(2)
x2fun(4)

% does it work on vector inputs?
x2fun(1:3)


% embed directly into plot function
x = linspace(-3,3,100);
plot(x,x2fun(x),'s-')

% can also save outputs as new variable
y = x2fun(x);

%% multiple inputs

% good function name with multiple inputs
xSquaredWoffset = @(x,y) x.^2 + y;

% always test with known outputs first!
xSquaredWoffset(3,0)


% 2D inputs to sample the parameter space
x = linspace(-3,3,50);
[X,Y] = meshgrid(x);

% evaluate the function for both variables
Z = xSquaredWoffset(X,Y);

% make an image
imagesc(x,x,Z)
xlabel('X')
ylabel('Y (offset)')
title([ 'Function: ' func2str(xSquaredWoffset) ])


% or plot.
plot(x,Z)

%% common error in anon functions

clear

% different input and function variables
x2fun = @(x) y.^2;

x2fun(0)

% now define the variable in the workspace
y = 3;
x2fun(0) % MATLAB version dependent: will either "work" or error

%% anonymous functions in minimization problem

% goal: find x that minimizes the function x^3 + x^4
x3_p_x4 = @(t) (t.^3 + t.^4); % which sets of parentheses are optional?

% first plot
figure(1), clf
x = linspace(-3,3,50);
plot(x,x3_p_x4(x));
set(gca,'ylim',[-2 2])

% minimize close to some point
[minvalX,minvalY] = fminsearch(x3_p_x4,0);

hold on
plot(minvalX,minvalY,'ro','markerfacecolor','r')

%% end.
