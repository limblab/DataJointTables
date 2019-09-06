%{
# published papers from Miller lab
paper_key : smallint
-----
title : varchar(300)
first_author : varchar(30)
year_published : smallint
journal : varchar(50)
key_words: varchar(450)

%}

classdef Paper < dj.Manual
end