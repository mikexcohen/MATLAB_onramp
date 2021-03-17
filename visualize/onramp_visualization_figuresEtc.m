%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: Data visualizations
%    VIDEO: Importance of visualization; figure parts
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%

%% first, a motivating example

% the goals is to produce a Gaussian (normal curve)
t = -.5:.01:.5;
s = .04;
gaussian = exp( -t.^2 / (2*s^2) );
% seems OK, MATLAB didn't crash, and the code seems to match the function


% but when plotting, it doesn't look right
plot(t,gaussian)

%% figures

figure % opens a new figures

% close a figure:
close

% if you know the figure number, or have a handle to it (we'll get to this
% later), you can also open and close specific figures.
figure(10)
figure(100)
figure(103)

close([100 ...  An elipse at the end of a line allows you to write comments and continue the code on the next line. This is convenient for long lines of code that you want to be visible on a single screen without using the horizontal scrollbar. 
    103])


% simple plotting
plot(randn(10,4))

% close all figures
close all

%% subplots

% so far we've been putting all the data into one plot in the center of the
% figure. you can also use multiple plots:
figure(1)

subplot(1,2,1) % 1 row, 2 columns, make the first subplot active
plot(randn(10,2))

subplot(1,2,2) % 1 row, 2 columns, make the second subplot active
% if <10 subplots, you can enter a single number:
subplot(122)
plot(randn(10,2))


%% mixed subplot geometry

close all
figure

subplot(121)
plot(randn(10,3))

% OK
subplot(224)
plot(randn(5))

% but...
subplot(313)
plot(randn(6))

%% subplots embedded inside a loop

figure(1)
clf % clf = clear figure

for subploti=1:4
    subplot(2,2,subploti)
    plot( (-10:10).^subploti )
end

%% done.
