%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: Data visualizations
%    VIDEO: Plotting lines in 2D and 3D
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%

%% basic 2D plotting

figure(1), clf
plot(1:10,(1:10).^2); % plot X by Y

% run this line after the previous one. note that it overwrites the
% previous plot
plot(1:10,log(1:10))

% alleviated with the hold command
hold on
plot(1:10,(1:10).^1.5); % plot X by Y
hold off
plot(randn(4))


% basic plotting color customization
clf
plot(1:10,(1:10).^2,'linewidth',3);
hold on 
plot(1:10,log(1:10)*30,'r-d') % plot in red and with thicker lines. type "help plot" to learn more

%% draw a straight line

% Drawing a line is simple, but can be a bit tricky at first. You need to
% define the start and end points in the X and Y (and also Z if you are
% plotting in 3D) axes:
plot([2 9],[60 60],'k')
plot([1 10],[0 100],'m:')

% now release the hold
hold off

% Of course, you can plot the information in variables:
subplot(211)
x = 0:.1:1;
y = exp(x);
plot(x,y,'.-')

% x and y need to be of equal length, otherwise you'll get an error:
x = 0:.1:1;
y = [0 exp(x)];
plot(x,y,'.-')

% you can plot multiple lines simultaneously if they are in a matrix
cla % clear axis; note the difference between cla and clf
plot(100:100:1000,rand(10,3))

% now let's add some extra features...
title('Random lines')
xlabel('x-axis label... maybe time? maybe space?')
ylabel('voltage (\muV)') % note that the "\mu" is converted to the greek lower-case character
legend({'line 1';'line 2';'line 3'}) % this is a cell array!

%% plotting lines in 3D

% If you feel constrained by two dimensions, fear not! Matlab also allows you to 
% plot data in three dimensions. This becomes particularly handy for complex functions 
% such as Fourier transform and wavelet convolution.

% Plotting a line in a 3D space is easy. First, define data in 3 dimensions. 
n = 10;
dataX = rand(1,n);
dataY = randn(1,n);
dataZ = rand(1,n)*10;

% Now simply use plot3 the same way you would use plot, 
% but with three inputs:
figure(2), clf
plot3(dataX,dataY,dataZ)

grid on % sometimes useful

rotate3d on % this command will allow you to click-and-drag on the figure to spin the data around

% adding other features to the plot works the same as with a normal plot,
% e.g.,
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')


% You might instead have a 3D matrix, e.g.,
data3d = randn(3,30);
plot3(data3d)
% Although the previous line seems like it should work, it unfortunately
% doesn't. You'll need to input each dimension separately:
plot3(data3d(1,:),data3d(2,:),data3d(3,:),'ko-','linew',3,'markerface','m','markersize',10) % you can use the same extra inputs to define line features as you would with the normal plot function
axis off
axis square % also try tight and normal


%% done.
