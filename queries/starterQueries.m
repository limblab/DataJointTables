%Starter queries for limblab_db
%
% Step 1: connect to vpn
% Step 2: open ssh tunnel: ssh -N -L 3307:localhost:3306 LLMatlabScript@vfsmmillerdb.fsm.northwestern.edu
% Step 3: run first section of this script, with updated path for DataJoint
% Step 4: start querying!

%   N.B. Pulling a lot of xds structures will be
%        slow. The best approach is to identify files you want to pull based on
%        fields like monkey, task, has_emg, etc. I will put a full list of field
%        names somewhere soon


%% Define environment
addpath('/Users/josephinewallner/Documents/MATLAB/Addons/datajoint-matlab-master')
addpath('/Users/josephinewallner/Desktop/LabWork/MillerLab/dataJoint')

setenv DJ_USER josie
setenv DJ_HOST 127.0.0.1:3307
setenv DJ_PASS 'Butter54!'

%% Pull metadata to identify file keys

query = limblab_db.DataFile & 'monkey = ''Mihili''';
[fileLength, paperKey, hasEmg, data_file_key] = query.fetchn('file_length', 'paper_key', 'has_emg');


%% Get xds for specified file keys
query = limblab_db.DataFile & 'data_file_key BETWEEN 25 AND 31';
xds = query.fetchn('xds');


convertedXds = cell(size(xds));
for i = 1:length(xds)
    convertedXds{i} = getArrayFromByteStream(xds{i});
end