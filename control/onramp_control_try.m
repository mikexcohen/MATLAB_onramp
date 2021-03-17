%%
%   COURSE: MATLAB onramp: coding, concepts, confidence, style										
% 
%  SECTION: Control statements
%    VIDEO: Try-catch
% 
%  TEACHER: Mike X Cohen, sincxpress.com
%

%% try-catch

% used to ignore errors but collect information about the error for later inspection

vec = [2 3 4];

% case 1:
vec(4)

% case 2:
try
    vec(4)
catch me
end


%% done.
