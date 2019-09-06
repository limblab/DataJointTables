%{
# selected data files
# originally created for DARPA collaboration w/ Emory
data_file_key : smallint
-----
data_stretch_key : smallint
paper_key : smallint
date_recorded : date
nev_file_name : varchar(400)
nev_file_location : varchar(400)

date_processed : date
file_length : int
emg_recorded : varchar(600)
has_emg : tinyint
has_lfp : tinyint
has_kin : tinyint
has_force : tinyint
has_analog : tinyint
has_units : tinyint
has_triggers : tinyint
has_bumps : tinyint
has_chaotic_load : tinyint
has_sorting : tinyint
task : varchar(250)
monkey : varchar(250)
xds : longblob

emg_data_quality : varchar(600)
neural_data_quality : varchar(600)
behavior_notes : varchar(600)
other_notes : varchar(600)

%}

classdef DataFile < dj.Manual
end