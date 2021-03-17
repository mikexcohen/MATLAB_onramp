%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: Getting data into and out of MATLAB
%    VIDEO: Exporting data in MATLAB, text, and Excel formats
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%


%% MATLAB format

% save as a .mat file:
save('my_matlab_variables.mat','data','amsterdam','x'); % Question: Why does matlab crash on this line?

% possible but not recommended
save % saves the entire workspace in matlab.mat


%% simple text export

% The function 'dlmwrite' is useful if you have a matrix of numbers
% and want to write a text file of only numbers:
dlmwrite('data_written_from_matlab.txt',data,'\t');
% the final argument is the delimieter. This can be tab (\t), space ( ), comma (,), the letter X (X), etc. 


%% Excel format

% export as Excel file
mat2save = round( 25*rand(4,5) );

% this function won't work if MATLAB cannot connect to a Microsoft Excel
% server, which happens if you don't have Microsoft Office.
xlswrite('filename.xlsx',mat2save)


%% csv (comma-separated-values)

csvwrite('filename.csv',mat2save)


%% done.
