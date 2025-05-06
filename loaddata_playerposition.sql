LOAD DATA LOCAL INFILE '/Users/nicoledannunzio/github-classroom/PaceCIT-241/term-project-esport-fans/FIFA-21 Complete.csv'
INTO TABLE PlayerPosition
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(PositionName, PositionType)
SET PositionID = NULL;

