%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: Getting data into and out of MATLAB
%    VIDEO: Copy-paste, MATLAB files, Excel, and image files
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%


%% copy/paste from text file or spreadsheet

% Hint: use square brackets for numbers.
dat = [
    ];

%% importing "nice" text data

% The simplest way to read in text data is if all data in the next are
% numbers (no text). Open a text editor and make a small matrix (say, 3x4).
% Next, type: 
data = load('test_datafile.txt');

% slightly more advanced:
[file_name,file_path] = uigetfile('*.txt'); % ui = user-interface
data = load([ file_path file_name ]);

% variable name is file name
whos
load('test_datafile.txt');
whos

%% MATLAB-format .mat files

% load directly into the workspace
clear
load('testmat.mat')
% or
load testmat
whos


% or load as fields into a structure
clear
data = load('testmat.mat');
whos

%% excel files

% you can also read in data from excel files, but BE CAREFUL because this
% function can act in unexpected ways, e.g., by removing empty columns and
% rows without warning (this can be seen in comparing "numberdata" to "raw_data"). 
% Therefore, it might be best to use the "raw" data output. 
[numberdata,textdata,raw_data] = xlsread('test_excelfile.xlsx');

%% reading pictures

amsterpic = imread('amsterdam.bmp');


%% done.
