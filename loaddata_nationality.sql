LOAD DATA LOCAL INFILE '/Users/nicoledannunzio/github-classroom/PaceCIT-241/term-project-esport-fans/FIFA-21 Complete.csv'
INTO TABLE Nationality
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'

(CountryName, FifaCode)
SET NationalityID = NULL;




















