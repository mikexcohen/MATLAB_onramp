%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: Data visualizations
%    VIDEO: imagesc, contourf, and surf
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%


%% basic image plotting

% You can also plot images in 2D. This is useful for 2D data such as
% time-frequency maps, connectivity matrices, etc.

figure
imagesc(randn(100))

% imagesc can also take x,y,z inputs, to make x- and y-axis values:
imagesc(1:10:100,0:.1:1,randn(100))

% now let's make this a bit smoother by convoling it with a 2D gaussian
xyrange = -1:.1:1;
[X,Y]   = meshgrid(xyrange); % this creates a grid of X and Y values
gaus2d  = exp(-(X.^2 + Y.^2));

% let's look at the Gaussian
imagesc(gaus2d)

imagesc(xyrange,xyrange,conv2(gaus2d,randn(100),'same'));

% you can toggle the colorbar, which shows you the mapping between color
% and value
colorbar

% you can also change the colormap (type "help graph3d" to see a list of
% default colormaps; you can also create your own)
colormap bone
colormap spring
colormap hot
colormap jet % this is the most commonly used colormap in scientific communications
% hint for how to create your own: type "cmap=jet;" columns are RGB values

%% image vs contourf vs surf

% there are other functions you can use for 2D data, including:
figure
data = conv2(gaus2d,randn(100),'same'); % 2D convolution

subplot(221) % that if you don't use variables and have fewer than 10 subplots, commas are not necessary
imagesc(xyrange,xyrange,data)
title('function: imagesc')

subplot(222)
surf(xyrange,xyrange,data)
shading interp
title('function: surf')

subplot(223)
contour(xyrange,xyrange,data)
title('function: contour')

subplot(224)
contourf(xyrange,xyrange,data,40,'linecolor','none')
title('function: contourf (with more parameters)')

% note how imagesc flips the y-axis! (this can be changed: " set(gca,'YDir','normal') ")

% now let's change the color scaling
set(gca,'clim',[-1 1])
set(gca,'clim',[-10 2])
set(gca,'clim',[-10 20])


% There are many more ways to plot data and manipulate plots;
% this should get you started with the basics. 

% to save the figure, go File -> Save As...
%   you can save as .fig (readable in matlab only), pixelated formats like
%   .bmp or .png, or vector format like .eps (useful for importing into
%   Illustrator or Correl Draw)
% or from the command:
print('colorful_pic.png','-dpng') % creates png

%% a bit more about images

% Images are just matrices of numbers. So are pictures. Load in the picture
% of amsterdam (note: Matlab must be in the directory in which the file lives).
amsterdam = imread('amsterdam.bmp');
whos amsterdam

% note that this picture is a 2 (rows) x 2 (columns) x 3 (RGB) matrix
figure
imagesc(amsterdam)
axis image
axis off % or axis on
grid on  % only if axis is on
grid minor

% try plotting the individual values separately:
title_color_components='RGB';

for subploti=1:4
    
    subplot(2,2,subploti)
    
    if subploti<4
        imagesc(amsterdam(:,:,subploti))
        title([ 'Plotting just the ' title_color_components(subploti) ' dimension.' ])
        colormap gray
    else
        imagesc(amsterdam)
        title('Plotting all colors')
    end
    
    % affects all subplots
    axis off, axis square
end


%% done.
