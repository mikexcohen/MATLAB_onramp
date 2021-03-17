%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: Control statements
%    VIDEO: While-loops
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%

%% while-loops

% while loops are similar to for-loops except:
%   1) You don't need to specify before-hand how many iterations to run,
%   2) The looping variable is not implicitly updated; you have to increment it yourself.

toggle = false;

idx = 1;
while toggle
    disp([ 'I''m working on step ' num2str(idx) ' and it makes me happy.' ])
end

%% example of while loop

% initialize values to 100
[curr_val,init_val] = deal( 100 );

toggle = true;

while toggle
    
    % decrease value by 5%
    curr_val = curr_val * .95;
    
    % compute percent change from initial value
    pctchng = 100*(init_val-curr_val) / init_val;
    
    % round to 2 decimal points
    pctchngRound = round(pctchng*100)/100;
    
    % display message
    disp([ 'Value = ' num2str(curr_val) ', ' num2str(pctchngRound) '% change from original value.' ])
    
    % check if toggle should be switched off
    if curr_val<1
        toggle = false;
    end
end



%% done.
