%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: Control statements
%    VIDEO: Application: Import-export data
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%

%% advanced importing text data

% Here we borrow from C language to flexibly read in mixed data. Let's say
% you have some poorly organized behavioral data files to read in, but at 
% least you know what text strings to look for: 

fid = fopen('headache_data.txt','r');
% fid is a pointer to a location on the physical hard disk (similar to how
% we used variables as handles to axes when plotting). The 'r' means read
% (later we'll use 'w' for write).

% In this particular example, we will extract the trial number, subject
% choice, reaction time (RT), and accuracy for each trial. Fields are separated by tabs.

mydata = []; % initialize... we can't initialize the full matrix, because we don't know how big this will be.

% The following code will remain inside a loop, reading in and processing new
% lines of data, until we reach the end of the file.
row = 1;

while ~feof(fid) % feof tests whether we're at the end of the file.
    
    aline = fgetl(fid); % read a line ("file get line")
    
    aline = regexp(aline,'\t','split');
    % regexp can be used to cut data according to delimiters. Here we will
    % cut this string of characters into a cell array in which elements of
    % the array are separated by tabs.
    
    % here we use strcmpi to compare strings. The "i" means to ignore case.
    if ~any(strcmpi('trial',aline))
        continue % continue means to skip to the next iteration of the loop.
    end
    
    trial_column    = find(strcmpi('trial',   aline));
    choice_column   = find(strcmpi('choice',  aline));
    rt_column       = find(strcmpi('rt',      aline));
    accuracy_column = find(strcmpi('accuracy',aline));
    
    mydata(row,1) = str2double(aline{trial_column+1});      % Note that we didn't initialize the size of the variable "behavioral_data" so matlab gives a warning.
    mydata(row,2) = str2double(aline{choice_column+1});     % If the variable is relatively small, it doesn't matter. 
    mydata(row,3) = str2double(aline{rt_column+1});         % If the variable is large, however, it's best to initialize it to something really big, and then cut it down to size afterwards.
    mydata(row,4) = str2double(aline{accuracy_column+1});
    
    row = row+1; % increment row
end

fclose(fid); % don't forget to close the file after you finish it

%% advanced writing out data 

fid = fopen('data_output4spreadsheet.txt','w');

% we want the first row to be variable labels, then rows of mixed string-number data

% variable labels
variable_labels = {'Name';'trial';'choice';'rt';'accuracy'};

% let's add subject names
subject_names = {'billy';'bob'};

% write out header row
for vari=1:length(variable_labels)
    fprintf(fid,'%s\t',variable_labels{vari});
    % the %s is for string; %g is for number.
end

% insert a new-line character
fprintf(fid,'\n');

for datarowi=1:size(mydata,1)
    
    % print subject name
    fprintf(fid,'%s\t',subject_names{datarowi});
    
    % now loop through columns (variables)
    for coli=1:size(mydata,2)
        fprintf(fid,'%g\t',mydata(datarowi,coli));
    end
    fprintf(fid,'\n'); % end-of-line 
    
    % You could also do this in one line:
    %fprintf(fid,'%s\t%g\t%g\t%g\t%g\n',subject_names{datarowi},behavioral_data(datarowi,1),behavioral_data(datarowi,2),behavioral_data(datarowi,3),behavioral_data(datarowi,4));
    
    fprintf('Finished writing line %g of %g\n',datarowi,size(mydata,1));
end

fclose(fid);

% Note that if you omit the first argument to fprintf, it puts the output
% in the command instead of the text file, as in the final line of this for-loop.


%% done.
